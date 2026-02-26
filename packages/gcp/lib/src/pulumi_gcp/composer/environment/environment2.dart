import 'package:pulumi/pulumi.dart';
import '../environment_config/environment_config.dart';
import '../environment_storage_config/environment_storage_config.dart';
import 'environment_args2.dart';

/// ## Import
///
/// Environment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/environments/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Environment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:composer/environment:Environment default projects/{{project}}/locations/{{region}}/environments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:composer/environment:Environment default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:composer/environment:Environment default {{name}}
/// ```
class Environment2 extends CustomResource {
  /// Configuration parameters for this environment.
  late final Output<EnvironmentConfig> config;
  late final Output<Map<String, String>> effectiveLabels;

  /// User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z?. Label values must be between 0 and 63 characters long and must conform to the regular expression (a-z?)?. No more than 64 labels can be associated with a given environment. Both keys and values must be <= 128 bytes in size.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Name of the environment.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The location or Compute Engine region for the environment.
  late final Output<String> region;

  /// Configuration options for storage used by Composer environment.
  late final Output<EnvironmentStorageConfig> storageConfig;

  Environment2(
    String name, {
    EnvironmentArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:composer/environment:Environment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.config = Output.createUnknown<EnvironmentConfig>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.region = Output.createUnknown<String>();
    this.storageConfig = Output.createUnknown<EnvironmentStorageConfig>();
  }
}
