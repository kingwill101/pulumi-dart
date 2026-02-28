import 'package:pulumi/dynamic.dart' as dyn;
import 'package:pulumi/pulumi.dart' as pulumi;

class SecretResource extends dyn.Resource {
  late final pulumi.Output<String?> authenticated;

  SecretResource(String name, pulumi.Input<String> providerPayload)
      : super(
          dyn.SerializedProviderReference(providerPayload),
          name,
          pulumi.Input.mapToInputs(<String, dynamic>{'authenticated': '200'}),
          type: 'SimpleResource',
        ) {
    authenticated = registerOutput<String?>('authenticated');
  }
}

class DynamicSecretsStack extends pulumi.Stack {
  late final pulumi.Output<Object?> out;

  DynamicSecretsStack() {
    final config = pulumi.Config();
    final password = config.require('password');
    final providerPayload = pulumi.Input.fromOutput(
      pulumi.secret(password).apply<String>((value) => value as String),
    );

    final resource = SecretResource('foo', providerPayload);
    out = resource.authenticated.apply<Object?>((value) => value);
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return <pulumi.OutputProperty>[pulumi.OutputProperty('out', out)];
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => DynamicSecretsStack());
}
