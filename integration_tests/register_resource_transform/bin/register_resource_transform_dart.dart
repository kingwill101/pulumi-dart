import 'package:pulumi/pulumi.dart';

const randomType = 'testprovider:index:Random';

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

class RegisterResourceTransformStack extends Stack {
  RegisterResourceTransformStack() : super() {
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    deployment.registerResourceOperation(() async {
      await registerResourceTransform((args, [ct]) async {
        if (args.type != randomType) {
          return null;
        }

        return ResourceTransformResult(
          {
            ...args.args,
            'prefix': 'stack-registered',
          },
          args.options.merge(
            CustomResourceOptions(additionalSecretOutputs: ['result']),
          ),
        );
      });

      final res = Random('res1', Input.fromValue(5));
      await res.urn.getValue();
    }());
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => RegisterResourceTransformStack());
}
