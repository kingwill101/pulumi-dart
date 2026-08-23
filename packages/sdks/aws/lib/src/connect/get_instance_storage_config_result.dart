// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_storage_config_storage_config.dart';

/// Result data returned by getInstanceStorageConfig.
class GetInstanceStorageConfigResult {
  final String associationId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String region;
  final String resourceType;
  /// Specifies the storage configuration options for the Connect Instance. Documented below.
  final List<GetInstanceStorageConfigStorageConfig> storageConfigs;

  /// Creates a new [GetInstanceStorageConfigResult].
  /// [associationId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [region] Required.
  /// [resourceType] Required.
  /// [storageConfigs] Specifies the storage configuration options for the Connect Instance. Documented below.
  const GetInstanceStorageConfigResult({
    required this.associationId,
    required this.id,
    required this.instanceId,
    required this.region,
    required this.resourceType,
    required this.storageConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationId': associationId,
      'id': id,
      'instanceId': instanceId,
      'region': region,
      'resourceType': resourceType,
      'storageConfigs': pulumi.Input.encodeList<GetInstanceStorageConfigStorageConfig, Map<String, dynamic>>(storageConfigs, (value) => value.toMap()),
    };
  }

  factory GetInstanceStorageConfigResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceStorageConfigResult(
      associationId: map['associationId'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      region: map['region'] as String,
      resourceType: map['resourceType'] as String,
      storageConfigs: pulumi.Input.decodeList<GetInstanceStorageConfigStorageConfig>(map['storageConfigs']!, (value) => GetInstanceStorageConfigStorageConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
