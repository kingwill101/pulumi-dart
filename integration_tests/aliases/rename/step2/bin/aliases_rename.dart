import 'package:pulumi/pulumi.dart';

class Resource extends ComponentResource {
  Resource(String name, [ComponentResourceOptions? options])
      : super('my:module:Resource', name, null, options);
}

void main() {
  DeploymentImpl.run(() {
    Resource(
      'newres1',
      ComponentResourceOptions(
        aliases: [
          Alias(name: Input.fromValue('res1')),
        ],
      ),
    );
  });
}

