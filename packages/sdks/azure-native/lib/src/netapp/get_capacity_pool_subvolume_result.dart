// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCapacityPoolSubvolume.
class GetCapacityPoolSubvolumeResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// parent path to the subvolume
  final String? parentPath;
  /// Path to the subvolume
  final String? path;
  /// Azure lifecycle management
  final String? provisioningState;
  /// Truncate subvolume to the provided size in bytes
  final double? size;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetCapacityPoolSubvolumeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [parentPath] parent path to the subvolume
  /// [path] Path to the subvolume
  /// [provisioningState] Azure lifecycle management
  /// [size] Truncate subvolume to the provided size in bytes
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetCapacityPoolSubvolumeResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.parentPath,
    this.path,
    this.provisioningState,
    this.size,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'parentPath': ?parentPath,
      'path': ?path,
      'provisioningState': ?provisioningState,
      'size': ?size,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetCapacityPoolSubvolumeResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolSubvolumeResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentPath: (() { final guardedValue = map['parentPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
