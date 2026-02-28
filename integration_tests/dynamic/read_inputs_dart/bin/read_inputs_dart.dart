import 'package:pulumi/dynamic.dart' as dyn;
import 'package:pulumi/pulumi.dart' as pulumi;

class SimpleResource extends dyn.Resource {
  SimpleResource(String name, String value)
      : super(
          dyn.SerializedProviderReference.fromValue('dynamic-provider'),
          name,
          pulumi.Input.mapToInputs(<String, dynamic>{'value': value}),
        );
}

class DynamicReadInputsStack extends pulumi.Stack {
  DynamicReadInputsStack() {
    final resource = SimpleResource('test', 'hello');
    registerOutputs(<String, dynamic>{'resource_id': resource.id});
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => DynamicReadInputsStack());
}
