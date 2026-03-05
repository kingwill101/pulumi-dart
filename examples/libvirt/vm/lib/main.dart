import 'dart:convert';
import 'dart:io';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/compute.dart' as compute;
import 'package:pulumi_azure_native/network.dart' as network;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_libvirt/index.dart' as libvirt;
import 'package:pulumi_libvirt/providers.dart' as libvirtproviders;
import 'package:pulumi_tls/index.dart' as tls;

class LibvirtHost extends pulumi.ComponentResource {
  late final pulumi.Output<String> libvirtRemoteUri;
  late final pulumi.Output<String> vmPoolDir;
  late final pulumi.Output<String> ip;
  late final pulumi.Output<String> username;
  late final pulumi.Output<String> sshPrivKeyFile;

  LibvirtHost(String name, {pulumi.ComponentResourceOptions? options})
    : super('custom:resource:LibvirtHost', name, {}, options) {
    final basename = '$name-kvm';
    const vmUsername = 'kvmuser';
    const vmComputerName = 'kvmhost';

    final resourceGroup = resources.ResourceGroup(
      '$basename-rg',
      options: pulumi.CustomResourceOptions(parent: this),
    );

    final virtualNetwork = network.VirtualNetworkNetwork(
      '$basename-net',
      args: network.VirtualNetworkArgs(
        resourceGroupName: resourceGroup.name,
        addressSpace: network.AddressSpace(
          addressPrefixes: ['10.0.0.0/16'].output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(parent: this),
    );

    final subnet = network.SubnetNetwork(
      '$basename-subnet',
      args: network.SubnetArgs(
        resourceGroupName: resourceGroup.name,
        virtualNetworkName: virtualNetwork.name,
        subnetName: 'default'.output(),
        addressPrefix: '10.0.1.0/24'.output(),
      ),
      options: pulumi.CustomResourceOptions(parent: this),
    );

    final publicIp = network.PublicIPAddressNetwork(
      '$basename-ip',
      args: network.PublicIPAddressArgs(
        resourceGroupName: resourceGroup.name,
        publicIpAddressName: '$basename-ip'.output(),
        publicIPAllocationMethod: 'Dynamic'.output(),
      ),
      options: pulumi.CustomResourceOptions(parent: this),
    );

    final networkInterface = network.NetworkInterface(
      '$basename-nic',
      args: network.NetworkInterfaceArgs(
        resourceGroupName: resourceGroup.name,
        ipConfigurations: [
          network.NetworkInterfaceIPConfiguration(
            name: 'serveripcfg'.output(),
            subnet: network.Subnet(id: subnet.id).output(),
            privateIPAllocationMethod: 'Dynamic'.output(),
            publicIPAddress: network.PublicIPAddress(id: publicIp.id).output(),
          ),
        ].output(),
      ),
      options: pulumi.CustomResourceOptions(parent: this),
    );

    final sshKey = tls.PrivateKey(
      '$basename-sshkey',
      args: tls.PrivateKeyArgs(algorithm: 'RSA'.input(), rsaBits: 4096.input()),
      options: pulumi.CustomResourceOptions(parent: this),
    );

    const initScript = '''#!/bin/bash
sudo apt update
sudo apt-get -y install qemu-kvm libvirt-bin
sudo sed -i '\$ a security_driver = "none"' /etc/libvirt/qemu.conf
sudo systemctl restart libvirt-bin
''';

    final vm = compute.VirtualMachine(
      '$basename-vm',
      args: compute.VirtualMachineArgs(
        resourceGroupName: resourceGroup.name,
        networkProfile: compute.NetworkProfile(
          networkInterfaces: [
            compute.NetworkInterfaceReference(id: networkInterface.id),
          ].output(),
        ).output(),
        hardwareProfile: compute.HardwareProfile(
          vmSize: 'Standard_D4s_v3'.input(),
        ).output(),
        osProfile: compute.OSProfile(
          computerName: vmComputerName.input(),
          adminUsername: vmUsername.input(),
          customData: base64Encode(utf8.encode(initScript)).output(),
          linuxConfiguration: compute.LinuxConfiguration(
            disablePasswordAuthentication: true.input(),
            ssh: compute.SshConfiguration(
              publicKeys: [
                compute.SshPublicKey(
                  keyData: sshKey.publicKeyOpenssh,
                  path: '/home/$vmUsername/.ssh/authorized_keys'.input(),
                ),
              ].output(),
            ).output(),
          ).output(),
        ).output(),
        storageProfile: compute.StorageProfile(
          osDisk: compute.OSDisk(createOption: 'FromImage'.output()).output(),
          imageReference: compute.ImageReference(
            publisher: 'canonical'.output(),
            offer: 'UbuntuServer'.output(),
            sku: '18.04-LTS'.output(),
            version: 'latest'.output(),
          ).output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(parent: this),
    );

    final publicIpAddr = vm.id.apply<network.GetPublicIPAddressResult>(
      (_) => network.getPublicIPAddress(
        network.GetPublicIPAddressArgs(
          publicIpAddressName: publicIp.name,
          resourceGroupName: resourceGroup.name,
        ),
      ),
    );

    final keyFile = '${basename}_server.priv';
    sshKey.privateKeyPem.apply((privateKeyPem) {
      final file = File(keyFile);
      file.writeAsStringSync(privateKeyPem);
      try {
        Process.runSync('chmod', ['400', keyFile]);
      } catch (_) {}
      return privateKeyPem;
    });

    ip = publicIpAddr.apply((address) => address.ipAddress ?? '');
    username = vmUsername.output();
    sshPrivKeyFile = keyFile.output();
    vmPoolDir = '/home/$vmUsername/vms'.output();
    libvirtRemoteUri = ip.apply(
      (hostIp) =>
          'qemu+ssh://$vmUsername@$hostIp/system?keyfile=./$keyFile&socket=/var/run/libvirt/libvirt-sock&no_verify=1',
    );

    registerOutputs({
      'libvirtRemoteUri': libvirtRemoteUri,
      'vmPoolDir': vmPoolDir,
      'ip': ip,
      'username': username,
      'sshPrivKeyFile': sshPrivKeyFile,
    });
  }
}

class LibvirtVmStack extends pulumi.Stack {
  LibvirtVmStack() : super() {
    final config = pulumi.Config();
    final stackName = pulumi.Deployment.instance.stackName;
    final basename = '${config.get('basename') ?? 'libvirt-ex'}-$stackName';

    final libvirtServer = LibvirtHost(basename);

    final libvirtProvider = libvirtproviders.ProviderProvider(
      '$basename-libvirt',
      args: libvirtproviders.ProviderArgs(uri: libvirtServer.libvirtRemoteUri),
    );

    final vmPool = libvirt.Pool(
      '$basename-vm-pool',
      args: libvirt.PoolArgs(
        type: 'dir'.input(),
        target: libvirt.PoolTarget(path: libvirtServer.vmPoolDir).input(),
      ),
      options: pulumi.CustomResourceOptions(provider: libvirtProvider),
    );

    final vmVolume = libvirt.Volume(
      '$basename-linux',
      args: libvirt.VolumeArgs(
        pool: vmPool.name,
        create: libvirt.VolumeCreate(
          content: libvirt.VolumeCreateContent(
            url:
                'http://download.cirros-cloud.net/0.5.2/cirros-0.5.2-x86_64-disk.img'
                    .input(),
          ).input(),
        ).input(),
      ),
      options: pulumi.CustomResourceOptions(provider: libvirtProvider),
    );

    final vm = libvirt.Domain(
      '$basename-vm',
      args: libvirt.DomainArgs(
        memory: 512.0.input(),
        vcpu: 1.0.input(),
        type: 'kvm'.input(),
        devices: libvirt.DomainDevices(
          disks: [
            libvirt.DomainDevicesDisk(
              source: libvirt.DomainDevicesDiskSource(
                volume: libvirt.DomainDevicesDiskSourceVolume(
                  pool: vmPool.name,
                  volume: vmVolume.name,
                ).input(),
              ).input(),
              target: libvirt.DomainDevicesDiskTarget(
                dev: 'vda'.input(),
                bus: 'virtio'.input(),
              ).input(),
            ),
          ].input(),
          interfaces: [
            libvirt.DomainDevicesInterface(
              source: libvirt.DomainDevicesInterfaceSource(
                network: libvirt.DomainDevicesInterfaceSourceNetwork(
                  network: 'default'.input(),
                ).input(),
              ).input(),
              waitForIp: libvirt.DomainDevicesInterfaceWaitForIp(
                source: 'lease'.input(),
              ).input(),
            ),
          ].input(),
        ).input(),
      ),
      options: pulumi.CustomResourceOptions(provider: libvirtProvider),
    );

    final testCmd =
        pulumi.Output.tuple3(
          libvirtServer.sshPrivKeyFile,
          libvirtServer.username,
          libvirtServer.ip,
        ).apply(
          (values) =>
              'echo virsh list | ssh -i ${values.$1} ${values.$2}@${values.$3}',
        );

    registerOutputs({
      'libvirtPoolName': vmPool.name,
      'libvirtVolumeName': vmVolume.name,
      'libvirtVmName': vm.name,
      'checkLibvirtVmOnHost': testCmd,
    });
  }
}
