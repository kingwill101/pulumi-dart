import 'package:pulumi/pulumi.dart';

const randomType = 'testprovider:index:Random';
const returnArgsToken = 'testprovider:index:returnArgs';

class Random extends CustomResource {
  Random(
    String name,
    Input<int> length, {
    Input<String>? prefix,
    CustomResourceOptions? options,
  }) : super(
          randomType,
          name,
          {
            'length': length,
            if (prefix != null) 'prefix': prefix,
          },
          options ?? CustomResourceOptions(),
        );
}

class InvokeTransformsStack extends Stack {
  InvokeTransformsStack() : super() {
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    deployment.registerResourceOperation(() async {
      await registerInvokeTransform((args) async {
        if (args.token != returnArgsToken) {
          return null;
        }

        return InvokeTransformResult(
          args: {
            ...args.args,
            'length': Input.fromValue(11),
          },
          opts: args.opts,
        );
      });

      final result = await deployment.invoke<Map<String, dynamic>>(
        returnArgsToken,
        {
          'length': 10,
          'prefix': 'test',
        },
      );

      final length = result['length'];
      if (length != 11) {
        throw Exception('expected length to be 11, got $length');
      }

      final prefix = result['prefix'];
      if (prefix != 'test') {
        throw Exception('expected prefix to be test, got $prefix');
      }
    }());

    Random('res1', Input.fromValue(5));
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => InvokeTransformsStack());
}
