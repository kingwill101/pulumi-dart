// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_storage_config_storage_config.dart';

/// Result data returned by getInstanceStorageConfig.
class GetInstanceStorageConfigResult {
  final String? associationId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  final String? region;
  final String? resourceType;
  /// Specifies the storage configuration options for the Connect Instance. Documented below.
  final List<GetInstanceStorageConfigStorageConfig>? storageConfigs;

  /// Creates a new [GetInstanceStorageConfigResult].
  /// [associationId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [region] Optional.
  /// [resourceType] Optional.
  /// [storageConfigs] Specifies the storage configuration options for the Connect Instance. Documented below.
  const GetInstanceStorageConfigResult({
    this.associationId,
    this.id,
    this.instanceId,
    this.region,
    this.resourceType,
    this.storageConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationId': ?associationId,
      'id': ?id,
      'instanceId': ?instanceId,
      'region': ?region,
      'resourceType': ?resourceType,
      'storageConfigs': ?(() { final guardedValue = storageConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceStorageConfigStorageConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetInstanceStorageConfigResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceStorageConfigResult(
      associationId: (() { final guardedValue = map['associationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageConfigs: (() { final guardedValue = map['storageConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceStorageConfigStorageConfig>(guardedValue, (value) => GetInstanceStorageConfigStorageConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
