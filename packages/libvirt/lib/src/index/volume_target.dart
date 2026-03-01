// ignore_for_file: unused_element, unnecessary_cast

import 'volume_target_encryption.dart';
import 'volume_target_format.dart';
import 'volume_target_permissions.dart';
import 'volume_target_timestamps.dart';

class VolumeTarget {
  /// Configures the cluster size of the storage volume.
  final double? clusterSize;
  /// Specifies the units for the cluster size of the storage volume.
  final String? clusterSizeUnit;
  /// Sets compatibility settings for the storage volume target.
  final String? compat;
  /// Configures the encryption settings for the storage volume.
  final VolumeTargetEncryption? encryption;
  /// Enables specific features for the storage volume target.
  final List<Map<String, dynamic>>? features;
  /// Sets the format type for the backing store of the storage volume.
  final VolumeTargetFormat? format;
  /// Volume path on the host filesystem
  final String? path;
  /// Configures the permissions for the backing store of the storage volume.
  final VolumeTargetPermissions? permissions;
  /// Records the timestamp information for the storage volume target.
  final VolumeTargetTimestamps? timestamps;

  /// Creates a new [VolumeTarget].
  /// [clusterSize] Configures the cluster size of the storage volume.
  /// [clusterSizeUnit] Specifies the units for the cluster size of the storage volume.
  /// [compat] Sets compatibility settings for the storage volume target.
  /// [encryption] Configures the encryption settings for the storage volume.
  /// [features] Enables specific features for the storage volume target.
  /// [format] Sets the format type for the backing store of the storage volume.
  /// [path] Volume path on the host filesystem
  /// [permissions] Configures the permissions for the backing store of the storage volume.
  /// [timestamps] Records the timestamp information for the storage volume target.
  VolumeTarget({
    this.clusterSize,
    this.clusterSizeUnit,
    this.compat,
    this.encryption,
    this.features,
    this.format,
    this.path,
    this.permissions,
    this.timestamps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSize': ?clusterSize,
      'clusterSizeUnit': ?clusterSizeUnit,
      'compat': ?compat,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'features': ?features,
      'format': ?format == null ? null : format!.toMap(),
      'path': ?path,
      'permissions': ?permissions == null ? null : permissions!.toMap(),
      'timestamps': ?timestamps == null ? null : timestamps!.toMap(),
    };
  }

  factory VolumeTarget.fromMap(Map<String, dynamic> map) {
    return VolumeTarget(
      clusterSize: map['clusterSize'] == null ? null : map['clusterSize'] as double,
      clusterSizeUnit: map['clusterSizeUnit'] == null ? null : map['clusterSizeUnit'] as String,
      compat: map['compat'] == null ? null : map['compat'] as String,
      encryption: map['encryption'] == null ? null : VolumeTargetEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      features: map['features'] == null ? null : (map['features'] as List).cast<Map<String, dynamic>>(),
      format: map['format'] == null ? null : VolumeTargetFormat.fromMap((map['format'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : map['path'] as String,
      permissions: map['permissions'] == null ? null : VolumeTargetPermissions.fromMap((map['permissions'] as Map).cast<String, dynamic>()),
      timestamps: map['timestamps'] == null ? null : VolumeTargetTimestamps.fromMap((map['timestamps'] as Map).cast<String, dynamic>()),
    );
  }
}

