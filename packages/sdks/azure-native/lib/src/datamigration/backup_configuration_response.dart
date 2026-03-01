// ignore_for_file: unused_element, unnecessary_cast

import 'source_location_response.dart';
import 'target_location_response.dart';

/// Backup Configuration
class BackupConfigurationResponse {
  /// Source location of backups.
  final SourceLocationResponse? sourceLocation;
  /// Target location for copying backups.
  final TargetLocationResponse? targetLocation;

  /// Creates a new [BackupConfigurationResponse].
  /// [sourceLocation] Source location of backups.
  /// [targetLocation] Target location for copying backups.
  BackupConfigurationResponse({
    this.sourceLocation,
    this.targetLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceLocation': ?sourceLocation == null ? null : sourceLocation!.toMap(),
      'targetLocation': ?targetLocation == null ? null : targetLocation!.toMap(),
    };
  }

  factory BackupConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BackupConfigurationResponse(
      sourceLocation: map['sourceLocation'] == null ? null : SourceLocationResponse.fromMap((map['sourceLocation'] as Map).cast<String, dynamic>()),
      targetLocation: map['targetLocation'] == null ? null : TargetLocationResponse.fromMap((map['targetLocation'] as Map).cast<String, dynamic>()),
    );
  }
}

