import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_entry_args.dart';

/// Creates key value entries in a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.
class EnvironmentEntry extends pulumi.CustomResource {
  late final pulumi.Output<String> environmentId;
  late final pulumi.Output<String> keyvaluemapId;

  /// Resource URI that can be used to identify the scope of the key value map entries.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Data or payload that is being retrieved and associated with the unique key.
  late final pulumi.Output<String> value;

  /// Creates a new [EnvironmentEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentEntry]. {@macro pulumi_apigee_v1_environment_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentEntry(
    String name, {
    EnvironmentEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigee/v1:EnvironmentEntry',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.environmentId = registerOutput<String>('environmentId');
    this.keyvaluemapId = registerOutput<String>('keyvaluemapId');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.value = registerOutput<String>('value');
  }
}
