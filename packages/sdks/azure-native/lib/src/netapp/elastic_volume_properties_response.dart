// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_export_policy_response.dart';
import 'elastic_mount_target_properties_response.dart';
import 'elastic_smb_properties_response.dart';
import 'elastic_volume_data_protection_properties_response.dart';

/// Elastic Volume properties
class ElasticVolumePropertiesResponse {
  /// Current availability status of the resource.
  final pulumi.Input<String> availabilityStatus;
  /// Resource identifier used to identify the Elastic Backup.
  final pulumi.Input<String>? backupResourceId;
  /// Data protection configuration option for the volume, including snapshot policies and backup.
  final pulumi.Input<ElasticVolumeDataProtectionPropertiesResponse>? dataProtection;
  /// Set of export policy rules
  final pulumi.Input<ElasticExportPolicyResponse>? exportPolicy;
  /// A unique file path for the volume. Used when creating mount targets. This needs to be unique within the elastic capacity pool.
  final pulumi.Input<String> filePath;
  /// List of mount targets that can be used to mount this volume
  final pulumi.Input<List<ElasticMountTargetPropertiesResponse>> mountTargets;
  /// Set of support protocol types for the elastic volume
  final pulumi.Input<List<String>> protocolTypes;
  /// Azure lifecycle management.
  final pulumi.Input<String> provisioningState;
  /// The current state of the restoration process.
  final pulumi.Input<String> restorationState;
  /// Maximum size allowed for a volume in bytes. Valid values are in the range 1GiB to 16TiB. Values expressed in bytes as multiples of 1 GiB.
  final pulumi.Input<double> size;
  /// SMB Properties
  final pulumi.Input<ElasticSmbPropertiesResponse>? smbProperties;
  /// Controls the visibility of the volume's read-only snapshot directory, which provides access to each of the volume's snapshots.
  final pulumi.Input<String>? snapshotDirectoryVisibility;
  /// Resource identifier used to identify the Elastic Snapshot.
  final pulumi.Input<String>? snapshotResourceId;

  /// Creates a new [ElasticVolumePropertiesResponse].
  /// [availabilityStatus] Current availability status of the resource.
  /// [backupResourceId] Resource identifier used to identify the Elastic Backup.
  /// [dataProtection] Data protection configuration option for the volume, including snapshot policies and backup.
  /// [exportPolicy] Set of export policy rules
  /// [filePath] A unique file path for the volume. Used when creating mount targets. This needs to be unique within the elastic capacity pool.
  /// [mountTargets] List of mount targets that can be used to mount this volume
  /// [protocolTypes] Set of support protocol types for the elastic volume
  /// [provisioningState] Azure lifecycle management.
  /// [restorationState] The current state of the restoration process.
  /// [size] Maximum size allowed for a volume in bytes. Valid values are in the range 1GiB to 16TiB. Values expressed in bytes as multiples of 1 GiB.
  /// [smbProperties] SMB Properties
  /// [snapshotDirectoryVisibility] Controls the visibility of the volume's read-only snapshot directory, which provides access to each of the volume's snapshots.
  /// [snapshotResourceId] Resource identifier used to identify the Elastic Snapshot.
  ElasticVolumePropertiesResponse({
    required this.availabilityStatus,
    this.backupResourceId,
    this.dataProtection,
    this.exportPolicy,
    required this.filePath,
    required this.mountTargets,
    required this.protocolTypes,
    required this.provisioningState,
    required this.restorationState,
    required this.size,
    this.smbProperties,
    this.snapshotDirectoryVisibility,
    this.snapshotResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityStatus': availabilityStatus,
      'backupResourceId': ?backupResourceId,
      'dataProtection': ?pulumi.Input.mapOptionalInputValue<ElasticVolumeDataProtectionPropertiesResponse, Map<String, dynamic>>(dataProtection, (value) => value.toMap()),
      'exportPolicy': ?pulumi.Input.mapOptionalInputValue<ElasticExportPolicyResponse, Map<String, dynamic>>(exportPolicy, (value) => value.toMap()),
      'filePath': filePath,
      'mountTargets': pulumi.Input.mapInputValue<List<ElasticMountTargetPropertiesResponse>, List<Map<String, dynamic>>>(mountTargets, (value) => pulumi.Input.encodeList<ElasticMountTargetPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocolTypes': protocolTypes,
      'provisioningState': provisioningState,
      'restorationState': restorationState,
      'size': size,
      'smbProperties': ?pulumi.Input.mapOptionalInputValue<ElasticSmbPropertiesResponse, Map<String, dynamic>>(smbProperties, (value) => value.toMap()),
      'snapshotDirectoryVisibility': ?snapshotDirectoryVisibility,
      'snapshotResourceId': ?snapshotResourceId,
    };
  }

  factory ElasticVolumePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticVolumePropertiesResponse(
      availabilityStatus: pulumi.Input.fromValue(map['availabilityStatus'] as String),
      backupResourceId: (() { final guardedValue = map['backupResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataProtection: (() { final guardedValue = map['dataProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticVolumeDataProtectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exportPolicy: (() { final guardedValue = map['exportPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticExportPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filePath: pulumi.Input.fromValue(map['filePath'] as String),
      mountTargets: pulumi.Input.fromValue(pulumi.Input.decodeList<ElasticMountTargetPropertiesResponse>(map['mountTargets']!, (value) => ElasticMountTargetPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))),
      protocolTypes: pulumi.Input.fromValue((map['protocolTypes'] as List).cast<String>()),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      restorationState: pulumi.Input.fromValue(map['restorationState'] as String),
      size: pulumi.Input.fromValue(map['size'] as double),
      smbProperties: (() { final guardedValue = map['smbProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticSmbPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshotDirectoryVisibility: (() { final guardedValue = map['snapshotDirectoryVisibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotResourceId: (() { final guardedValue = map['snapshotResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

