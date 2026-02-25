import 'package:pulumi/pulumi.dart';

class TestComponent extends ComponentResource {
  TestComponent(String name, Input<int> length,
      [ComponentResourceOptions? opts])
      : super(
          'testprovider:index:Component',
          name,
          {'length': length},
          opts,
          remote: true,
        );
}

void main() {
  DeploymentImpl.run(() {
    TestComponent('component10', Input.fromValue(10));
    TestComponent('component20', Input.fromValue(20));
  });
}
