// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Offline configuration
class OfflineConfigurationResponse {
  /// Last backup name for offline migration. This is optional for migrations from file share. If it is not provided, then the service will determine the last backup file name based on latest backup files present in file share.
  final pulumi.Input<String>? lastBackupName;
  /// Offline migration
  final pulumi.Input<bool>? offline;

  /// Creates a new [OfflineConfigurationResponse].
  /// [lastBackupName] Last backup name for offline migration. This is optional for migrations from file share. If it is not provided, then the service will determine the last backup file name based on latest backup files present in file share.
  /// [offline] Offline migration
  OfflineConfigurationResponse({
    this.lastBackupName,
    this.offline,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastBackupName': ?lastBackupName,
      'offline': ?offline,
    };
  }

  factory OfflineConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return OfflineConfigurationResponse(
      lastBackupName: map['lastBackupName'] == null ? null : (map['lastBackupName'] as String).input(),
      offline: map['offline'] == null ? null : (map['offline'] as bool).input(),
    );
  }
}

