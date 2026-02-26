// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'file_share_config_response.dart';
import 'network_config_response14.dart';

/// Result data returned by getInstance.
class GetInstanceResult12 {
  /// The time when the instance was created.
  final String createTime;

  /// The description of the instance (2048 characters or less).
  final String description;

  /// Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  final String etag;

  /// File system shares on the instance. For this version, only a single file share is supported.
  final List<FileShareConfigResponse> fileShares;

  /// KMS key name used for data encryption.
  final String kmsKeyName;

  /// Resource labels to represent user provided metadata.
  final Map<String, String> labels;

  /// The resource name of the instance, in the format `projects/{project}/locations/{location}/instances/{instance}`.
  final String name;

  /// VPC networks to which the instance is connected. For this version, only a single network is supported.
  final List<NetworkConfigResponse14> networks;

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

  GetInstanceResult12({
    required this.createTime,
    required this.description,
    required this.etag,
    required this.fileShares,
    required this.kmsKeyName,
    required this.labels,
    required this.name,
    required this.networks,
    required this.satisfiesPzs,
    required this.state,
    required this.statusMessage,
    required this.suspensionReasons,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['etag'] = etag;
    map['fileShares'] =
        Input.encodeList<FileShareConfigResponse, Map<String, dynamic>>(
            fileShares, (value) => value.toMap());
    map['kmsKeyName'] = kmsKeyName;
    map['labels'] = labels;
    map['name'] = name;
    map['networks'] =
        Input.encodeList<NetworkConfigResponse14, Map<String, dynamic>>(
            networks, (value) => value.toMap());
    map['satisfiesPzs'] = satisfiesPzs;
    map['state'] = state;
    map['statusMessage'] = statusMessage;
    map['suspensionReasons'] = suspensionReasons;
    map['tier'] = tier;
    return map;
  }

  factory GetInstanceResult12.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult12(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      fileShares: Input.decodeList<FileShareConfigResponse>(
          map['fileShares'],
          (value) => FileShareConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      networks: Input.decodeList<NetworkConfigResponse14>(
          map['networks'],
          (value) => NetworkConfigResponse14.fromMap(
              (value as Map).cast<String, dynamic>())),
      satisfiesPzs: map['satisfiesPzs'] as bool,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
      suspensionReasons: (map['suspensionReasons'] as List).cast<String>(),
      tier: map['tier'] as String,
    );
  }
}
