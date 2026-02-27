import 'package:pulumi/pulumi.dart' as pulumi;
import '../target_anthos_cluster/target_anthos_cluster.dart';
import '../target_associated_entity/target_associated_entity.dart';
import '../target_custom_target/target_custom_target.dart';
import '../target_execution_config/target_execution_config.dart';
import '../target_gke/target_gke.dart';
import '../target_multi_target/target_multi_target.dart';
import '../target_run/target_run.dart';
import 'target_args.dart';

/// The Cloud Deploy `Target` resource
///
/// ## Example Usage
///
/// ### Multi_target
/// tests creating and updating a multi-target
///
/// ### Run_target
/// tests creating and updating a cloud run target
///
/// ### Target
/// Creates a basic Cloud Deploy target
///
///
/// ## Import
///
/// Target can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/targets/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Target can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/target:Target default projects/{{project}}/locations/{{location}}/targets/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/target:Target default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/target:Target default {{location}}/{{name}}
/// ```
class Target extends pulumi.CustomResource {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Information specifying an Anthos Cluster.
  late final pulumi.Output<TargetAnthosCluster?> anthosCluster;

  /// Optional. Map of entity IDs to their associated entities. Associated entities allows specifying places other than the deployment target for specific features. For example, the Gateway API canary can be configured to deploy the HTTPRoute to a different cluster(s) than the deployment cluster using associated entities. An entity ID must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^a-z?$`.
  late final pulumi.Output<List<TargetAssociatedEntity>?> associatedEntities;

  /// Output only. Time at which the `Target` was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Information specifying a Custom Target.
  late final pulumi.Output<TargetCustomTarget?> customTarget;

  /// Optional. The deploy parameters to use for this target.
  late final pulumi.Output<Map<String, String>?> deployParameters;

  /// Optional. Description of the `Target`. Max length is 255 characters.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.
  late final pulumi.Output<List<TargetExecutionConfig>> executionConfigs;

  /// Information specifying a GKE Cluster.
  late final pulumi.Output<TargetGke?> gke;

  /// Optional. Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// Information specifying a multiTarget.
  late final pulumi.Output<TargetMultiTarget?> multiTarget;

  /// Name of the `Target`. Format is `a-z?`.
  ///
  ///
  ///
  /// - - -
  late final pulumi.Output<String> name;

  /// The project for the resource
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Optional. Whether or not the `Target` requires approval.
  late final pulumi.Output<bool?> requireApproval;

  /// Information specifying a Cloud Run deployment target.
  late final pulumi.Output<TargetRun?> run;

  /// Output only. Resource id of the `Target`.
  late final pulumi.Output<String> targetId;

  /// Output only. Unique identifier of the `Target`.
  late final pulumi.Output<String> uid;

  /// Output only. Most recent time at which the `Target` was updated.
  late final pulumi.Output<String> updateTime;

  Target(
    String name, {
    TargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/target:Target',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.anthosCluster = registerOutput<TargetAnthosCluster?>('anthosCluster');
    this.associatedEntities =
        registerOutput<List<TargetAssociatedEntity>?>('associatedEntities');
    this.createTime = registerOutput<String>('createTime');
    this.customTarget = registerOutput<TargetCustomTarget?>('customTarget');
    this.deployParameters =
        registerOutput<Map<String, String>?>('deployParameters');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.executionConfigs =
        registerOutput<List<TargetExecutionConfig>>('executionConfigs');
    this.gke = registerOutput<TargetGke?>('gke');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.multiTarget = registerOutput<TargetMultiTarget?>('multiTarget');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.requireApproval = registerOutput<bool?>('requireApproval');
    this.run = registerOutput<TargetRun?>('run');
    this.targetId = registerOutput<String>('targetId');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
