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

class MyComponent extends ComponentResource {
  MyComponent(String name, [ComponentResourceOptions? options])
      : super('my:component:MyComponent', name, null, options) {
    Random(
      '$name-child',
      Input.fromValue(5),
      options: CustomResourceOptions(
        parent: this,
        additionalSecretOutputs: ['length'],
      ),
    );
  }
}

ResourceTransformationResult? stackScenario(ResourceTransformationArgs args) {
  if (args.resource.getResourceType() != randomType) {
    return null;
  }

  final nextArgs = <String, Input<dynamic>>{
    ...args.args,
    'prefix': Input.fromValue('stackDefault'),
  };
  final nextOpts = args.options.merge(
    CustomResourceOptions(additionalSecretOutputs: ['result']),
  );
  return ResourceTransformationResult(nextArgs, nextOpts);
}

class TransformsStack extends Stack {
  TransformsStack()
      : super(StackOptions(resourceTransformations: [stackScenario])) {
    Random(
      'res1',
      Input.fromValue(5),
      options: CustomResourceOptions(
        transformations: [
          (args) {
            final nextOpts = args.options.merge(
              CustomResourceOptions(additionalSecretOutputs: ['result']),
            );
            return ResourceTransformationResult(args.args, nextOpts);
          },
        ],
      ),
    );

    MyComponent(
      'res2',
      ComponentResourceOptions(
        resourceTransformations: [
          (args) {
            if (args.resource.getResourceType() != randomType) {
              return null;
            }
            final nextArgs = <String, Input<dynamic>>{
              ...args.args,
              'prefix': Input.fromValue('newDefault'),
            };
            final nextOpts = args.options.merge(
              CustomResourceOptions(additionalSecretOutputs: ['result']),
            );
            return ResourceTransformationResult(nextArgs, nextOpts);
          },
        ],
      ),
    );

    Random(
      'res3',
      Input.fromOutput(Output.createSecret(Output.create(5))),
    );

    ResourceTransformationResult? scenario4(
      ResourceTransformationArgs args,
      String value,
    ) {
      if (args.resource.getResourceType() != randomType) {
        return null;
      }
      final nextArgs = <String, Input<dynamic>>{
        ...args.args,
        'prefix': Input.fromValue(value),
      };
      return ResourceTransformationResult(nextArgs, args.options);
    }

    MyComponent(
      'res4',
      ComponentResourceOptions(
        resourceTransformations: [
          (args) => scenario4(args, 'default1'),
          (args) => scenario4(args, 'default2'),
        ],
      ),
    );

    Random(
      'res5',
      Input.fromValue(10),
      options: CustomResourceOptions(
        transformations: [
          (args) {
            if (args.resource.getResourceType() != randomType) {
              return null;
            }
            return ResourceTransformationResult(
              {
                ...args.args,
                'length': Input.fromValue(20),
              },
              args.options,
            );
          },
        ],
      ),
    );

    Random(
      'res6',
      Input.fromValue(10),
      options: CustomResourceOptions(
        transformations: [
          (args) {
            if (args.resource.getResourceType() != randomType) {
              return null;
            }
            return ResourceTransformationResult(
              {
                ...args.args,
                'length': Input.fromOutput(
                  Output.createSecret(Output.create(20)),
                ),
              },
              args.options,
            );
          },
        ],
      ),
    );

    Random(
      'res7',
      Input.fromOutput(Output.createSecret(Output.create(21))),
      options: CustomResourceOptions(
        transformations: [
          (args) {
            if (args.resource.getResourceType() != randomType) {
              return null;
            }
            return ResourceTransformationResult(
              {
                ...args.args,
                'length': Input.fromValue(42),
              },
              args.options,
            );
          },
        ],
      ),
    );
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => TransformsStack());
}
