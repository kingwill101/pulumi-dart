import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure/compute.dart' as azure_compute;
import 'package:pulumi_azure/network.dart' as azure_network;
import 'package:pulumi_azure/pulumi_azure.dart' as azure;

class WebServerArgs {
  final pulumi.Input<String> username;
  final pulumi.Input<String> password;
  final pulumi.Input<String>? bootScript;
  final pulumi.Input<String>? vmSize;
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String> subnetId;

  WebServerArgs({
    required this.username,
    required this.password,
    this.bootScript,
    this.vmSize,
    required this.resourceGroupName,
    required this.subnetId,
  });
}

class WebServer extends pulumi.ComponentResource {
  late final azure_network.PublicIp publicIp;
  late final azure_network.NetworkInterface networkInterface;
  late final azure_compute.VirtualMachine vm;
  late final pulumi.Output<String> ipAddress;

  WebServer(String name, {required WebServerArgs args})
    : super(
        'examples:azure:WebServer',
        name,
        const {},
        pulumi.ComponentResourceOptions(),
      ) {
    final childOptions = pulumi.CustomResourceOptions(parent: this);

    publicIp = azure.network.PublicIp(
      '$name-ip',
      args: azure.network.PublicIpArgs(
        resourceGroupName: args.resourceGroupName,
        allocationMethod: 'Dynamic'.output(),
      ),
      options: childOptions,
    );

    networkInterface = azure.network.NetworkInterface(
      '$name-nic',
      args: azure.network.NetworkInterfaceArgs(
        resourceGroupName: args.resourceGroupName,
        ipConfigurations: [
          azure.network.NetworkInterfaceIpConfiguration(
            name: 'webserveripcfg'.output(),
            subnetId: args.subnetId,
            privateIpAddressAllocation: 'Dynamic'.output(),
            publicIpAddressId: publicIp.id,
          ),
        ].output(),
      ),
      options: childOptions,
    );

    vm = azure.compute.VirtualMachine(
      '$name-vm',
      args: azure.compute.VirtualMachineArgs(
        resourceGroupName: args.resourceGroupName,
        networkInterfaceIds: pulumi.Output.all([
          networkInterface.id.apply((id) => id),
        ]),
        vmSize: args.vmSize ?? 'Standard_A1_v2'.output(),
        deleteDataDisksOnTermination: true.output(),
        deleteOsDiskOnTermination: true.output(),
        osProfile: azure.compute
            .VirtualMachineOsProfile(
              computerName: name.output(),
              adminUsername: args.username,
              adminPassword: args.password,
              customData: args.bootScript,
            )
            .output(),
        osProfileLinuxConfig: azure.compute
            .VirtualMachineOsProfileLinuxConfig(
              disablePasswordAuthentication: false.output(),
            )
            .output(),
        storageOsDisk: azure.compute
            .VirtualMachineStorageOsDisk(
              createOption: 'FromImage'.output(),
              name: '$name-osdisk1'.output(),
            )
            .output(),
        storageImageReference: azure.compute
            .VirtualMachineStorageImageReference(
              publisher: 'canonical'.output(),
              offer: 'UbuntuServer'.output(),
              sku: '16.04-LTS'.output(),
              version: 'latest'.output(),
            )
            .output(),
      ),
      options: childOptions,
    );

    ipAddress = publicIp.ipAddress;

    registerOutputs({'ipAddress': ipAddress});
  }
}
