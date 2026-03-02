// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_export_policy.dart';
import 'elastic_smb_properties.dart';
import 'elastic_volume_data_protection_properties.dart';

/// Elastic Volume properties
class ElasticVolumeProperties {
  /// Resource identifier used to identify the Elastic Backup.
  final pulumi.Input<String>? backupResourceId;
  /// Data protection configuration option for the volume, including snapshot policies and backup.
  final pulumi.Input<ElasticVolumeDataProtectionProperties>? dataProtection;
  /// Set of export policy rules
  final pulumi.Input<ElasticExportPolicy>? exportPolicy;
  /// A unique file path for the volume. Used when creating mount targets. This needs to be unique within the elastic capacity pool.
  final pulumi.Input<String> filePath;
  /// Set of support protocol types for the elastic volume
  final pulumi.Input<List<String>> protocolTypes;
  /// Maximum size allowed for a volume in bytes. Valid values are in the range 1GiB to 16TiB. Values expressed in bytes as multiples of 1 GiB.
  final pulumi.Input<double> size;
  /// SMB Properties
  final pulumi.Input<ElasticSmbProperties>? smbProperties;
  /// Controls the visibility of the volume's read-only snapshot directory, which provides access to each of the volume's snapshots.
  final pulumi.Input<String>? snapshotDirectoryVisibility;
  /// Resource identifier used to identify the Elastic Snapshot.
  final pulumi.Input<String>? snapshotResourceId;

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
      'dataProtection': ?pulumi.Input.mapOptionalInputValue<ElasticVolumeDataProtectionProperties, Map<String, dynamic>>(dataProtection, (value) => value.toMap()),
      'exportPolicy': ?pulumi.Input.mapOptionalInputValue<ElasticExportPolicy, Map<String, dynamic>>(exportPolicy, (value) => value.toMap()),
      'filePath': filePath,
      'protocolTypes': protocolTypes,
      'size': size,
      'smbProperties': ?pulumi.Input.mapOptionalInputValue<ElasticSmbProperties, Map<String, dynamic>>(smbProperties, (value) => value.toMap()),
      'snapshotDirectoryVisibility': ?snapshotDirectoryVisibility,
      'snapshotResourceId': ?snapshotResourceId,
    };
  }

  factory ElasticVolumeProperties.fromMap(Map<String, dynamic> map) {
    return ElasticVolumeProperties(
      backupResourceId: map['backupResourceId'] == null ? null : (map['backupResourceId']! as String).input(),
      dataProtection: map['dataProtection'] == null ? null : (ElasticVolumeDataProtectionProperties.fromMap((map['dataProtection']! as Map).cast<String, dynamic>())).input(),
      exportPolicy: map['exportPolicy'] == null ? null : (ElasticExportPolicy.fromMap((map['exportPolicy']! as Map).cast<String, dynamic>())).input(),
      filePath: (map['filePath'] as String).input(),
      protocolTypes: ((map['protocolTypes'] as List).cast<String>()).input(),
      size: (map['size'] as double).input(),
      smbProperties: map['smbProperties'] == null ? null : (ElasticSmbProperties.fromMap((map['smbProperties']! as Map).cast<String, dynamic>())).input(),
      snapshotDirectoryVisibility: map['snapshotDirectoryVisibility'] == null ? null : (map['snapshotDirectoryVisibility']! as String).input(),
      snapshotResourceId: map['snapshotResourceId'] == null ? null : (map['snapshotResourceId']! as String).input(),
    );
  }
}

