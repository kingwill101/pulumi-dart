import 'package:pulumi/pulumi.dart';
import '../restore_plan_restore_config/restore_plan_restore_config.dart';
import 'restore_plan_args.dart';

/// Represents a Restore Plan instance.
///
///
/// To get more information about RestorePlan, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/projects.locations.restorePlans)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke)
///
/// ## Example Usage
///
/// ### Gkebackup Restoreplan All Namespaces
///
///
///
/// ### Gkebackup Restoreplan Rollback Namespace
///
///
///
/// ### Gkebackup Restoreplan Protected Application
///
///
///
/// ### Gkebackup Restoreplan All Cluster Resources
///
///
///
/// ### Gkebackup Restoreplan Rename Namespace
///
///
///
/// ### Gkebackup Restoreplan Second Transformation
///
///
///
/// ### Gkebackup Restoreplan Gitops Mode
///
///
///
/// ### Gkebackup Restoreplan Restore Order
///
///
///
/// ### Gkebackup Restoreplan Volume Res
///
///
///
///
/// ## Import
///
/// RestorePlan can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/restorePlans/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, RestorePlan can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkebackup/restorePlan:RestorePlan default projects/{{project}}/locations/{{location}}/restorePlans/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkebackup/restorePlan:RestorePlan default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkebackup/restorePlan:RestorePlan default {{location}}/{{name}}
/// ```
class RestorePlan extends CustomResource {
  /// A reference to the BackupPlan from which Backups may be used
  /// as the source for Restores created via this RestorePlan.
  late final Output<String> backupPlan;

  /// The source cluster from which Restores will be created via this RestorePlan.
  late final Output<String> cluster;

  /// User specified descriptive string for this RestorePlan.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Description: A set of custom labels supplied by the user.
  /// A list of key->value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The region of the Restore Plan.
  late final Output<String> location;

  /// The full name of the BackupPlan Resource.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Defines the configuration of Restores created via this RestorePlan.
  /// Structure is documented below.
  late final Output<RestorePlanRestoreConfig> restoreConfig;

  /// The State of the RestorePlan.
  late final Output<String> state;

  /// Detailed description of why RestorePlan is in its current state.
  late final Output<String> stateReason;

  /// Server generated, unique identifier of UUID format.
  late final Output<String> uid;

  RestorePlan(
    String name, {
    RestorePlanArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkebackup/restorePlan:RestorePlan',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupPlan = registerOutput<String>('backupPlan');
    this.cluster = registerOutput<String>('cluster');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.restoreConfig =
        registerOutput<RestorePlanRestoreConfig>('restoreConfig');
    this.state = registerOutput<String>('state');
    this.stateReason = registerOutput<String>('stateReason');
    this.uid = registerOutput<String>('uid');
  }
}
