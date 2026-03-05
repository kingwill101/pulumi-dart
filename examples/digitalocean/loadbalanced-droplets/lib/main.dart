import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_digitalocean/index.dart' as digitalocean;

class LoadBalancedDropletsStack extends pulumi.Stack {
  LoadBalancedDropletsStack() : super() {
    const dropletCount = 2;
    const region = 'nyc3';

    final dropletTypeTag = digitalocean.Tag(
      'demo-app',
      args: digitalocean.TagArgs(
        name: 'demo-app-${pulumi.Deployment.instance.stackName}'.output(),
      ),
    );

    const userData = '''
#!/bin/bash
sudo apt-get update
sudo apt-get install -y nginx
''';

    for (var i = 0; i < dropletCount; i++) {
      final dropletName = 'web-$i';

      final nameTag = digitalocean.Tag(
        dropletName,
        args: digitalocean.TagArgs(name: dropletName.output()),
      );

      digitalocean.Droplet(
        dropletName,
        args: digitalocean.DropletArgs(
          image: 'ubuntu-20-04-x64'.output(),
          name: dropletName.output(),
          region: region.output(),
          privateNetworking: true.output(),
          size: 's-1vcpu-1gb'.output(),
          tags: pulumi.Output.all([
            nameTag.id.apply((v) => v),
            dropletTypeTag.id.apply((v) => v),
          ]),
          userData: userData.output(),
        ),
      );
    }

    final lb = digitalocean.LoadBalancer(
      'public',
      args: digitalocean.LoadBalancerArgs(
        dropletTag: dropletTypeTag.name,
        forwardingRules: [
          digitalocean.LoadBalancerForwardingRule(
            entryPort: 80.output(),
            entryProtocol: 'http'.output(),
            targetPort: 80.output(),
            targetProtocol: 'http'.output(),
          ),
        ].output(),
        healthcheck: digitalocean.LoadBalancerHealthcheck(
          port: 80.output(),
          protocol: 'tcp'.output(),
        ).output(),
        region: region.output(),
      ),
    );

    registerOutputs({'endpoint': lb.ip});
  }
}
