import 'package:pulumi/pulumi.dart';

class MyComponent extends ComponentResource {
  MyComponent(String name)
      : super('test:index:MyComponent', name, const {}, null);
}

class LogDebugStack extends Stack {
  LogDebugStack() {
    Deployment.instance.logger.debug('A debug message');
    MyComponent('mycomponent');
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => LogDebugStack());
}
