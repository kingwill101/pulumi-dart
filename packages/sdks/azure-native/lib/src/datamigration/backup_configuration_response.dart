// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_location_response.dart';
import 'target_location_response.dart';

/// Backup Configuration
class BackupConfigurationResponse {
  /// Source location of backups.
  final pulumi.Input<SourceLocationResponse>? sourceLocation;
  /// Target location for copying backups.
  final pulumi.Input<TargetLocationResponse>? targetLocation;

  /// Creates a new [BackupConfigurationResponse].
  /// [sourceLocation] Source location of backups.
  /// [targetLocation] Target location for copying backups.
  const BackupConfigurationResponse({
    this.sourceLocation,
    this.targetLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceLocation': ?pulumi.Input.mapOptionalInputValue<SourceLocationResponse, Map<String, dynamic>>(sourceLocation, (value) => value.toMap()),
      'targetLocation': ?pulumi.Input.mapOptionalInputValue<TargetLocationResponse, Map<String, dynamic>>(targetLocation, (value) => value.toMap()),
    };
  }

  factory BackupConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BackupConfigurationResponse(
      sourceLocation: (() { final guardedValue = map['sourceLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetLocation: (() { final guardedValue = map['targetLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

