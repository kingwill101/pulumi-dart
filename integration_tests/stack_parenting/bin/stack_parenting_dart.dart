import 'package:pulumi/pulumi.dart';

class Component extends ComponentResource {
  Component(String name, [ComponentResourceOptions? options])
    : super('component', name, null, options);
}

class RandomResource extends CustomResource {
  RandomResource(String name, [CustomResourceOptions? options])
    : super(
        'testprovider:index:Random',
        name,
        {'length': Input.fromValue(10)},
        options ?? CustomResourceOptions(),
      );
}

class MyStack extends Stack {
  MyStack() {
    final a = Component('a');
    RandomResource('b', CustomResourceOptions(parent: a));

    final c = Component('c', ComponentResourceOptions(parent: a));
    RandomResource('d', CustomResourceOptions(parent: c));
    RandomResource('e', CustomResourceOptions(parent: c));

    final f = Component('f');
    RandomResource('g', CustomResourceOptions(parent: f));
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
