// ignore_for_file: unused_element, unnecessary_cast


/// Azure backup parameters
class AzureBackupParams {
  /// BackupType ; Full/Incremental etc
  final String backupType;
  /// Type of the specific object - used for deserializing
  /// Expected value is 'AzureBackupParams'.
  final String objectType;

  /// Creates a new [AzureBackupParams].
  /// [backupType] BackupType ; Full/Incremental etc
  /// [objectType] Type of the specific object - used for deserializing
  AzureBackupParams({
    required this.backupType,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupType': backupType,
      'objectType': objectType,
    };
  }

  factory AzureBackupParams.fromMap(Map<String, dynamic> map) {
    return AzureBackupParams(
      backupType: map['backupType'] as String,
      objectType: map['objectType'] as String,
    );
  }
}

