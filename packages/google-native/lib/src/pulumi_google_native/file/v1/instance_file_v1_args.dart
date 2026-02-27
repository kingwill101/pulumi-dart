// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_config.dart';
import 'instance_tier.dart';
import 'network_config_file_v1.dart';

/// The set of arguments for Instance.
class InstanceFileV1Args {
  /// The description of the instance (2048 characters or less).
  final pulumi.Input<String>? description;

  /// Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  final pulumi.Input<String>? etag;

  /// File system shares on the instance. For this version, only a single file share is supported.
  final pulumi.Input<List<FileShareConfig>>? fileShares;

  /// Required. The name of the instance to create. The name must be unique for the specified project and location.
  final pulumi.Input<String> instanceId;

  /// KMS key name used for data encryption.
  final pulumi.Input<String>? kmsKeyName;

  /// Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// VPC networks to which the instance is connected. For this version, only a single network is supported.
  final pulumi.Input<List<NetworkConfigFileV1>>? networks;
  final pulumi.Input<String>? project;

  /// The service tier of the instance.
  final pulumi.Input<InstanceTier>? tier;

  InstanceFileV1Args({
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
      map['fileShares'] = pulumi.Input.mapOptionalInputValue<
              List<FileShareConfig>, List<Map<String, dynamic>>>(
          fileSharesValue,
          (value) =>
              pulumi.Input.encodeList<FileShareConfig, Map<String, dynamic>>(
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
      map['networks'] = pulumi.Input.mapOptionalInputValue<
              List<NetworkConfigFileV1>, List<Map<String, dynamic>>>(
          networksValue,
          (value) => pulumi.Input.encodeList<NetworkConfigFileV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = pulumi.Input.mapOptionalInputValue<InstanceTier, String>(
          tierValue, (value) => value.value);
    }
    return map;
  }

  factory InstanceFileV1Args.fromMap(Map<String, dynamic> map) {
    return InstanceFileV1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      fileShares: pulumi.Input.asOptionalInput<List<FileShareConfig>>(
          map['fileShares']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      networks: pulumi.Input.asOptionalInput<List<NetworkConfigFileV1>>(
          map['networks']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tier: pulumi.Input.asOptionalInput<InstanceTier>(map['tier']),
    );
  }
}
