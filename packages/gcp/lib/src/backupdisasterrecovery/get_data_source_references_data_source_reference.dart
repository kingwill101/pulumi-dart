// ignore_for_file: unused_element, unnecessary_cast


class GetDataSourceReferencesDataSourceReference {
  /// The state of the backup config for the data source.
  final String backupConfigState;
  /// The number of backups for the data source.
  final int backupCount;
  /// The underlying data source resource.
  final String dataSource;
  /// The GCP resource name for the data source.
  final String gcpResourceName;
  /// The state of the last backup.
  final String lastBackupState;
  /// The last time a successful backup was made.
  final String lastSuccessfulBackupTime;
  final String name;
  /// The resource type to get the data source references for. Examples include, "sqladmin.googleapis.com/Instance" , "compute.googleapis.com/Instance". `resource_type` is deprecated and will be removed in a future major release.
  final String resourceType;

  /// Creates a new [GetDataSourceReferencesDataSourceReference].
  /// [backupConfigState] The state of the backup config for the data source.
  /// [backupCount] The number of backups for the data source.
  /// [dataSource] The underlying data source resource.
  /// [gcpResourceName] The GCP resource name for the data source.
  /// [lastBackupState] The state of the last backup.
  /// [lastSuccessfulBackupTime] The last time a successful backup was made.
  /// [name] Required.
  /// [resourceType] The resource type to get the data source references for. Examples include, "sqladmin.googleapis.com/Instance" , "compute.googleapis.com/Instance". `resource_type` is deprecated and will be removed in a future major release.
  GetDataSourceReferencesDataSourceReference({
    required this.backupConfigState,
    required this.backupCount,
    required this.dataSource,
    required this.gcpResourceName,
    required this.lastBackupState,
    required this.lastSuccessfulBackupTime,
    required this.name,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfigState': backupConfigState,
      'backupCount': backupCount,
      'dataSource': dataSource,
      'gcpResourceName': gcpResourceName,
      'lastBackupState': lastBackupState,
      'lastSuccessfulBackupTime': lastSuccessfulBackupTime,
      'name': name,
      'resourceType': resourceType,
    };
  }

  factory GetDataSourceReferencesDataSourceReference.fromMap(Map<String, dynamic> map) {
    return GetDataSourceReferencesDataSourceReference(
      backupConfigState: map['backupConfigState'] as String,
      backupCount: map['backupCount'] as int,
      dataSource: map['dataSource'] as String,
      gcpResourceName: map['gcpResourceName'] as String,
      lastBackupState: map['lastBackupState'] as String,
      lastSuccessfulBackupTime: map['lastSuccessfulBackupTime'] as String,
      name: map['name'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}

