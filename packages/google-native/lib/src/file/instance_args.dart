// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_config.dart';
import 'instance_tier.dart';
import 'network_config.dart';

/// {@template pulumi_file_v1_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_file_v1_instance_args_doc}
class InstanceArgs {
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
  final pulumi.Input<List<NetworkConfig>>? networks;
  final pulumi.Input<String>? project;

  /// The service tier of the instance.
  final pulumi.Input<InstanceTier>? tier;

  /// Creates a new [InstanceArgs].
  /// [description] The description of the instance (2048 characters or less).
  /// [etag] Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  /// [fileShares] File system shares on the instance. For this version, only a single file share is supported.
  /// [instanceId] Required. The name of the instance to create. The name must be unique for the specified project and location.
  /// [kmsKeyName] KMS key name used for data encryption.
  /// [labels] Resource labels to represent user provided metadata.
  /// [location] Optional.
  /// [networks] VPC networks to which the instance is connected. For this version, only a single network is supported.
  /// [project] Optional.
  /// [tier] The service tier of the instance.
  InstanceArgs({
    String? description,
    String? etag,
    List<FileShareConfig>? fileShares,
    required String instanceId,
    String? kmsKeyName,
    Map<String, String>? labels,
    String? location,
    List<NetworkConfig>? networks,
    String? project,
    InstanceTier? tier,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       etag = pulumi.Input.asOptionalInput<String>(etag),
       fileShares = pulumi.Input.asOptionalInput<List<FileShareConfig>>(
         fileShares,
       ),
       instanceId = pulumi.Input.asInput<String>(instanceId),
       kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       networks = pulumi.Input.asOptionalInput<List<NetworkConfig>>(networks),
       project = pulumi.Input.asOptionalInput<String>(project),
       tier = pulumi.Input.asOptionalInput<InstanceTier>(tier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'etag': ?etag,
      'fileShares':
          ?pulumi.Input.mapOptionalInputValue<
            List<FileShareConfig>,
            List<Map<String, dynamic>>
          >(
            fileShares,
            (value) =>
                pulumi.Input.encodeList<FileShareConfig, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'instanceId': instanceId,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'networks':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkConfig>,
            List<Map<String, dynamic>>
          >(
            networks,
            (value) =>
                pulumi.Input.encodeList<NetworkConfig, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'project': ?project,
      'tier': ?pulumi.Input.mapOptionalInputValue<InstanceTier, String>(
        tier,
        (value) => value.value,
      ),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      fileShares: map['fileShares'] == null
          ? null
          : pulumi.Input.decodeList<FileShareConfig>(
              map['fileShares'],
              (value) => FileShareConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      instanceId: map['instanceId'] as String,
      kmsKeyName: map['kmsKeyName'] == null
          ? null
          : map['kmsKeyName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      networks: map['networks'] == null
          ? null
          : pulumi.Input.decodeList<NetworkConfig>(
              map['networks'],
              (value) =>
                  NetworkConfig.fromMap((value as Map).cast<String, dynamic>()),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      tier: map['tier'] == null
          ? null
          : InstanceTier.fromValue(map['tier'] as String),
    );
  }
}
