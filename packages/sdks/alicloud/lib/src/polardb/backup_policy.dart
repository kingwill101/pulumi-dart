import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_args.dart';
import 'backup_policy_state.dart';

/// ## Import
///
/// PolarDB backup policy can be imported using the id or cluster id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:polardb/backupPolicy:BackupPolicy example "rm-12345678"
/// ```
class BackupPolicy extends pulumi.CustomResource {
  /// The backup frequency. Valid values are `Normal`, `2/24H`, `3/24H`, `4/24H`.Default to `Normal`.
  late final pulumi.Output<String> backupFrequency;

  /// Cluster backup retention days, Fixed for 7 days, not modified.
  late final pulumi.Output<String> backupRetentionPeriod;

  /// Specifies whether to retain backups when you delete a cluster. Valid values are `ALL`, `LATEST`, `NONE`. Default to `NONE`. Value options can refer to the latest docs [ModifyBackupPolicy](https://www.alibabacloud.com/help/en/polardb/latest/modifybackuppolicy)
  late final pulumi.Output<String> backupRetentionPolicyOnClusterDeletion;

  /// The Id of cluster that can run database.The backup frequency. Valid values are `Normal`, `2/24H`, `3/24H`, `4/24H`.Default to `Normal`.
  late final pulumi.Output<String> dataLevel1BackupFrequency;

  /// PolarDB Cluster of level-1 backup period. Valid values: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].
  /// &gt; **NOTE:** Note Select at least two values. Separate multiple values with commas (,).
  late final pulumi.Output<List<String>> dataLevel1BackupPeriods;

  /// The retention period of level-1 backups. Valid values: 3 to 14. Unit: days.
  late final pulumi.Output<int> dataLevel1BackupRetentionPeriod;

  /// The time period during which automatic backup is performed. The format is HH: MMZ HH: MMZ (UTC time), and the entered value must be an hour apart, such as 14:00z-15:00z.
  late final pulumi.Output<String> dataLevel1BackupTime;

  /// PolarDB Cluster of level-2 backup is a cross regional backup area.
  late final pulumi.Output<String?> dataLevel2BackupAnotherRegionRegion;

  /// PolarDB Cluster of level-2 backup cross region backup retention period. Valid values are `0`, `30 to 7300`, `-1`. Default to `0`.
  late final pulumi.Output<int> dataLevel2BackupAnotherRegionRetentionPeriod;

  /// PolarDB Cluster of level-2 backup period. Valid values: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].
  /// &gt; **NOTE:** Note Select at least two values. Separate multiple values with commas (,).
  late final pulumi.Output<List<String>?> dataLevel2BackupPeriods;

  /// The retention period of level-2 backups. Valid values are `0`, `30 to 7300`, `-1`. Default to `0`.
  late final pulumi.Output<int> dataLevel2BackupRetentionPeriod;

  /// The Id of cluster that can run database.
  late final pulumi.Output<String> dbClusterId;

  /// Indicates whether the log backup feature was enabled. Valid values are `0`, `1`. `1` By default, the log backup feature is enabled and cannot be disabled.
  late final pulumi.Output<int> enableBackupLog;

  /// The region in which you want to store cross-region log backups. For information about regions that support the cross-region backup feature, see [Overview.](https://www.alibabacloud.com/help/en/polardb/latest/backup-and-restoration-overview)
  late final pulumi.Output<String?> logBackupAnotherRegionRegion;

  /// The retention period of cross-region log backups. Default value: OFF. Valid values are `0`, `30 to 7300`, `-1`.
  /// &gt; **NOTE:** Note When you create a cluster, the default value of this parameter is 0.
  late final pulumi.Output<int?> logBackupAnotherRegionRetentionPeriod;

  /// The retention period of the log backups. Valid values are `3 to 7300`, `-1`.
  late final pulumi.Output<int> logBackupRetentionPeriod;

  /// PolarDB Cluster backup period. Valid values: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]. Default to ["Tuesday", "Thursday", "Saturday"].
  late final pulumi.Output<List<String>> preferredBackupPeriods;

  /// PolarDB Cluster backup time, in the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. Default to "02:00Z-03:00Z". China time is 8 hours behind it.
  late final pulumi.Output<String> preferredBackupTime;

  /// Creates a new [BackupPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicy]. {@macro pulumi_polardb_backup_policy_backup_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicy(
    String name, {
    BackupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:polardb/backupPolicy:BackupPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupFrequency = registerOutput<String>('backupFrequency');
    backupRetentionPeriod = registerOutput<String>('backupRetentionPeriod');
    backupRetentionPolicyOnClusterDeletion = registerOutput<String>(
      'backupRetentionPolicyOnClusterDeletion',
    );
    dataLevel1BackupFrequency = registerOutput<String>(
      'dataLevel1BackupFrequency',
    );
    dataLevel1BackupPeriods = registerOutput<List<String>>(
      'dataLevel1BackupPeriods',
    );
    dataLevel1BackupRetentionPeriod = registerOutput<int>(
      'dataLevel1BackupRetentionPeriod',
    );
    dataLevel1BackupTime = registerOutput<String>('dataLevel1BackupTime');
    dataLevel2BackupAnotherRegionRegion = registerOutput<String?>(
      'dataLevel2BackupAnotherRegionRegion',
    );
    dataLevel2BackupAnotherRegionRetentionPeriod = registerOutput<int>(
      'dataLevel2BackupAnotherRegionRetentionPeriod',
    );
    dataLevel2BackupPeriods = registerOutput<List<String>?>(
      'dataLevel2BackupPeriods',
    );
    dataLevel2BackupRetentionPeriod = registerOutput<int>(
      'dataLevel2BackupRetentionPeriod',
    );
    dbClusterId = registerOutput<String>('dbClusterId');
    enableBackupLog = registerOutput<int>('enableBackupLog');
    logBackupAnotherRegionRegion = registerOutput<String?>(
      'logBackupAnotherRegionRegion',
    );
    logBackupAnotherRegionRetentionPeriod = registerOutput<int?>(
      'logBackupAnotherRegionRetentionPeriod',
    );
    logBackupRetentionPeriod = registerOutput<int>('logBackupRetentionPeriod');
    preferredBackupPeriods = registerOutput<List<String>>(
      'preferredBackupPeriods',
    );
    preferredBackupTime = registerOutput<String>('preferredBackupTime');
  }

  /// Gets an existing [BackupPolicy] resource's state with the given [name] and [id].
  static BackupPolicy get(
    String name,
    pulumi.Input<String> id, {
    BackupPolicyState? state,
  }) {
    return BackupPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:polardb/backupPolicy:BackupPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupFrequency = registerOutput<String>('backupFrequency');
    backupRetentionPeriod = registerOutput<String>('backupRetentionPeriod');
    backupRetentionPolicyOnClusterDeletion = registerOutput<String>(
      'backupRetentionPolicyOnClusterDeletion',
    );
    dataLevel1BackupFrequency = registerOutput<String>(
      'dataLevel1BackupFrequency',
    );
    dataLevel1BackupPeriods = registerOutput<List<String>>(
      'dataLevel1BackupPeriods',
    );
    dataLevel1BackupRetentionPeriod = registerOutput<int>(
      'dataLevel1BackupRetentionPeriod',
    );
    dataLevel1BackupTime = registerOutput<String>('dataLevel1BackupTime');
    dataLevel2BackupAnotherRegionRegion = registerOutput<String?>(
      'dataLevel2BackupAnotherRegionRegion',
    );
    dataLevel2BackupAnotherRegionRetentionPeriod = registerOutput<int>(
      'dataLevel2BackupAnotherRegionRetentionPeriod',
    );
    dataLevel2BackupPeriods = registerOutput<List<String>?>(
      'dataLevel2BackupPeriods',
    );
    dataLevel2BackupRetentionPeriod = registerOutput<int>(
      'dataLevel2BackupRetentionPeriod',
    );
    dbClusterId = registerOutput<String>('dbClusterId');
    enableBackupLog = registerOutput<int>('enableBackupLog');
    logBackupAnotherRegionRegion = registerOutput<String?>(
      'logBackupAnotherRegionRegion',
    );
    logBackupAnotherRegionRetentionPeriod = registerOutput<int?>(
      'logBackupAnotherRegionRetentionPeriod',
    );
    logBackupRetentionPeriod = registerOutput<int>('logBackupRetentionPeriod');
    preferredBackupPeriods = registerOutput<List<String>>(
      'preferredBackupPeriods',
    );
    preferredBackupTime = registerOutput<String>('preferredBackupTime');
  }
}
