import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_hcloud/index.dart' as hcloud;

class HcloudServerStack extends pulumi.Stack {
  HcloudServerStack() : super() {
    final config = pulumi.Config();
    final location = config.get('location') ?? 'nbg1';
    final image = config.get('image') ?? 'debian-12';
    final serverType = config.get('serverType') ?? 'cx22';

    final server = hcloud.Server(
      'server',
      args: hcloud.ServerArgs(
        name: 'pulumi-dart-server'.output(),
        location: location.output(),
        image: image.output(),
        serverType: serverType.output(),
      ),
    );

    registerOutputs({
      'name': server.name,
      'ipv4Address': server.ipv4Address,
      'status': server.status,
    });
  }
}
