import 'dart:convert';

import 'package:pulumi/dynamic.dart' as dyn;
import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigResource extends dyn.Resource {
  late final pulumi.Output<String?> authenticated;
  late final pulumi.Output<String?> color;

  ConfigResource(String name, pulumi.Input<String> providerPayload)
      : super(
          dyn.SerializedProviderReference(providerPayload),
          name,
          pulumi.Input.mapToInputs(<String, dynamic>{'configureMode': true}),
          module: 'custom-provider',
          type: 'CustomResource',
        ) {
    authenticated = registerOutput<String?>('authenticated');
    color = registerOutput<String?>('color');
  }
}

class DynamicConfigStack extends pulumi.Stack {
  late final pulumi.Output<Object?> authenticated;
  late final pulumi.Output<Object?> color;

  DynamicConfigStack() {
    final config = pulumi.Config();
    final password = config.require('password');
    final banana = config.get('colors:banana') ?? 'blue';

    final providerPayload = pulumi.Input.fromOutput(
      pulumi.secret(<String, dynamic>{
        'password': password,
        'color': banana
      }).apply<String>((value) => jsonEncode(value)),
    );

    final resource = ConfigResource('resource-name', providerPayload);
    authenticated = resource.authenticated.apply<Object?>((value) => value);
    color = resource.color.apply<Object?>((value) => value);
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return <pulumi.OutputProperty>[
      pulumi.OutputProperty('authenticated', authenticated),
      pulumi.OutputProperty('color', color),
    ];
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => DynamicConfigStack());
}
