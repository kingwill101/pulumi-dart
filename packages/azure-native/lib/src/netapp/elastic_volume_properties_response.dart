// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_export_policy_response.dart';
import 'elastic_mount_target_properties_response.dart';
import 'elastic_smb_properties_response.dart';
import 'elastic_volume_data_protection_properties_response.dart';

/// Elastic Volume properties
class ElasticVolumePropertiesResponse {
  /// Current availability status of the resource.
  final String availabilityStatus;
  /// Resource identifier used to identify the Elastic Backup.
  final String? backupResourceId;
  /// Data protection configuration option for the volume, including snapshot policies and backup.
  final ElasticVolumeDataProtectionPropertiesResponse? dataProtection;
  /// Set of export policy rules
  final ElasticExportPolicyResponse? exportPolicy;
  /// A unique file path for the volume. Used when creating mount targets. This needs to be unique within the elastic capacity pool.
  final String filePath;
  /// List of mount targets that can be used to mount this volume
  final List<ElasticMountTargetPropertiesResponse> mountTargets;
  /// Set of support protocol types for the elastic volume
  final List<String> protocolTypes;
  /// Azure lifecycle management.
  final String provisioningState;
  /// The current state of the restoration process.
  final String restorationState;
  /// Maximum size allowed for a volume in bytes. Valid values are in the range 1GiB to 16TiB. Values expressed in bytes as multiples of 1 GiB.
  final double size;
  /// SMB Properties
  final ElasticSmbPropertiesResponse? smbProperties;
  /// Controls the visibility of the volume's read-only snapshot directory, which provides access to each of the volume's snapshots.
  final String? snapshotDirectoryVisibility;
  /// Resource identifier used to identify the Elastic Snapshot.
  final String? snapshotResourceId;

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
      'dataProtection': ?dataProtection == null ? null : dataProtection!.toMap(),
      'exportPolicy': ?exportPolicy == null ? null : exportPolicy!.toMap(),
      'filePath': filePath,
      'mountTargets': pulumi.Input.encodeList<ElasticMountTargetPropertiesResponse, Map<String, dynamic>>(mountTargets, (value) => value.toMap()),
      'protocolTypes': protocolTypes,
      'provisioningState': provisioningState,
      'restorationState': restorationState,
      'size': size,
      'smbProperties': ?smbProperties == null ? null : smbProperties!.toMap(),
      'snapshotDirectoryVisibility': ?snapshotDirectoryVisibility,
      'snapshotResourceId': ?snapshotResourceId,
    };
  }

  factory ElasticVolumePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticVolumePropertiesResponse(
      availabilityStatus: map['availabilityStatus'] as String,
      backupResourceId: map['backupResourceId'] == null ? null : map['backupResourceId'] as String,
      dataProtection: map['dataProtection'] == null ? null : ElasticVolumeDataProtectionPropertiesResponse.fromMap((map['dataProtection'] as Map).cast<String, dynamic>()),
      exportPolicy: map['exportPolicy'] == null ? null : ElasticExportPolicyResponse.fromMap((map['exportPolicy'] as Map).cast<String, dynamic>()),
      filePath: map['filePath'] as String,
      mountTargets: pulumi.Input.decodeList<ElasticMountTargetPropertiesResponse>(map['mountTargets'], (value) => ElasticMountTargetPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      protocolTypes: (map['protocolTypes'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      restorationState: map['restorationState'] as String,
      size: map['size'] as double,
      smbProperties: map['smbProperties'] == null ? null : ElasticSmbPropertiesResponse.fromMap((map['smbProperties'] as Map).cast<String, dynamic>()),
      snapshotDirectoryVisibility: map['snapshotDirectoryVisibility'] == null ? null : map['snapshotDirectoryVisibility'] as String,
      snapshotResourceId: map['snapshotResourceId'] == null ? null : map['snapshotResourceId'] as String,
    );
  }
}

