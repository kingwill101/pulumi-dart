// ignore_for_file: unused_element, unnecessary_cast

import 'source_location.dart';
import 'target_location.dart';

/// Backup Configuration
class BackupConfiguration {
  /// Source location of backups.
  final SourceLocation? sourceLocation;
  /// Target location for copying backups.
  final TargetLocation? targetLocation;

  /// Creates a new [BackupConfiguration].
  /// [sourceLocation] Source location of backups.
  /// [targetLocation] Target location for copying backups.
  BackupConfiguration({
    this.sourceLocation,
    this.targetLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceLocation': ?sourceLocation == null ? null : sourceLocation!.toMap(),
      'targetLocation': ?targetLocation == null ? null : targetLocation!.toMap(),
    };
  }

  factory BackupConfiguration.fromMap(Map<String, dynamic> map) {
    return BackupConfiguration(
      sourceLocation: map['sourceLocation'] == null ? null : SourceLocation.fromMap((map['sourceLocation'] as Map).cast<String, dynamic>()),
      targetLocation: map['targetLocation'] == null ? null : TargetLocation.fromMap((map['targetLocation'] as Map).cast<String, dynamic>()),
    );
  }
}

