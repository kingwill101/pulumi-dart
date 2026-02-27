// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'directory_services_config_response.dart';
import 'file_share_config_response2.dart';
import 'network_config_response15.dart';

/// Result data returned by getInstance.
class GetInstanceResult13 {
  /// The storage capacity of the instance in gigabytes (GB = 1024^3 bytes). This capacity can be increased up to `max_capacity_gb` GB in multipliers of `capacity_step_size_gb` GB.
  final String capacityGb;

  /// The increase/decrease capacity step size.
  final String capacityStepSizeGb;

  /// The time when the instance was created.
  final String createTime;

  /// The description of the instance (2048 characters or less).
  final String description;

  /// Directory Services configuration for Kerberos-based authentication. Should only be set if protocol is "NFS_V4_1".
  final DirectoryServicesConfigResponse directoryServices;

  /// Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  final String etag;

  /// File system shares on the instance. For this version, only a single file share is supported.
  final List<FileShareConfigResponse2> fileShares;

  /// KMS key name used for data encryption.
  final String kmsKeyName;

  /// Resource labels to represent user provided metadata.
  final Map<String, String> labels;

  /// The max capacity of the instance.
  final String maxCapacityGb;

  /// The max number of shares allowed.
  final String maxShareCount;

  /// Indicates whether this instance uses a multi-share configuration with which it can have more than one file-share or none at all. File-shares are added, updated and removed through the separate file-share APIs.
  final bool multiShareEnabled;

  /// The resource name of the instance, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}`.
  final String name;

  /// VPC networks to which the instance is connected. For this version, only a single network is supported.
  final List<NetworkConfigResponse15> networks;

  /// Immutable. The protocol indicates the access protocol for all shares in the instance. This field is immutable and it cannot be changed after the instance has been created. Default value: `NFS_V3`.
  final String protocol;

  /// Reserved for future use.
  final bool satisfiesPzs;

  /// The instance state.
  final String state;

  /// Additional information about the instance state, if available.
  final String statusMessage;

  /// Field indicates all the reasons the instance is in "SUSPENDED" state.
  final List<String> suspensionReasons;

  /// The service tier of the instance.
  final String tier;

  GetInstanceResult13({
    required this.capacityGb,
    required this.capacityStepSizeGb,
    required this.createTime,
    required this.description,
    required this.directoryServices,
    required this.etag,
    required this.fileShares,
    required this.kmsKeyName,
    required this.labels,
    required this.maxCapacityGb,
    required this.maxShareCount,
    required this.multiShareEnabled,
    required this.name,
    required this.networks,
    required this.protocol,
    required this.satisfiesPzs,
    required this.state,
    required this.statusMessage,
    required this.suspensionReasons,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityGb'] = capacityGb;
    map['capacityStepSizeGb'] = capacityStepSizeGb;
    map['createTime'] = createTime;
    map['description'] = description;
    map['directoryServices'] = directoryServices.toMap();
    map['etag'] = etag;
    map['fileShares'] =
        Input.encodeList<FileShareConfigResponse2, Map<String, dynamic>>(
            fileShares, (value) => value.toMap());
    map['kmsKeyName'] = kmsKeyName;
    map['labels'] = labels;
    map['maxCapacityGb'] = maxCapacityGb;
    map['maxShareCount'] = maxShareCount;
    map['multiShareEnabled'] = multiShareEnabled;
    map['name'] = name;
    map['networks'] =
        Input.encodeList<NetworkConfigResponse15, Map<String, dynamic>>(
            networks, (value) => value.toMap());
    map['protocol'] = protocol;
    map['satisfiesPzs'] = satisfiesPzs;
    map['state'] = state;
    map['statusMessage'] = statusMessage;
    map['suspensionReasons'] = suspensionReasons;
    map['tier'] = tier;
    return map;
  }

  factory GetInstanceResult13.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult13(
      capacityGb: map['capacityGb'] as String,
      capacityStepSizeGb: map['capacityStepSizeGb'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      directoryServices: DirectoryServicesConfigResponse.fromMap(
          (map['directoryServices'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      fileShares: Input.decodeList<FileShareConfigResponse2>(
          map['fileShares'],
          (value) => FileShareConfigResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      maxCapacityGb: map['maxCapacityGb'] as String,
      maxShareCount: map['maxShareCount'] as String,
      multiShareEnabled: map['multiShareEnabled'] as bool,
      name: map['name'] as String,
      networks: Input.decodeList<NetworkConfigResponse15>(
          map['networks'],
          (value) => NetworkConfigResponse15.fromMap(
              (value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] as String,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
      suspensionReasons: (map['suspensionReasons'] as List).cast<String>(),
      tier: map['tier'] as String,
    );
  }
}
