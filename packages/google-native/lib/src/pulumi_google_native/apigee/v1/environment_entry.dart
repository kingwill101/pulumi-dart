import 'package:pulumi/pulumi.dart' hide Config;
import 'environment_entry_args.dart';

/// Creates key value entries in a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.
class EnvironmentEntry extends CustomResource {
  late final Output<String> environmentId;
  late final Output<String> keyvaluemapId;

  /// Resource URI that can be used to identify the scope of the key value map entries.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Data or payload that is being retrieved and associated with the unique key.
  late final Output<String> value;

  EnvironmentEntry(
    String name, {
    EnvironmentEntryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:EnvironmentEntry',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.environmentId = registerOutput<String>('environmentId');
    this.keyvaluemapId = registerOutput<String>('keyvaluemapId');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.value = registerOutput<String>('value');
  }
}
