// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_location.dart';
import 'target_location.dart';

/// Backup Configuration
class BackupConfiguration {
  /// Source location of backups.
  final pulumi.Input<SourceLocation>? sourceLocation;
  /// Target location for copying backups.
  final pulumi.Input<TargetLocation>? targetLocation;

  /// Creates a new [BackupConfiguration].
  /// [sourceLocation] Source location of backups.
  /// [targetLocation] Target location for copying backups.
  BackupConfiguration({
    this.sourceLocation,
    this.targetLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceLocation': ?pulumi.Input.mapOptionalInputValue<SourceLocation, Map<String, dynamic>>(sourceLocation, (value) => value.toMap()),
      'targetLocation': ?pulumi.Input.mapOptionalInputValue<TargetLocation, Map<String, dynamic>>(targetLocation, (value) => value.toMap()),
    };
  }

  factory BackupConfiguration.fromMap(Map<String, dynamic> map) {
    return BackupConfiguration(
      sourceLocation: map['sourceLocation'] == null ? null : (SourceLocation.fromMap((map['sourceLocation']! as Map).cast<String, dynamic>())).input(),
      targetLocation: map['targetLocation'] == null ? null : (TargetLocation.fromMap((map['targetLocation']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

