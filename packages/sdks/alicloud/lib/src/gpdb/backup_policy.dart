import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_args.dart';
import 'backup_policy_state.dart';

/// ## Import
///
/// GPDB Backup Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gpdb/backupPolicy:BackupPolicy example <id>
/// ```
class BackupPolicy extends pulumi.CustomResource {
  /// Data backup retention days.
  late final pulumi.Output<int> backupRetentionPeriod;
  /// The instance ID.
  /// > **NOTE:**  You can call the DescribeDBInstances operation to view the details of all AnalyticDB PostgreSQL instances in the target region, including the instance ID.
  late final pulumi.Output<String> dbInstanceId;
  /// Whether to enable automatic recovery points. Value Description:
  /// - **true**: enabled.
  /// - **false**: Closed.
  late final pulumi.Output<bool> enableRecoveryPoint;
  /// Data backup cycle. Separate multiple values with commas (,). Value Description:
  /// - **Monday**: Monday.
  /// - **Tuesday**: Tuesday.
  /// - **Wednesday**: Wednesday.
  /// - **Thursday**: Thursday.
  /// - **Friday**: Friday.
  /// - **Saturday**: Saturday.
  /// - **Sunday**: Sunday.
  late final pulumi.Output<String> preferredBackupPeriod;
  /// Data backup time. Format: HH:mmZ-HH:mmZ(UTC time).
  late final pulumi.Output<String> preferredBackupTime;
  /// Recovery point frequency. Value Description:
  /// - **1**: Hourly.
  /// - **2**: Every two hours.
  /// - **4**: Every four hours.
  /// - **8**: Every eight hours.
  late final pulumi.Output<String> recoveryPointPeriod;

  /// Creates a new [BackupPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicy]. {@macro pulumi_gpdb_backup_policy_backup_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicy(
    String name, {
    BackupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/backupPolicy:BackupPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupRetentionPeriod = registerOutput<int>('backupRetentionPeriod');
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.enableRecoveryPoint = registerOutput<bool>('enableRecoveryPoint');
    this.preferredBackupPeriod = registerOutput<String>('preferredBackupPeriod');
    this.preferredBackupTime = registerOutput<String>('preferredBackupTime');
    this.recoveryPointPeriod = registerOutput<String>('recoveryPointPeriod');
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
          'alicloud:gpdb/backupPolicy:BackupPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupRetentionPeriod = registerOutput<int>('backupRetentionPeriod');
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.enableRecoveryPoint = registerOutput<bool>('enableRecoveryPoint');
    this.preferredBackupPeriod = registerOutput<String>('preferredBackupPeriod');
    this.preferredBackupTime = registerOutput<String>('preferredBackupTime');
    this.recoveryPointPeriod = registerOutput<String>('recoveryPointPeriod');
  }
}
