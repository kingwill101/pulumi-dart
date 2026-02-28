import 'package:pulumi/dynamic.dart' as dyn;
import 'package:pulumi/pulumi.dart' as pulumi;

class Repro extends dyn.Resource {
  Repro(String name, String example)
      : super(
          dyn.SerializedProviderReference.fromValue('dynamic-provider'),
          name,
          pulumi.Input.mapToInputs(<String, dynamic>{
            'example': pulumi.output(example).apply<String>(
                  (value) => 'name $value',
                ),
          }),
          module: 'custom-provider',
          type: 'CustomResource',
        );
}

class DynamicReservedIdentifierShadowingStack extends pulumi.Stack {
  DynamicReservedIdentifierShadowingStack() {
    final resource = Repro('test', 'words');
    registerOutputs(<String, dynamic>{'urn': resource.urn});
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(
    () => DynamicReservedIdentifierShadowingStack(),
  );
}
