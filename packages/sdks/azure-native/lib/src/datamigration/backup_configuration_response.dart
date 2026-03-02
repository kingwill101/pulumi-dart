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
  BackupConfigurationResponse({
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
      sourceLocation: map['sourceLocation'] == null ? null : (SourceLocationResponse.fromMap((map['sourceLocation'] as Map).cast<String, dynamic>())).input(),
      targetLocation: map['targetLocation'] == null ? null : (TargetLocationResponse.fromMap((map['targetLocation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

