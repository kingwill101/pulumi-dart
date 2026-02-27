import 'package:pulumi/pulumi.dart' as pulumi;
import '../insights_config_artifact_config/insights_config_artifact_config.dart';
import '../insights_config_error/insights_config_error.dart';
import '../insights_config_runtime_config/insights_config_runtime_config.dart';
import 'insights_config_args.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Developer Connect Insights Config Basic
///
///
///
///
/// ## Import
///
/// InsightsConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/insightsConfigs/{{insights_config_id}}`
///
/// * `{{project}}/{{location}}/{{insights_config_id}}`
///
/// * `{{location}}/{{insights_config_id}}`
///
/// When using the `pulumi import` command, InsightsConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:developerconnect/insightsConfig:InsightsConfig default projects/{{project}}/locations/{{location}}/insightsConfigs/{{insights_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:developerconnect/insightsConfig:InsightsConfig default {{project}}/{{location}}/{{insights_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:developerconnect/insightsConfig:InsightsConfig default {{location}}/{{insights_config_id}}
/// ```
class InsightsConfig extends pulumi.CustomResource {
  /// User specified annotations. See https://google.aip.dev/148#annotations
  /// for more details such as format and size limitations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// The name of the App Hub Application.
  /// Format:
  /// projects/{project}/locations/{location}/applications/{application}
  late final pulumi.Output<String> appHubApplication;

  /// The artifact configurations of the artifacts that are deployed.
  /// Structure is documented below.
  late final pulumi.Output<List<InsightsConfigArtifactConfig>?> artifactConfigs;

  /// [Output only] Create timestamp
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Any errors that occurred while setting up the InsightsConfig.
  /// Each error will be in the format: `field_name: error_message`, e.g.
  /// GetAppHubApplication: Permission denied while getting App Hub
  /// application. Please grant permissions to the P4SA.
  /// Structure is documented below.
  late final pulumi.Output<List<InsightsConfigError>> errors;

  /// ID of the requesting InsightsConfig.
  late final pulumi.Output<String> insightsConfigId;

  /// Set of labels associated with an InsightsConfig.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. The name of the InsightsConfig.
  /// Format:
  /// projects/{project}/locations/{location}/insightsConfigs/{insightsConfig}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Reconciling (https://google.aip.dev/128#reconciliation).
  /// Set to true if the current state of InsightsConfig does not match the
  /// user's intended state, and the service is actively updating the resource to
  /// reconcile them. This can happen due to user-triggered updates or
  /// system actions like failover or maintenance.
  late final pulumi.Output<bool> reconciling;

  /// The runtime configurations where the application is deployed.
  /// Structure is documented below.
  late final pulumi.Output<List<InsightsConfigRuntimeConfig>> runtimeConfigs;

  /// (Output)
  /// The state of the Runtime.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// LINKED
  /// UNLINKED
  late final pulumi.Output<String> state;

  /// [Output only] Update timestamp
  late final pulumi.Output<String> updateTime;

  InsightsConfig(
    String name, {
    InsightsConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:developerconnect/insightsConfig:InsightsConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.appHubApplication = registerOutput<String>('appHubApplication');
    this.artifactConfigs =
        registerOutput<List<InsightsConfigArtifactConfig>?>('artifactConfigs');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.errors = registerOutput<List<InsightsConfigError>>('errors');
    this.insightsConfigId = registerOutput<String>('insightsConfigId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.runtimeConfigs =
        registerOutput<List<InsightsConfigRuntimeConfig>>('runtimeConfigs');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
