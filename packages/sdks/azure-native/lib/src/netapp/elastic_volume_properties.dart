// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_export_policy.dart';
import 'elastic_smb_properties.dart';
import 'elastic_volume_data_protection_properties.dart';

/// Elastic Volume properties
class ElasticVolumeProperties {
  /// Resource identifier used to identify the Elastic Backup.
  final pulumi.Input<String?>? backupResourceId;
  /// Data protection configuration option for the volume, including snapshot policies and backup.
  final pulumi.Input<ElasticVolumeDataProtectionProperties?>? dataProtection;
  /// Set of export policy rules
  final pulumi.Input<ElasticExportPolicy?>? exportPolicy;
  /// A unique file path for the volume. Used when creating mount targets. This needs to be unique within the elastic capacity pool.
  final pulumi.Input<String> filePath;
  /// Set of support protocol types for the elastic volume
  final pulumi.Input<List<dynamic>> protocolTypes;
  /// Maximum size allowed for a volume in bytes. Valid values are in the range 1GiB to 16TiB. Values expressed in bytes as multiples of 1 GiB.
  final pulumi.Input<double> size;
  /// SMB Properties
  final pulumi.Input<ElasticSmbProperties?>? smbProperties;
  /// Controls the visibility of the volume's read-only snapshot directory, which provides access to each of the volume's snapshots.
  final pulumi.Input<dynamic>? snapshotDirectoryVisibility;
  /// Resource identifier used to identify the Elastic Snapshot.
  final pulumi.Input<String?>? snapshotResourceId;

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
  const ElasticVolumeProperties({
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
      backupResourceId: (() { final guardedValue = map['backupResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataProtection: (() { final guardedValue = map['dataProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticVolumeDataProtectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exportPolicy: (() { final guardedValue = map['exportPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticExportPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filePath: pulumi.Input.fromValue(map['filePath'] as String),
      protocolTypes: pulumi.Input.fromValue((map['protocolTypes'] as List).cast<dynamic>()),
      size: pulumi.Input.fromValue((map['size'] as num).toDouble()),
      smbProperties: (() { final guardedValue = map['smbProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticSmbProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshotDirectoryVisibility: (() { final guardedValue = map['snapshotDirectoryVisibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      snapshotResourceId: (() { final guardedValue = map['snapshotResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
