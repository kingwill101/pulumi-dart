// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Volume details using the backup policy
class VolumeBackupsResponse {
  /// Total count of backups for volume
  final pulumi.Input<int>? backupsCount;

  /// Policy enabled
  final pulumi.Input<bool>? policyEnabled;

  /// Volume name
  final pulumi.Input<String>? volumeName;

  /// ResourceId used to identify the Volume
  final pulumi.Input<String>? volumeResourceId;

  /// Creates a new [VolumeBackupsResponse].
  /// [backupsCount] Total count of backups for volume
  /// [policyEnabled] Policy enabled
  /// [volumeName] Volume name
  /// [volumeResourceId] ResourceId used to identify the Volume
  VolumeBackupsResponse({
    this.backupsCount,
    this.policyEnabled,
    this.volumeName,
    this.volumeResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupsCount': ?backupsCount,
      'policyEnabled': ?policyEnabled,
      'volumeName': ?volumeName,
      'volumeResourceId': ?volumeResourceId,
    };
  }

  factory VolumeBackupsResponse.fromMap(Map<String, dynamic> map) {
    return VolumeBackupsResponse(
      backupsCount: (() {
        final guardedValue = map['backupsCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      policyEnabled: (() {
        final guardedValue = map['policyEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      volumeName: (() {
        final guardedValue = map['volumeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      volumeResourceId: (() {
        final guardedValue = map['volumeResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
