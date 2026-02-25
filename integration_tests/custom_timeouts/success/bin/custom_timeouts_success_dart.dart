import 'package:pulumi/pulumi.dart';

class Resource1 extends ComponentResource {
  Resource1(String name, [ComponentResourceOptions? options])
      : super('my:module:Resource', name, null, options);
}

Future<void> main() async {
  final code = await DeploymentImpl.run(() {
    Resource1(
      'res1',
      ComponentResourceOptions(
        customTimeouts: CustomTimeouts(create: '30m'),
      ),
    );

    Resource1(
      'res2',
      ComponentResourceOptions(
        customTimeouts: CustomTimeouts(create: '15m', delete: '15m'),
      ),
    );

    Resource1(
      'res3',
      ComponentResourceOptions(
        customTimeouts: CustomTimeouts(update: '30m'),
      ),
    );

    Resource1(
      'res4',
      ComponentResourceOptions(
        customTimeouts: CustomTimeouts(delete: '30m'),
      ),
    );
  });

  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
