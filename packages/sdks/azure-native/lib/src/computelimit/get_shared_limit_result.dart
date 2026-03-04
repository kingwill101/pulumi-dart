// ignore_for_file: unused_element, unnecessary_cast

import 'limit_name_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSharedLimit.
class GetSharedLimitResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The maximum permitted usage of the resource.
  final int limit;

  /// The name of the resource
  final String name;

  /// The provisioning state of the resource.
  final String provisioningState;

  /// The limit name properties.
  final LimitNameResponse resourceName;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// The quota units, such as Count.
  final String unit;

  /// Creates a new [GetSharedLimitResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [limit] The maximum permitted usage of the resource.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the resource.
  /// [resourceName] The limit name properties.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [unit] The quota units, such as Count.
  GetSharedLimitResult({
    required this.azureApiVersion,
    required this.id,
    required this.limit,
    required this.name,
    required this.provisioningState,
    required this.resourceName,
    required this.systemData,
    required this.type,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'limit': limit,
      'name': name,
      'provisioningState': provisioningState,
      'resourceName': resourceName.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
      'unit': unit,
    };
  }

  factory GetSharedLimitResult.fromMap(Map<String, dynamic> map) {
    return GetSharedLimitResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      limit: map['limit'] as int,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceName: LimitNameResponse.fromMap(
        (map['resourceName']! as Map).cast<String, dynamic>(),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
      unit: map['unit'] as String,
    );
  }
}
