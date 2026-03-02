// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHanaBackupPlansPlan {
  /// The backup prefix.
  final pulumi.Input<String> backupPrefix;
  /// The backup type.
  final pulumi.Input<String> backupType;
  /// The ID of the SAP HANA instance.
  final pulumi.Input<String> clusterId;
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The ID of the resource.
  final pulumi.Input<String> id;
  final pulumi.Input<String> pageTotal;
  /// The ID of the backup plan.
  final pulumi.Input<String> planId;
  /// The name of the backup plan.
  final pulumi.Input<String> planName;
  /// The backup policy.
  final pulumi.Input<String> schedule;
  /// The status of the resource.
  final pulumi.Input<String> status;
  /// The ID of the backup vault.
  final pulumi.Input<String> vaultId;

  /// Creates a new [GetHanaBackupPlansPlan].
  /// [backupPrefix] The backup prefix.
  /// [backupType] The backup type.
  /// [clusterId] The ID of the SAP HANA instance.
  /// [databaseName] The name of the database.
  /// [id] The ID of the resource.
  /// [pageTotal] Required.
  /// [planId] The ID of the backup plan.
  /// [planName] The name of the backup plan.
  /// [schedule] The backup policy.
  /// [status] The status of the resource.
  /// [vaultId] The ID of the backup vault.
  GetHanaBackupPlansPlan({
    required this.backupPrefix,
    required this.backupType,
    required this.clusterId,
    required this.databaseName,
    required this.id,
    required this.pageTotal,
    required this.planId,
    required this.planName,
    required this.schedule,
    required this.status,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPrefix': backupPrefix,
      'backupType': backupType,
      'clusterId': clusterId,
      'databaseName': databaseName,
      'id': id,
      'pageTotal': pageTotal,
      'planId': planId,
      'planName': planName,
      'schedule': schedule,
      'status': status,
      'vaultId': vaultId,
    };
  }

  factory GetHanaBackupPlansPlan.fromMap(Map<String, dynamic> map) {
    return GetHanaBackupPlansPlan(
      backupPrefix: (map['backupPrefix'] as String).input(),
      backupType: (map['backupType'] as String).input(),
      clusterId: (map['clusterId'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      id: (map['id'] as String).input(),
      pageTotal: (map['pageTotal'] as String).input(),
      planId: (map['planId'] as String).input(),
      planName: (map['planName'] as String).input(),
      schedule: (map['schedule'] as String).input(),
      status: (map['status'] as String).input(),
      vaultId: (map['vaultId'] as String).input(),
    );
  }
}

