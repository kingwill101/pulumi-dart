import 'package:pulumi/pulumi.dart';
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
class InstanceConfig extends CustomResource {
  /// Base configuration name, e.g. nam3, based on which this configuration is created.
  /// Only set for user managed configurations.
  /// baseConfig must refer to a configuration of type GOOGLE_MANAGED in the same project as this configuration.
  late final Output<String> baseConfig;

  /// Output only. Whether this instance config is a Google or User Managed Configuration.
  late final Output<String> configType;

  /// The name of this instance configuration as it appears in UIs.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// A unique identifier for the instance configuration. Values are of the
  /// form projects/<project>/instanceConfigs/[a-z][-a-z0-9]*
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The geographic placement of nodes in this instance configuration and their replication properties.
  /// Structure is documented below.
  late final Output<List<InstanceConfigReplica>> replicas;

  InstanceConfig(
    String name, {
    InstanceConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:spanner/instanceConfig:InstanceConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.baseConfig = Output.createUnknown<String>();
    this.configType = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.replicas = Output.createUnknown<List<InstanceConfigReplica>>();
  }
}
