import 'package:pulumi/pulumi.dart';

class Resource1 extends ComponentResource {
  Resource1(String name, [ComponentResourceOptions? options])
      : super('my:module:Resource', name, null, options);
}

Future<void> main() async {
  final code = await DeploymentImpl.run(() {
    Resource1(
      'res5',
      ComponentResourceOptions(
        customTimeouts: CustomTimeouts(create: 'asdf'),
      ),
    );
  });

  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
