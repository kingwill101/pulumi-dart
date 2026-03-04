import 'package:pulumi/pulumi.dart';

class Random extends CustomResource {
  Random(String name, Input<int> length, [CustomResourceOptions? opts])
    : super('testprovider:index:Random', name, {
        'length': length,
      }, opts ?? CustomResourceOptions());
}

class TestComponent extends ComponentResource {
  TestComponent(
    String name,
    Input<int> length, [
    ComponentResourceOptions? opts,
  ]) : super(
         'testprovider:index:Component',
         name,
         {'length': length},
         opts,
         remote: true,
       );
}

void main() {
  DeploymentImpl.run(() {
    final random = Random('resource', Input.fromValue(10));
    final unknownLength = Input.fromOutput(random.urn.apply<int>((_) => 10));

    TestComponent('baseComponent', unknownLength);
  });
}
