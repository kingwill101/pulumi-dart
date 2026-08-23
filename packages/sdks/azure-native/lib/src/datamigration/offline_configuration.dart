// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Offline configuration
class OfflineConfiguration {
  /// Last backup name for offline migration. This is optional for migrations from file share. If it is not provided, then the service will determine the last backup file name based on latest backup files present in file share.
  final pulumi.Input<String>? lastBackupName;
  /// Offline migration
  final pulumi.Input<bool>? offline;

  /// Creates a new [OfflineConfiguration].
  /// [lastBackupName] Last backup name for offline migration. This is optional for migrations from file share. If it is not provided, then the service will determine the last backup file name based on latest backup files present in file share.
  /// [offline] Offline migration
  const OfflineConfiguration({
    this.lastBackupName,
    this.offline,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastBackupName': ?lastBackupName,
      'offline': ?offline,
    };
  }

  factory OfflineConfiguration.fromMap(Map<String, dynamic> map) {
    return OfflineConfiguration(
      lastBackupName: (() { final guardedValue = map['lastBackupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offline: (() { final guardedValue = map['offline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
