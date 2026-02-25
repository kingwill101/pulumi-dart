import 'package:pulumi/pulumi.dart';

class MyComponent extends ComponentResource {
  MyComponent(String name, [ComponentResourceOptions? options])
      : super(
          'nodejs-component-provider:index:MyComponent',
          name,
          {},
          options,
          remote: true,
        );
}

class MyStack extends Stack {
  MyStack() {
    MyComponent('comp');
  }
}

Future<void> main() async {
  final code = await DeploymentImpl.run(() => MyStack());

  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
