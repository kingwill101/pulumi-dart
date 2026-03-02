// ignore_for_file: unused_element, unnecessary_cast

import 'blob_storage_class_type_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStorageClass.
class GetStorageClassResult {
  /// The access mode: [ReadWriteOnce, ReadWriteMany] or [ReadWriteOnce]
  final List<String>? accessModes;
  /// Volume can be expanded or not
  final String? allowVolumeExpansion;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Allow single data node failure
  final String? dataResilience;
  /// Failover speed: NA, Slow, Fast
  final String? failoverSpeed;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Limitations of the storage class
  final List<String>? limitations;
  /// Additional mount options
  final List<String>? mountOptions;
  /// The name of the resource
  final String name;
  /// Performance tier
  final String? performance;
  /// Selection priority when multiple storage classes meet the criteria. 0: Highest, -1: Never use
  final double? priority;
  /// Provisioner name
  final String? provisioner;
  /// Resource provision state
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Properties of the StorageClass
  final BlobStorageClassTypePropertiesResponse typeProperties;
  /// Binding mode of volumes: Immediate, WaitForFirstConsumer
  final String? volumeBindingMode;

  /// Creates a new [GetStorageClassResult].
  /// [accessModes] The access mode: [ReadWriteOnce, ReadWriteMany] or [ReadWriteOnce]
  /// [allowVolumeExpansion] Volume can be expanded or not
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataResilience] Allow single data node failure
  /// [failoverSpeed] Failover speed: NA, Slow, Fast
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [limitations] Limitations of the storage class
  /// [mountOptions] Additional mount options
  /// [name] The name of the resource
  /// [performance] Performance tier
  /// [priority] Selection priority when multiple storage classes meet the criteria. 0: Highest, -1: Never use
  /// [provisioner] Provisioner name
  /// [provisioningState] Resource provision state
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [typeProperties] Properties of the StorageClass
  /// [volumeBindingMode] Binding mode of volumes: Immediate, WaitForFirstConsumer
  GetStorageClassResult({
    this.accessModes,
    this.allowVolumeExpansion,
    required this.azureApiVersion,
    this.dataResilience,
    this.failoverSpeed,
    required this.id,
    this.limitations,
    this.mountOptions,
    required this.name,
    this.performance,
    this.priority,
    this.provisioner,
    required this.provisioningState,
    required this.systemData,
    required this.type,
    required this.typeProperties,
    this.volumeBindingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessModes': ?accessModes,
      'allowVolumeExpansion': ?allowVolumeExpansion,
      'azureApiVersion': azureApiVersion,
      'dataResilience': ?dataResilience,
      'failoverSpeed': ?failoverSpeed,
      'id': id,
      'limitations': ?limitations,
      'mountOptions': ?mountOptions,
      'name': name,
      'performance': ?performance,
      'priority': ?priority,
      'provisioner': ?provisioner,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
      'typeProperties': typeProperties.toMap(),
      'volumeBindingMode': ?volumeBindingMode,
    };
  }

  factory GetStorageClassResult.fromMap(Map<String, dynamic> map) {
    return GetStorageClassResult(
      accessModes: map['accessModes'] == null ? null : (map['accessModes']! as List).cast<String>(),
      allowVolumeExpansion: map['allowVolumeExpansion'] == null ? null : map['allowVolumeExpansion']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      dataResilience: map['dataResilience'] == null ? null : map['dataResilience']! as String,
      failoverSpeed: map['failoverSpeed'] == null ? null : map['failoverSpeed']! as String,
      id: map['id'] as String,
      limitations: map['limitations'] == null ? null : (map['limitations']! as List).cast<String>(),
      mountOptions: map['mountOptions'] == null ? null : (map['mountOptions']! as List).cast<String>(),
      name: map['name'] as String,
      performance: map['performance'] == null ? null : map['performance']! as String,
      priority: map['priority'] == null ? null : map['priority']! as double,
      provisioner: map['provisioner'] == null ? null : map['provisioner']! as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      typeProperties: BlobStorageClassTypePropertiesResponse.fromMap((map['typeProperties'] as Map).cast<String, dynamic>()),
      volumeBindingMode: map['volumeBindingMode'] == null ? null : map['volumeBindingMode']! as String,
    );
  }
}

