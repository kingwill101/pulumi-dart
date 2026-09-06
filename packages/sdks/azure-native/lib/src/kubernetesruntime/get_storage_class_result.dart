// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getStorageClass.
class GetStorageClassResult {
  /// The access mode: [ReadWriteOnce, ReadWriteMany] or [ReadWriteOnce]
  final List<String>? accessModes;
  /// Volume can be expanded or not
  final String? allowVolumeExpansion;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Allow single data node failure
  final String? dataResilience;
  /// Failover speed: NA, Slow, Fast
  final String? failoverSpeed;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Limitations of the storage class
  final List<String>? limitations;
  /// Additional mount options
  final List<String>? mountOptions;
  /// The name of the resource
  final String? name;
  /// Performance tier
  final String? performance;
  /// Selection priority when multiple storage classes meet the criteria. 0: Highest, -1: Never use
  final double? priority;
  /// Provisioner name
  final String? provisioner;
  /// Resource provision state
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Properties of the StorageClass
  final dynamic typeProperties;
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
  const GetStorageClassResult({
    this.accessModes,
    this.allowVolumeExpansion,
    this.azureApiVersion,
    this.dataResilience,
    this.failoverSpeed,
    this.id,
    this.limitations,
    this.mountOptions,
    this.name,
    this.performance,
    this.priority,
    this.provisioner,
    this.provisioningState,
    this.systemData,
    this.type,
    this.typeProperties,
    this.volumeBindingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessModes': ?accessModes,
      'allowVolumeExpansion': ?allowVolumeExpansion,
      'azureApiVersion': ?azureApiVersion,
      'dataResilience': ?dataResilience,
      'failoverSpeed': ?failoverSpeed,
      'id': ?id,
      'limitations': ?limitations,
      'mountOptions': ?mountOptions,
      'name': ?name,
      'performance': ?performance,
      'priority': ?priority,
      'provisioner': ?provisioner,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'typeProperties': ?typeProperties,
      'volumeBindingMode': ?volumeBindingMode,
    };
  }

  factory GetStorageClassResult.fromMap(Map<String, dynamic> map) {
    return GetStorageClassResult(
      accessModes: (() { final guardedValue = map['accessModes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      allowVolumeExpansion: (() { final guardedValue = map['allowVolumeExpansion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataResilience: (() { final guardedValue = map['dataResilience']; if (guardedValue == null) return null; return guardedValue as String; })(),
      failoverSpeed: (() { final guardedValue = map['failoverSpeed']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      limitations: (() { final guardedValue = map['limitations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      mountOptions: (() { final guardedValue = map['mountOptions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      performance: (() { final guardedValue = map['performance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      provisioner: (() { final guardedValue = map['provisioner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      typeProperties: (() { final guardedValue = map['typeProperties']; if (guardedValue == null) return null; return guardedValue; })(),
      volumeBindingMode: (() { final guardedValue = map['volumeBindingMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
