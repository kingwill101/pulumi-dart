import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_args.dart';

/// ## Import
///
/// ADB backup policy can be imported using the id or cluster id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:adb/backupPolicy:BackupPolicy example "am-12345678"
/// ```
class BackupPolicy extends pulumi.CustomResource {
  /// Cluster backup retention days, Fixed for 7 days, not modified.
  late final pulumi.Output<String> backupRetentionPeriod;
  /// The Id of cluster that can run database.
  late final pulumi.Output<String> dbClusterId;
  /// ADB Cluster backup period. Valid values: [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday].
  late final pulumi.Output<List<String>> preferredBackupPeriods;
  /// ADB Cluster backup time, in the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. China time is 8 hours behind it.
  late final pulumi.Output<String> preferredBackupTime;

  /// Creates a new [BackupPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicy]. {@macro pulumi_adb_backup_policy_backup_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicy(
    String name, {
    BackupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:adb/backupPolicy:BackupPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupRetentionPeriod = registerOutput<String>('backupRetentionPeriod');
    this.dbClusterId = registerOutput<String>('dbClusterId');
    this.preferredBackupPeriods = registerOutput<List<String>>('preferredBackupPeriods');
    this.preferredBackupTime = registerOutput<String>('preferredBackupTime');
  }
}
