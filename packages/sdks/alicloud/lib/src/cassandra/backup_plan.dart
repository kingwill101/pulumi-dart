import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_args.dart';
import 'backup_plan_state.dart';

/// Provides a Cassandra Backup Plan resource.
///
/// For information about Cassandra Backup Plan and how to use it, see [What is Backup Plan](https://www.alibabacloud.com/help/doc-detail/157522.htm).
///
/// &gt; **NOTE:** Available in v1.128.0+.
///
/// &gt; **DEPRECATED:**  This resource has been [deprecated](https://www.alibabacloud.com/help/en/apsaradb-for-cassandra/latest/cassandra-delisting-notice) from version `1.220.0`.
///
/// ## Import
///
/// Cassandra Backup Plan can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cassandra/backupPlan:BackupPlan example <cluster_id>:<data_center_id>
/// ```
class BackupPlan extends pulumi.CustomResource {
  /// Specifies whether to activate the backup plan. Valid values: `True`, `False`. Default value: `True`.
  late final pulumi.Output<bool> active;
  /// The backup cycle. Valid values: `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday`, `Wednesday`.
  late final pulumi.Output<String> backupPeriod;
  /// The start time of the backup task each day. The time is displayed in UTC and denoted by Z.
  late final pulumi.Output<String> backupTime;
  /// The ID of the cluster for the backup.
  late final pulumi.Output<String> clusterId;
  /// The ID of the data center for the backup in the cluster.
  late final pulumi.Output<String> dataCenterId;
  /// The duration for which you want to retain the backup. Valid values: 1 to 30. Unit: days. Default value: `30`.
  late final pulumi.Output<int> retentionPeriod;

  /// Creates a new [BackupPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPlan]. {@macro pulumi_cassandra_backup_plan_backup_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPlan(
    String name, {
    BackupPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cassandra/backupPlan:BackupPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    active = registerOutput<bool>('active');
    backupPeriod = registerOutput<String>('backupPeriod');
    backupTime = registerOutput<String>('backupTime');
    clusterId = registerOutput<String>('clusterId');
    dataCenterId = registerOutput<String>('dataCenterId');
    retentionPeriod = registerOutput<int>('retentionPeriod');
  }

  /// Gets an existing [BackupPlan] resource's state with the given [name] and [id].
  static BackupPlan get(
    String name,
    pulumi.Input<String> id, {
    BackupPlanState? state,
  }) {
    return BackupPlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupPlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cassandra/backupPlan:BackupPlan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    active = registerOutput<bool>('active');
    backupPeriod = registerOutput<String>('backupPeriod');
    backupTime = registerOutput<String>('backupTime');
    clusterId = registerOutput<String>('clusterId');
    dataCenterId = registerOutput<String>('dataCenterId');
    retentionPeriod = registerOutput<int>('retentionPeriod');
  }
}
