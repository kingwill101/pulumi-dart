// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDataSourceReference.
class GetDataSourceReferenceResult {
  final String backupConfigState;
  final int backupCount;
  final String dataSource;
  final String dataSourceReferenceId;
  final String gcpResourceName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String lastBackupState;
  final String lastSuccessfulBackupTime;
  final String location;
  final String name;
  final String project;
  final String resourceType;

  /// Creates a new [GetDataSourceReferenceResult].
  /// [backupConfigState] Required.
  /// [backupCount] Required.
  /// [dataSource] Required.
  /// [dataSourceReferenceId] Required.
  /// [gcpResourceName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastBackupState] Required.
  /// [lastSuccessfulBackupTime] Required.
  /// [location] Required.
  /// [name] Required.
  /// [project] Required.
  /// [resourceType] Required.
  GetDataSourceReferenceResult({
    required this.backupConfigState,
    required this.backupCount,
    required this.dataSource,
    required this.dataSourceReferenceId,
    required this.gcpResourceName,
    required this.id,
    required this.lastBackupState,
    required this.lastSuccessfulBackupTime,
    required this.location,
    required this.name,
    required this.project,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfigState': backupConfigState,
      'backupCount': backupCount,
      'dataSource': dataSource,
      'dataSourceReferenceId': dataSourceReferenceId,
      'gcpResourceName': gcpResourceName,
      'id': id,
      'lastBackupState': lastBackupState,
      'lastSuccessfulBackupTime': lastSuccessfulBackupTime,
      'location': location,
      'name': name,
      'project': project,
      'resourceType': resourceType,
    };
  }

  factory GetDataSourceReferenceResult.fromMap(Map<String, dynamic> map) {
    return GetDataSourceReferenceResult(
      backupConfigState: map['backupConfigState'] as String,
      backupCount: map['backupCount'] as int,
      dataSource: map['dataSource'] as String,
      dataSourceReferenceId: map['dataSourceReferenceId'] as String,
      gcpResourceName: map['gcpResourceName'] as String,
      id: map['id'] as String,
      lastBackupState: map['lastBackupState'] as String,
      lastSuccessfulBackupTime: map['lastSuccessfulBackupTime'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}
