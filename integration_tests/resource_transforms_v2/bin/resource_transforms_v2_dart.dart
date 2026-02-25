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

class ResourceTransformsV2Stack extends Stack {
  ResourceTransformsV2Stack()
      : super(
          StackOptions(
            resourceTransforms: [
              (args, [ct]) async {
                if (args.type != randomType) {
                  return null;
                }
                final nextArgs = <String, Object?>{
                  ...args.args,
                  'prefix': 'stack-v2',
                };
                return ResourceTransformResult(nextArgs, args.options);
              },
            ],
          ),
        ) {
    Random(
      'res1',
      Input.fromValue(10),
      options: CustomResourceOptions(
        resourceTransforms: [
          (args, [ct]) async {
            if (args.type != randomType) {
              return null;
            }
            final nextArgs = <String, Object?>{...args.args, 'length': 20};
            final nextOpts = args.options.merge(
              CustomResourceOptions(additionalSecretOutputs: ['result']),
            );
            return ResourceTransformResult(nextArgs, nextOpts);
          },
        ],
      ),
    );
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => ResourceTransformsV2Stack());
}
