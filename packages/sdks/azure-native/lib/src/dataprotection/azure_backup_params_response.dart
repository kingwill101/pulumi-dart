// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure backup parameters
class AzureBackupParamsResponse {
  /// BackupType ; Full/Incremental etc
  final pulumi.Input<String> backupType;
  /// Type of the specific object - used for deserializing
  /// Expected value is 'AzureBackupParams'.
  final pulumi.Input<String> objectType;

  /// Creates a new [AzureBackupParamsResponse].
  /// [backupType] BackupType ; Full/Incremental etc
  /// [objectType] Type of the specific object - used for deserializing
  const AzureBackupParamsResponse({
    required this.backupType,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupType': backupType,
      'objectType': objectType,
    };
  }

  factory AzureBackupParamsResponse.fromMap(Map<String, dynamic> map) {
    return AzureBackupParamsResponse(
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
    );
  }
}
