// ignore_for_file: unused_element, unnecessary_cast


class GetDataSourceDataSourceBackupApplianceApplication {
  /// Appliance Id of the Backup Appliance.
  final String applianceId;
  /// The appid field of the application within the Backup Appliance.
  final String applicationId;
  /// The name of the Application as known to the Backup Appliance.
  final String applicationName;
  /// Appliance name.
  final String backupAppliance;
  /// Hostid of the application host.
  final String hostId;
  /// Hostname of the host where the application is running.
  final String hostname;
  /// The type of the application. e.g. VMBackup
  final String type;

  /// Creates a new [GetDataSourceDataSourceBackupApplianceApplication].
  /// [applianceId] Appliance Id of the Backup Appliance.
  /// [applicationId] The appid field of the application within the Backup Appliance.
  /// [applicationName] The name of the Application as known to the Backup Appliance.
  /// [backupAppliance] Appliance name.
  /// [hostId] Hostid of the application host.
  /// [hostname] Hostname of the host where the application is running.
  /// [type] The type of the application. e.g. VMBackup
  GetDataSourceDataSourceBackupApplianceApplication({
    required this.applianceId,
    required this.applicationId,
    required this.applicationName,
    required this.backupAppliance,
    required this.hostId,
    required this.hostname,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceId': applianceId,
      'applicationId': applicationId,
      'applicationName': applicationName,
      'backupAppliance': backupAppliance,
      'hostId': hostId,
      'hostname': hostname,
      'type': type,
    };
  }

  factory GetDataSourceDataSourceBackupApplianceApplication.fromMap(Map<String, dynamic> map) {
    return GetDataSourceDataSourceBackupApplianceApplication(
      applianceId: map['applianceId'] as String,
      applicationId: map['applicationId'] as String,
      applicationName: map['applicationName'] as String,
      backupAppliance: map['backupAppliance'] as String,
      hostId: map['hostId'] as String,
      hostname: map['hostname'] as String,
      type: map['type'] as String,
    );
  }
}

