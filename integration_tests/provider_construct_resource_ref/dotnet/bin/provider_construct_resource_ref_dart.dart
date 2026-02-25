import 'package:pulumi/pulumi.dart';

class Echo extends CustomResource {
  Echo(String name, Input<String> value, [CustomResourceOptions? opts])
      : super(
          'testprovider:index:Echo',
          name,
          {'echo': value},
          opts ?? CustomResourceOptions(),
        );
}

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
    final resource = Echo('resource', Input.fromValue('Dummy'));
    TestComponent(
      'baseComponent',
      Input.fromValue(10),
      ComponentResourceOptions(dependsOn: [resource]),
    );
  });
}
