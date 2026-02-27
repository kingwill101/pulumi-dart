import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_autoscaling_config/instance_autoscaling_config.dart';
import 'instance_spanner_args.dart';

/// An isolated set of Cloud Spanner resources on which databases can be
/// hosted.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/spanner/docs/reference/rest/v1/projects.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/spanner/)
///
/// ## Example Usage
///
/// ### Spanner Instance Basic
///
///
///
/// ### Spanner Instance Processing Units
///
///
///
/// ### Spanner Instance Multi Regional
///
///
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:spanner/instance:Instance default projects/{{project}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/instance:Instance default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/instance:Instance default {{name}}
/// ```
class InstanceSpanner extends pulumi.CustomResource {
  late final pulumi.Output<InstanceAutoscalingConfig?> autoscalingConfig;

  /// The name of the instance's configuration (similar but not
  /// quite the same as a region) which defines the geographic placement and
  /// replication of your databases in this instance. It determines where your data
  /// is stored. Values are typically of the form `regional-europe-west1` , `us-central` etc.
  /// In order to obtain a valid list please consult the
  /// [Configuration section of the docs](https://cloud.google.com/spanner/docs/instances).
  late final pulumi.Output<String> config;

  /// Controls the default backup behavior for new databases within the instance.
  /// Note that `AUTOMATIC` is not permitted for free instances, as backups and backup schedules are not allowed for free instances.
  /// if unset or NONE, no default backup schedule will be created for new databases within the instance.
  /// Possible values are: `NONE`, `AUTOMATIC`.
  late final pulumi.Output<String> defaultBackupScheduleType;

  /// The descriptive name for this instance as it appears in UIs. Must be
  /// unique per project and between 4 and 30 characters in length.
  late final pulumi.Output<String> displayName;

  /// The edition selected for this instance. Different editions provide different capabilities at different price points.
  /// Possible values are: `EDITION_UNSPECIFIED`, `STANDARD`, `ENTERPRISE`, `ENTERPRISE_PLUS`.
  late final pulumi.Output<String> edition;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// When deleting a spanner instance, this boolean option will delete all backups of this instance.
  /// This must be set to true if you created a backup manually in the console.
  late final pulumi.Output<bool?> forceDestroy;

  /// The type of this instance. The type can be used to distinguish product variants, that can affect aspects like:
  /// usage restrictions, quotas and billing. Currently this is used to distinguish FREE_INSTANCE vs PROVISIONED instances.
  /// When configured as FREE_INSTANCE, the field `edition` should not be configured.
  /// Possible values are: `PROVISIONED`, `FREE_INSTANCE`.
  late final pulumi.Output<String> instanceType;

  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// A unique identifier for the instance, which cannot be changed after
  /// the instance is created. The name must be between 6 and 30 characters
  /// in length.
  /// If not provided, a random string starting with `tf-` will be selected.
  late final pulumi.Output<String> name;
  late final pulumi.Output<int> numNodes;
  late final pulumi.Output<int> processingUnits;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Instance status: `CREATING` or `READY`.
  late final pulumi.Output<String> state;

  InstanceSpanner(
    String name, {
    InstanceSpannerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:spanner/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoscalingConfig =
        registerOutput<InstanceAutoscalingConfig?>('autoscalingConfig');
    this.config = registerOutput<String>('config');
    this.defaultBackupScheduleType =
        registerOutput<String>('defaultBackupScheduleType');
    this.displayName = registerOutput<String>('displayName');
    this.edition = registerOutput<String>('edition');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.instanceType = registerOutput<String>('instanceType');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.numNodes = registerOutput<int>('numNodes');
    this.processingUnits = registerOutput<int>('processingUnits');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
  }
}
