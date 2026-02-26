// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_storage_config_storage_config/get_instance_storage_config_storage_config.dart';

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

  GetInstanceStorageConfigResult({
    required this.associationId,
    required this.id,
    required this.instanceId,
    required this.region,
    required this.resourceType,
    required this.storageConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['associationId'] = associationId;
    map['id'] = id;
    map['instanceId'] = instanceId;
    map['region'] = region;
    map['resourceType'] = resourceType;
    map['storageConfigs'] = Input.encodeList<
        GetInstanceStorageConfigStorageConfig,
        Map<String, dynamic>>(storageConfigs, (value) => value.toMap());
    return map;
  }

  factory GetInstanceStorageConfigResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceStorageConfigResult(
      associationId: map['associationId'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      region: map['region'] as String,
      resourceType: map['resourceType'] as String,
      storageConfigs: Input.decodeList<GetInstanceStorageConfigStorageConfig>(
          map['storageConfigs'],
          (value) => GetInstanceStorageConfigStorageConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
