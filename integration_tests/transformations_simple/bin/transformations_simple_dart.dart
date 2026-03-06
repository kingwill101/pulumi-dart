import 'package:pulumi/pulumi.dart';

const randomStringType = 'random:index/randomString:RandomString';

Input<String> appendString(Input<String>? original, String suffix) {
  if (original == null) {
    return Input.fromValue(suffix);
  }
  return Input.fromOutput(
      original.toOutput().apply((value) => '$value$suffix'));
}

class RandomString extends CustomResource {
  RandomString(
    String name, {
    required Input<int> length,
    Input<int>? minUpper,
    Input<String>? overrideSpecial,
    CustomResourceOptions? options,
  }) : super(
          randomStringType,
          name,
          {
            'length': length,
            if (minUpper != null) 'minUpper': minUpper,
            if (overrideSpecial != null) 'overrideSpecial': overrideSpecial,
          },
          options ?? CustomResourceOptions(),
        );
}

class MyComponent extends ComponentResource {
  MyComponent(String name, [ComponentResourceOptions? options])
      : super('my:component:MyComponent', name, null, options) {
    RandomString(
      '$name-child',
      length: Input.fromValue(5),
      options: CustomResourceOptions(
        parent: this,
        additionalSecretOutputs: ['special'],
      ),
    );
  }
}

class MyOtherComponent extends ComponentResource {
  MyOtherComponent(String name, [ComponentResourceOptions? options])
      : super('my:component:MyComponent', name, null, options) {
    RandomString(
      '$name-child1',
      length: Input.fromValue(5),
      options: CustomResourceOptions(parent: this),
    );

    RandomString(
      '$name-child2',
      length: Input.fromValue(6),
      options: CustomResourceOptions(parent: this),
    );
  }
}

ResourceTransformationResult? stackScenario(
  ResourceTransformationArgs args,
) {
  if (args.resource.getResourceType() != randomStringType) {
    return null;
  }

  final nextArgs = <String, Input<dynamic>>{
    ...args.args,
    'overrideSpecial': appendString(
      args.args['overrideSpecial'] as Input<String>?,
      'stackvalue',
    ),
  };
  return ResourceTransformationResult(nextArgs, args.options);
}

class TransformationsStack extends Stack {
  TransformationsStack()
      : super(StackOptions(resourceTransformations: [stackScenario])) {
    RandomString(
      'res1',
      length: Input.fromValue(5),
      options: CustomResourceOptions(
        transformations: [
          (args) {
            final opts = args.options.merge(
              CustomResourceOptions(additionalSecretOutputs: ['length']),
            );
            return ResourceTransformationResult(args.args, opts);
          },
        ],
      ),
    );

    MyComponent(
      'res2',
      ComponentResourceOptions(
        resourceTransformations: [
          (args) {
            if (args.resource.getResourceType() != randomStringType) {
              return null;
            }
            final nextArgs = <String, Input<dynamic>>{
              'length': args.args['length']!,
              'minUpper': Input.fromValue(2),
            };
            final nextOpts = args.options.merge(
              CustomResourceOptions(additionalSecretOutputs: ['length']),
            );
            return ResourceTransformationResult(nextArgs, nextOpts);
          },
        ],
      ),
    );

    RandomString('res3', length: Input.fromValue(5));

    ResourceTransformationResult? scenario4(
      ResourceTransformationArgs args,
      String value,
    ) {
      if (args.resource.getResourceType() != randomStringType) {
        return null;
      }
      final nextArgs = <String, Input<dynamic>>{
        ...args.args,
        'overrideSpecial': appendString(
          args.args['overrideSpecial'] as Input<String>?,
          value,
        ),
      };
      return ResourceTransformationResult(nextArgs, args.options);
    }

    MyComponent(
      'res4',
      ComponentResourceOptions(
        resourceTransformations: [
          (args) => scenario4(args, 'value1'),
          (args) => scenario4(args, 'value2'),
        ],
      ),
    );

    MyOtherComponent(
      'res5',
      ComponentResourceOptions(
        resourceTransformations: [
          (args) {
            if (args.resource.getResourceType() != randomStringType) {
              return null;
            }

            final name = args.resource.getResourceName();
            if (!name.endsWith('-child1')) {
              return null;
            }

            return ResourceTransformationResult(
              {
                ...args.args,
                'length': Input.fromValue(6),
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
  await DeploymentImpl.run(() => TransformationsStack());
}
