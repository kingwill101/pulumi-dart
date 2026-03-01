// ignore_for_file: unused_element, unnecessary_cast

class GetDataSourceBackupConfigInfoBackupApplianceBackupConfig {
  /// The name of the application.
  final String applicationName;

  /// The ID of the backup appliance.
  final String backupApplianceId;

  /// The name of the backup appliance.
  final String backupApplianceName;

  /// The name of the host where the application is running.
  final String hostName;

  /// The ID of the SLA of this application.
  final String slaId;

  /// The name of the SLP associated with the application.
  final String slpName;

  /// The name of the SLT associated with the application.
  final String sltName;

  /// Creates a new [GetDataSourceBackupConfigInfoBackupApplianceBackupConfig].
  /// [applicationName] The name of the application.
  /// [backupApplianceId] The ID of the backup appliance.
  /// [backupApplianceName] The name of the backup appliance.
  /// [hostName] The name of the host where the application is running.
  /// [slaId] The ID of the SLA of this application.
  /// [slpName] The name of the SLP associated with the application.
  /// [sltName] The name of the SLT associated with the application.
  GetDataSourceBackupConfigInfoBackupApplianceBackupConfig({
    required this.applicationName,
    required this.backupApplianceId,
    required this.backupApplianceName,
    required this.hostName,
    required this.slaId,
    required this.slpName,
    required this.sltName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'backupApplianceId': backupApplianceId,
      'backupApplianceName': backupApplianceName,
      'hostName': hostName,
      'slaId': slaId,
      'slpName': slpName,
      'sltName': sltName,
    };
  }

  factory GetDataSourceBackupConfigInfoBackupApplianceBackupConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataSourceBackupConfigInfoBackupApplianceBackupConfig(
      applicationName: map['applicationName'] as String,
      backupApplianceId: map['backupApplianceId'] as String,
      backupApplianceName: map['backupApplianceName'] as String,
      hostName: map['hostName'] as String,
      slaId: map['slaId'] as String,
      slpName: map['slpName'] as String,
      sltName: map['sltName'] as String,
    );
  }
}
