// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'file_share_config.dart';
import 'instance_tier.dart';
import 'network_config14.dart';

/// The set of arguments for Instance.
class InstanceArgs12 {
  /// The description of the instance (2048 characters or less).
  final Input<String>? description;

  /// Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  final Input<String>? etag;

  /// File system shares on the instance. For this version, only a single file share is supported.
  final Input<List<FileShareConfig>>? fileShares;

  /// Required. The name of the instance to create. The name must be unique for the specified project and location.
  final Input<String> instanceId;

  /// KMS key name used for data encryption.
  final Input<String>? kmsKeyName;

  /// Resource labels to represent user provided metadata.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// VPC networks to which the instance is connected. For this version, only a single network is supported.
  final Input<List<NetworkConfig14>>? networks;
  final Input<String>? project;

  /// The service tier of the instance.
  final Input<InstanceTier>? tier;

  InstanceArgs12({
    this.description,
    this.etag,
    this.fileShares,
    required this.instanceId,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.networks,
    this.project,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final fileSharesValue = fileShares;
    if (fileSharesValue != null) {
      map['fileShares'] = Input.mapOptionalInputValue<List<FileShareConfig>,
              List<Map<String, dynamic>>>(
          fileSharesValue,
          (value) => Input.encodeList<FileShareConfig, Map<String, dynamic>>(
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
    final networksValue = networks;
    if (networksValue != null) {
      map['networks'] = Input.mapOptionalInputValue<List<NetworkConfig14>,
              List<Map<String, dynamic>>>(
          networksValue,
          (value) => Input.encodeList<NetworkConfig14, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = Input.mapOptionalInputValue<InstanceTier, String>(
          tierValue, (value) => value.value);
    }
    return map;
  }

  factory InstanceArgs12.fromMap(Map<String, dynamic> map) {
    return InstanceArgs12(
      description: Input.asOptionalInput<String>(map['description']),
      etag: Input.asOptionalInput<String>(map['etag']),
      fileShares:
          Input.asOptionalInput<List<FileShareConfig>>(map['fileShares']),
      instanceId: Input.asInput<String>(map['instanceId']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      networks: Input.asOptionalInput<List<NetworkConfig14>>(map['networks']),
      project: Input.asOptionalInput<String>(map['project']),
      tier: Input.asOptionalInput<InstanceTier>(map['tier']),
    );
  }
}
