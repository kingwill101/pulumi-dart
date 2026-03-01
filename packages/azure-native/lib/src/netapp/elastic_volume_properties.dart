// ignore_for_file: unused_element, unnecessary_cast

import 'elastic_export_policy.dart';
import 'elastic_smb_properties.dart';
import 'elastic_volume_data_protection_properties.dart';

/// Elastic Volume properties
class ElasticVolumeProperties {
  /// Resource identifier used to identify the Elastic Backup.
  final String? backupResourceId;
  /// Data protection configuration option for the volume, including snapshot policies and backup.
  final ElasticVolumeDataProtectionProperties? dataProtection;
  /// Set of export policy rules
  final ElasticExportPolicy? exportPolicy;
  /// A unique file path for the volume. Used when creating mount targets. This needs to be unique within the elastic capacity pool.
  final String filePath;
  /// Set of support protocol types for the elastic volume
  final List<String> protocolTypes;
  /// Maximum size allowed for a volume in bytes. Valid values are in the range 1GiB to 16TiB. Values expressed in bytes as multiples of 1 GiB.
  final double size;
  /// SMB Properties
  final ElasticSmbProperties? smbProperties;
  /// Controls the visibility of the volume's read-only snapshot directory, which provides access to each of the volume's snapshots.
  final String? snapshotDirectoryVisibility;
  /// Resource identifier used to identify the Elastic Snapshot.
  final String? snapshotResourceId;

  /// Creates a new [ElasticVolumeProperties].
  /// [backupResourceId] Resource identifier used to identify the Elastic Backup.
  /// [dataProtection] Data protection configuration option for the volume, including snapshot policies and backup.
  /// [exportPolicy] Set of export policy rules
  /// [filePath] A unique file path for the volume. Used when creating mount targets. This needs to be unique within the elastic capacity pool.
  /// [protocolTypes] Set of support protocol types for the elastic volume
  /// [size] Maximum size allowed for a volume in bytes. Valid values are in the range 1GiB to 16TiB. Values expressed in bytes as multiples of 1 GiB.
  /// [smbProperties] SMB Properties
  /// [snapshotDirectoryVisibility] Controls the visibility of the volume's read-only snapshot directory, which provides access to each of the volume's snapshots.
  /// [snapshotResourceId] Resource identifier used to identify the Elastic Snapshot.
  ElasticVolumeProperties({
    this.backupResourceId,
    this.dataProtection,
    this.exportPolicy,
    required this.filePath,
    required this.protocolTypes,
    required this.size,
    this.smbProperties,
    this.snapshotDirectoryVisibility,
    this.snapshotResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupResourceId': ?backupResourceId,
      'dataProtection': ?dataProtection == null ? null : dataProtection!.toMap(),
      'exportPolicy': ?exportPolicy == null ? null : exportPolicy!.toMap(),
      'filePath': filePath,
      'protocolTypes': protocolTypes,
      'size': size,
      'smbProperties': ?smbProperties == null ? null : smbProperties!.toMap(),
      'snapshotDirectoryVisibility': ?snapshotDirectoryVisibility,
      'snapshotResourceId': ?snapshotResourceId,
    };
  }

  factory ElasticVolumeProperties.fromMap(Map<String, dynamic> map) {
    return ElasticVolumeProperties(
      backupResourceId: map['backupResourceId'] == null ? null : map['backupResourceId'] as String,
      dataProtection: map['dataProtection'] == null ? null : ElasticVolumeDataProtectionProperties.fromMap((map['dataProtection'] as Map).cast<String, dynamic>()),
      exportPolicy: map['exportPolicy'] == null ? null : ElasticExportPolicy.fromMap((map['exportPolicy'] as Map).cast<String, dynamic>()),
      filePath: map['filePath'] as String,
      protocolTypes: (map['protocolTypes'] as List).cast<String>(),
      size: map['size'] as double,
      smbProperties: map['smbProperties'] == null ? null : ElasticSmbProperties.fromMap((map['smbProperties'] as Map).cast<String, dynamic>()),
      snapshotDirectoryVisibility: map['snapshotDirectoryVisibility'] == null ? null : map['snapshotDirectoryVisibility'] as String,
      snapshotResourceId: map['snapshotResourceId'] == null ? null : map['snapshotResourceId'] as String,
    );
  }
}

