import 'package:pulumi/pulumi.dart';

class Random extends CustomResource {
  Random(String name, Input<int> length, [CustomResourceOptions? options])
      : super(
          'testprovider:index:Random',
          name,
          {'length': length},
          options ?? CustomResourceOptions(),
        );
}

class FailsOnDelete extends CustomResource {
  FailsOnDelete(String name, [CustomResourceOptions? options])
      : super(
          'testprovider:index:FailsOnDelete',
          name,
          {},
          options ?? CustomResourceOptions(),
        );
}

class MyStack extends Stack {
  MyStack() {
    final rand = Random('random', Input.fromValue(10));
    FailsOnDelete(
      'failsondelete',
      CustomResourceOptions(deletedWith: rand),
    );
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
