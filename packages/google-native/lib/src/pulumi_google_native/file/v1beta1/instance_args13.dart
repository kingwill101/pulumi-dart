// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'directory_services_config.dart';
import 'file_share_config2.dart';
import 'instance_protocol.dart';
import 'instance_tier2.dart';
import 'network_config15.dart';

/// The set of arguments for Instance.
class InstanceArgs13 {
  /// The storage capacity of the instance in gigabytes (GB = 1024^3 bytes). This capacity can be increased up to `max_capacity_gb` GB in multipliers of `capacity_step_size_gb` GB.
  final Input<String>? capacityGb;

  /// The description of the instance (2048 characters or less).
  final Input<String>? description;

  /// Directory Services configuration for Kerberos-based authentication. Should only be set if protocol is "NFS_V4_1".
  final Input<DirectoryServicesConfig>? directoryServices;

  /// Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  final Input<String>? etag;

  /// File system shares on the instance. For this version, only a single file share is supported.
  final Input<List<FileShareConfig2>>? fileShares;

  /// Required. The ID of the instance to create. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  final Input<String> instanceId;

  /// KMS key name used for data encryption.
  final Input<String>? kmsKeyName;

  /// Resource labels to represent user provided metadata.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The max number of shares allowed.
  final Input<String>? maxShareCount;

  /// Indicates whether this instance uses a multi-share configuration with which it can have more than one file-share or none at all. File-shares are added, updated and removed through the separate file-share APIs.
  final Input<bool>? multiShareEnabled;

  /// VPC networks to which the instance is connected. For this version, only a single network is supported.
  final Input<List<NetworkConfig15>>? networks;
  final Input<String>? project;

  /// Immutable. The protocol indicates the access protocol for all shares in the instance. This field is immutable and it cannot be changed after the instance has been created. Default value: `NFS_V3`.
  final Input<InstanceProtocol>? protocol;

  /// The service tier of the instance.
  final Input<InstanceTier2>? tier;

  InstanceArgs13({
    this.capacityGb,
    this.description,
    this.directoryServices,
    this.etag,
    this.fileShares,
    required this.instanceId,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.maxShareCount,
    this.multiShareEnabled,
    this.networks,
    this.project,
    this.protocol,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityGbValue = capacityGb;
    if (capacityGbValue != null) {
      map['capacityGb'] = capacityGbValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final directoryServicesValue = directoryServices;
    if (directoryServicesValue != null) {
      map['directoryServices'] = Input.mapOptionalInputValue<
              DirectoryServicesConfig, Map<String, dynamic>>(
          directoryServicesValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final fileSharesValue = fileShares;
    if (fileSharesValue != null) {
      map['fileShares'] = Input.mapOptionalInputValue<List<FileShareConfig2>,
              List<Map<String, dynamic>>>(
          fileSharesValue,
          (value) => Input.encodeList<FileShareConfig2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    map['instanceId'] = instanceId;
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final maxShareCountValue = maxShareCount;
    if (maxShareCountValue != null) {
      map['maxShareCount'] = maxShareCountValue;
    }
    final multiShareEnabledValue = multiShareEnabled;
    if (multiShareEnabledValue != null) {
      map['multiShareEnabled'] = multiShareEnabledValue;
    }
    final networksValue = networks;
    if (networksValue != null) {
      map['networks'] = Input.mapOptionalInputValue<List<NetworkConfig15>,
              List<Map<String, dynamic>>>(
          networksValue,
          (value) => Input.encodeList<NetworkConfig15, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = Input.mapOptionalInputValue<InstanceProtocol, String>(
          protocolValue, (value) => value.value);
    }
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = Input.mapOptionalInputValue<InstanceTier2, String>(
          tierValue, (value) => value.value);
    }
    return map;
  }

  factory InstanceArgs13.fromMap(Map<String, dynamic> map) {
    return InstanceArgs13(
      capacityGb: Input.asOptionalInput<String>(map['capacityGb']),
      description: Input.asOptionalInput<String>(map['description']),
      directoryServices: Input.asOptionalInput<DirectoryServicesConfig>(
          map['directoryServices']),
      etag: Input.asOptionalInput<String>(map['etag']),
      fileShares:
          Input.asOptionalInput<List<FileShareConfig2>>(map['fileShares']),
      instanceId: Input.asInput<String>(map['instanceId']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      maxShareCount: Input.asOptionalInput<String>(map['maxShareCount']),
      multiShareEnabled: Input.asOptionalInput<bool>(map['multiShareEnabled']),
      networks: Input.asOptionalInput<List<NetworkConfig15>>(map['networks']),
      project: Input.asOptionalInput<String>(map['project']),
      protocol: Input.asOptionalInput<InstanceProtocol>(map['protocol']),
      tier: Input.asOptionalInput<InstanceTier2>(map['tier']),
    );
  }
}
