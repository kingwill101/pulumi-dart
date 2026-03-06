// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getApplicationResource.
class GetApplicationResourceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// The Arm id of the application resource.
  final String resourceId;
  /// The kind of the application resource.
  final String? resourceKind;
  /// The type of the application resource.
  final String resourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetApplicationResourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [resourceId] The Arm id of the application resource.
  /// [resourceKind] The kind of the application resource.
  /// [resourceType] The type of the application resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetApplicationResourceResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.resourceId,
    this.resourceKind,
    required this.resourceType,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'resourceId': resourceId,
      'resourceKind': ?resourceKind,
      'resourceType': resourceType,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetApplicationResourceResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResourceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceId: map['resourceId'] as String,
      resourceKind: (() { final guardedValue = map['resourceKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceType: map['resourceType'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

