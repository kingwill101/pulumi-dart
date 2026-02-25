import 'package:pulumi/pulumi.dart';

class Component extends ComponentResource {
  Component(String name, [ComponentResourceOptions? options])
      : super('test:index:Component', name, null, options);
}

ResourceTransformationResult? _failingTransform(
    ResourceTransformationArgs args) {
  throw Exception('Boom!');
}

class MyStack extends Stack {
  MyStack()
      : super(StackOptions(resourceTransformations: [_failingTransform])) {
    Component('test');
  }
}

Future<void> main() async {
  final code = await DeploymentImpl.run(() => MyStack());
  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
