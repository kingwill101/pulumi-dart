import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_config_replica/instance_config_replica.dart';
import 'instance_config_args.dart';

/// A possible configuration for a Cloud Spanner instance. Configurations
/// define the geographic placement of nodes and their replication.
///
///
/// To get more information about InstanceConfig, see:
///
/// * [API documentation](https://cloud.google.com/spanner/docs/reference/rest/v1/projects.instanceConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/spanner/)
///
/// ## Example Usage
///
/// ## Import
///
/// InstanceConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instanceConfigs/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, InstanceConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:spanner/instanceConfig:InstanceConfig default projects/{{project}}/instanceConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/instanceConfig:InstanceConfig default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/instanceConfig:InstanceConfig default {{name}}
/// ```
class InstanceConfig extends pulumi.CustomResource {
  /// Base configuration name, e.g. nam3, based on which this configuration is created.
  /// Only set for user managed configurations.
  /// baseConfig must refer to a configuration of type GOOGLE_MANAGED in the same project as this configuration.
  late final pulumi.Output<String> baseConfig;

  /// Output only. Whether this instance config is a Google or User Managed Configuration.
  late final pulumi.Output<String> configType;

  /// The name of this instance configuration as it appears in UIs.
  late final pulumi.Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// A unique identifier for the instance configuration. Values are of the
  /// form projects/<project>/instanceConfigs/[a-z][-a-z0-9]*
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The geographic placement of nodes in this instance configuration and their replication properties.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceConfigReplica>> replicas;

  InstanceConfig(
    String name, {
    InstanceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:spanner/instanceConfig:InstanceConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.baseConfig = registerOutput<String>('baseConfig');
    this.configType = registerOutput<String>('configType');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.replicas = registerOutput<List<InstanceConfigReplica>>('replicas');
  }
}
