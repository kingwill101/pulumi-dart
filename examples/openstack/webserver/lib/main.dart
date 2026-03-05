import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_openstack/compute.dart' as openstackcompute;
import 'package:pulumi_openstack/images.dart' as openstackimages;
import 'package:pulumi_openstack/networking.dart' as openstacknetworking;

class OpenStackWebserverStack extends pulumi.Stack {
  OpenStackWebserverStack() : super() {
    final config = pulumi.Config();

    final keypairPublicKey = config.get('publicKey');
    if (keypairPublicKey == null || keypairPublicKey.isEmpty) {
      throw Exception(
        'Missing required config: publicKey (OpenSSH public key for compute:Keypair)',
      );
    }

    final imageName = config.get('imageName') ?? 'fedora';
    final imageSourceUrl =
        config.get('imageSourceUrl') ??
        'https://ftp.plusline.net/fedora/linux/releases/34/Cloud/x86_64/images/Fedora-Cloud-Base-34-1.2.x86_64.qcow2';
    final keypairName = config.get('keypairName') ?? 'default';
    final networkName = config.get('networkName') ?? 'public';
    final secGroupName = config.get('secGroupName') ?? 'default';
    final instanceName = config.get('instanceName') ?? 'test_fedora';
    final flavorName = config.get('flavorName') ?? 'm1.small';

    final fedoraImage = openstackimages.Image(
      'fedora',
      args: openstackimages.ImageArgs(
        name: imageName.output(),
        containerFormat: 'bare'.output(),
        diskFormat: 'qcow2'.output(),
        imageSourceUrl: imageSourceUrl.output(),
        visibility: 'public'.output(),
      ),
    );

    final defaultKeypair = openstackcompute.Keypair(
      'default',
      args: openstackcompute.KeypairArgs(
        name: keypairName.output(),
        publicKey: keypairPublicKey.output(),
      ),
    );

    final secgroupDefault = pulumi.Output.create('')
        .apply<openstacknetworking.GetSecGroupResult>(
          (_) => openstacknetworking.getSecGroup(
            openstacknetworking.GetSecGroupArgs(name: secGroupName.output()),
          ),
        );

    openstacknetworking.SecGroupRule(
      'secgroupRule1',
      args: openstacknetworking.SecGroupRuleArgs(
        direction: 'ingress'.output(),
        ethertype: 'IPv4'.output(),
        portRangeMax: 22.output(),
        portRangeMin: 22.output(),
        protocol: 'tcp'.output(),
        remoteIpPrefix: '0.0.0.0/0'.output(),
        description: 'Allow ssh'.output(),
        securityGroupId: secgroupDefault.apply((value) => value.id),
      ),
    );

    openstacknetworking.SecGroupRule(
      'secgroupRule2',
      args: openstacknetworking.SecGroupRuleArgs(
        direction: 'ingress'.output(),
        ethertype: 'IPv4'.output(),
        portRangeMax: 8000.output(),
        portRangeMin: 8000.output(),
        protocol: 'tcp'.output(),
        remoteIpPrefix: '0.0.0.0/0'.output(),
        description: 'Allow python http server'.output(),
        securityGroupId: secgroupDefault.apply((value) => value.id),
      ),
    );

    openstacknetworking.SecGroupRule(
      'secgroupRule3',
      args: openstacknetworking.SecGroupRuleArgs(
        direction: 'ingress'.output(),
        ethertype: 'IPv4'.output(),
        protocol: 'icmp'.output(),
        remoteIpPrefix: '0.0.0.0/0'.output(),
        description: 'Allow ping'.output(),
        securityGroupId: secgroupDefault.apply((value) => value.id),
      ),
    );

    final networkPublic = pulumi.Output.create('')
        .apply<openstacknetworking.GetNetworkResult>(
          (_) => openstacknetworking.getNetwork(
            openstacknetworking.GetNetworkArgs(name: networkName.output()),
          ),
        );

    const userData = '''
#!/bin/bash
echo "Hello, World!" > index.html
nohup python3 -m http.server &
''';

    final fedora = openstackcompute.Instance(
      'test_fedora',
      args: openstackcompute.InstanceArgs(
        name: instanceName.output(),
        flavorName: flavorName.output(),
        imageId: fedoraImage.id,
        keyPair: defaultKeypair.name,
        securityGroups: [secGroupName].output(),
        networks: [
          openstackcompute.InstanceNetwork(
            uuid: networkPublic.apply((value) => value.id),
          ),
        ].output(),
        userData: userData.output(),
      ),
    );

    registerOutputs({'instance_ip': fedora.accessIpV4});
  }
}
