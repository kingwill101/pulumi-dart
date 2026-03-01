// ignore_for_file: unused_element, unnecessary_cast


class GetHanaBackupPlansPlan {
  /// The backup prefix.
  final String backupPrefix;
  /// The backup type.
  final String backupType;
  /// The ID of the SAP HANA instance.
  final String clusterId;
  /// The name of the database.
  final String databaseName;
  /// The ID of the resource.
  final String id;
  final String pageTotal;
  /// The ID of the backup plan.
  final String planId;
  /// The name of the backup plan.
  final String planName;
  /// The backup policy.
  final String schedule;
  /// The status of the resource.
  final String status;
  /// The ID of the backup vault.
  final String vaultId;

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
      backupPrefix: map['backupPrefix'] as String,
      backupType: map['backupType'] as String,
      clusterId: map['clusterId'] as String,
      databaseName: map['databaseName'] as String,
      id: map['id'] as String,
      pageTotal: map['pageTotal'] as String,
      planId: map['planId'] as String,
      planName: map['planName'] as String,
      schedule: map['schedule'] as String,
      status: map['status'] as String,
      vaultId: map['vaultId'] as String,
    );
  }
}

