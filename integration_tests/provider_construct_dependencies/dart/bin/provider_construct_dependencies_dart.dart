import 'package:pulumi/pulumi.dart';

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
    final base = TestComponent('baseComponent', Input.fromValue(10));
    TestComponent(
      'dependentComponent',
      Input.fromOutput(base.urn.apply((_) => 10)),
      ComponentResourceOptions(dependsOn: [base]),
    );
  });
}
