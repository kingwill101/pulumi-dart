import 'package:pulumi/pulumi.dart';

class Resource extends CustomResource {
  late final Output<String?> foo;
  late final Output<Map<String, dynamic>?> bar;
  late final Output<List<dynamic>?> baz;

  Resource(
    String name, {
    required Input<String> foo,
    required Input<Map<String, dynamic>> bar,
    required Input<List<dynamic>> baz,
    CustomResourceOptions? opts,
  }) : super(
         'testprovider:index:Resource',
         name,
         {'foo': foo, 'bar': bar, 'baz': baz},
         opts ?? CustomResourceOptions(),
       ) {
    this.foo = registerOutput<String?>('foo');
    this.bar = registerOutput<Map<String, dynamic>?>('bar');
    this.baz = registerOutput<List<dynamic>?>('baz');
  }
}

Input<String> unknownIfDryRun(String value) {
  final deployment = DeploymentImpl.instance as DeploymentImpl;
  if (deployment.isDryRun) {
    return Input.fromOutput(Output.createUnknown<String>());
  }
  return Input.fromValue(value);
}

class PartialValuesStack extends Stack {
  PartialValuesStack() {
    final deployment = DeploymentImpl.instance as DeploymentImpl;

    final unknown = unknownIfDryRun('foo');
    final resource = Resource(
      'res',
      foo: Input.fromValue('foo'),
      bar: Input.fromValue({
        'value': Input.fromValue('foo'),
        'unknown': unknown,
      }),
      baz: Input.fromValue([Input.fromValue('foo'), unknown]),
    );

    deployment.registerResourceOperation(_validate(resource, deployment));
    registerOutputs({'o': Output.create('checked')});
  }

  Future<void> _validate(Resource resource, DeploymentImpl deployment) async {
    final fooData = await resource.foo.getData();
    final barData = await resource.bar.getData();
    final bazData = await resource.baz.getData();

    final expectedPartialKnown = !deployment.isDryRun;

    if (!fooData.isKnown) {
      throw StateError('expected foo to be known');
    }
    if (barData.isKnown != expectedPartialKnown) {
      throw StateError(
        'expected bar known=${expectedPartialKnown}, got ${barData.isKnown}',
      );
    }
    if (bazData.isKnown != expectedPartialKnown) {
      throw StateError(
        'expected baz known=${expectedPartialKnown}, got ${bazData.isKnown}',
      );
    }
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => PartialValuesStack());
}
