import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_args.dart';

/// A backup policy is used to schedule backups at regular daily, weekly, or monthly intervals.
/// Backup policies allow you to attach a backup schedule to a volume.
/// The policy defines how many backups to retain at daily, weekly, or monthly intervals.
///
///
/// To get more information about BackupPolicy, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.backupPolicies)
/// * How-to Guides
/// * [Documentation](https://cloud.google.com/netapp/volumes/docs/protect-data/about-volume-backups#about_backup_policies)
///
/// ## Example Usage
///
/// ### Netapp Backup Policy Full
///
///
///
///
/// ## Import
///
/// BackupPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backupPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, BackupPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/backupPolicy:BackupPolicy default projects/{{project}}/locations/{{location}}/backupPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/backupPolicy:BackupPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/backupPolicy:BackupPolicy default {{location}}/{{name}}
/// ```
class BackupPolicy extends pulumi.CustomResource {
  /// The total number of volumes assigned by this backup policy.
  late final pulumi.Output<int> assignedVolumeCount;

  /// Create time of the backup policy. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final pulumi.Output<String> createTime;

  /// Number of daily backups to keep. Note that the minimum daily backup limit is 2.
  late final pulumi.Output<int> dailyBackupLimit;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// If enabled, make backups automatically according to the schedules.
  /// This will be applied to all volumes that have this policy attached and enforced on volume level.
  late final pulumi.Output<bool?> enabled;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Name of the region for the policy to apply to.
  late final pulumi.Output<String> location;

  /// Number of monthly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  late final pulumi.Output<int> monthlyBackupLimit;

  /// The name of the backup policy. Needs to be unique per location.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The state of the backup policy.
  late final pulumi.Output<String> state;

  /// Number of weekly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  late final pulumi.Output<int> weeklyBackupLimit;

  BackupPolicy(
    String name, {
    BackupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/backupPolicy:BackupPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assignedVolumeCount = registerOutput<int>('assignedVolumeCount');
    this.createTime = registerOutput<String>('createTime');
    this.dailyBackupLimit = registerOutput<int>('dailyBackupLimit');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enabled = registerOutput<bool?>('enabled');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.monthlyBackupLimit = registerOutput<int>('monthlyBackupLimit');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.weeklyBackupLimit = registerOutput<int>('weeklyBackupLimit');
  }
}
