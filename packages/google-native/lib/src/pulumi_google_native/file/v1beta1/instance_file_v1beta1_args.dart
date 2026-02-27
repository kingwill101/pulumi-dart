// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_services_config.dart';
import 'file_share_config_file_v1beta1.dart';
import 'instance_protocol.dart';
import 'instance_tier_file_v1beta1.dart';
import 'network_config_file_v1beta1.dart';

/// The set of arguments for Instance.
class InstanceFileV1beta1Args {
  /// The storage capacity of the instance in gigabytes (GB = 1024^3 bytes). This capacity can be increased up to `max_capacity_gb` GB in multipliers of `capacity_step_size_gb` GB.
  final pulumi.Input<String>? capacityGb;

  /// The description of the instance (2048 characters or less).
  final pulumi.Input<String>? description;

  /// Directory Services configuration for Kerberos-based authentication. Should only be set if protocol is "NFS_V4_1".
  final pulumi.Input<DirectoryServicesConfig>? directoryServices;

  /// Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  final pulumi.Input<String>? etag;

  /// File system shares on the instance. For this version, only a single file share is supported.
  final pulumi.Input<List<FileShareConfigFileV1beta1>>? fileShares;

  /// Required. The ID of the instance to create. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  final pulumi.Input<String> instanceId;

  /// KMS key name used for data encryption.
  final pulumi.Input<String>? kmsKeyName;

  /// Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The max number of shares allowed.
  final pulumi.Input<String>? maxShareCount;

  /// Indicates whether this instance uses a multi-share configuration with which it can have more than one file-share or none at all. File-shares are added, updated and removed through the separate file-share APIs.
  final pulumi.Input<bool>? multiShareEnabled;

  /// VPC networks to which the instance is connected. For this version, only a single network is supported.
  final pulumi.Input<List<NetworkConfigFileV1beta1>>? networks;
  final pulumi.Input<String>? project;

  /// Immutable. The protocol indicates the access protocol for all shares in the instance. This field is immutable and it cannot be changed after the instance has been created. Default value: `NFS_V3`.
  final pulumi.Input<InstanceProtocol>? protocol;

  /// The service tier of the instance.
  final pulumi.Input<InstanceTierFileV1beta1>? tier;

  InstanceFileV1beta1Args({
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
      map['directoryServices'] = pulumi.Input.mapOptionalInputValue<
              DirectoryServicesConfig, Map<String, dynamic>>(
          directoryServicesValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final fileSharesValue = fileShares;
    if (fileSharesValue != null) {
      map['fileShares'] = pulumi.Input.mapOptionalInputValue<
              List<FileShareConfigFileV1beta1>, List<Map<String, dynamic>>>(
          fileSharesValue,
          (value) => pulumi.Input.encodeList<FileShareConfigFileV1beta1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
      map['networks'] = pulumi.Input.mapOptionalInputValue<
              List<NetworkConfigFileV1beta1>, List<Map<String, dynamic>>>(
          networksValue,
          (value) => pulumi.Input.encodeList<NetworkConfigFileV1beta1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] =
          pulumi.Input.mapOptionalInputValue<InstanceProtocol, String>(
              protocolValue, (value) => value.value);
    }
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] =
          pulumi.Input.mapOptionalInputValue<InstanceTierFileV1beta1, String>(
              tierValue, (value) => value.value);
    }
    return map;
  }

  factory InstanceFileV1beta1Args.fromMap(Map<String, dynamic> map) {
    return InstanceFileV1beta1Args(
      capacityGb: pulumi.Input.asOptionalInput<String>(map['capacityGb']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      directoryServices: pulumi.Input.asOptionalInput<DirectoryServicesConfig>(
          map['directoryServices']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      fileShares:
          pulumi.Input.asOptionalInput<List<FileShareConfigFileV1beta1>>(
              map['fileShares']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      maxShareCount: pulumi.Input.asOptionalInput<String>(map['maxShareCount']),
      multiShareEnabled:
          pulumi.Input.asOptionalInput<bool>(map['multiShareEnabled']),
      networks: pulumi.Input.asOptionalInput<List<NetworkConfigFileV1beta1>>(
          map['networks']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      protocol: pulumi.Input.asOptionalInput<InstanceProtocol>(map['protocol']),
      tier: pulumi.Input.asOptionalInput<InstanceTierFileV1beta1>(map['tier']),
    );
  }
}
