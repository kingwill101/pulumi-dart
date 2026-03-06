// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAuthorization.
class GetAuthorizationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The ID of the ExpressRoute Circuit Authorization
  final String expressRouteAuthorizationId;
  /// The key of the ExpressRoute Circuit Authorization
  final String expressRouteAuthorizationKey;
  /// The ID of the ExpressRoute Circuit
  final String? expressRouteId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The state of the ExpressRoute Circuit Authorization provisioning
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAuthorizationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [expressRouteAuthorizationId] The ID of the ExpressRoute Circuit Authorization
  /// [expressRouteAuthorizationKey] The key of the ExpressRoute Circuit Authorization
  /// [expressRouteId] The ID of the ExpressRoute Circuit
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] The state of the ExpressRoute Circuit Authorization provisioning
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAuthorizationResult({
    required this.azureApiVersion,
    required this.expressRouteAuthorizationId,
    required this.expressRouteAuthorizationKey,
    this.expressRouteId,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'expressRouteAuthorizationId': expressRouteAuthorizationId,
      'expressRouteAuthorizationKey': expressRouteAuthorizationKey,
      'expressRouteId': ?expressRouteId,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetAuthorizationResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      expressRouteAuthorizationId: map['expressRouteAuthorizationId'] as String,
      expressRouteAuthorizationKey: map['expressRouteAuthorizationKey'] as String,
      expressRouteId: (() { final guardedValue = map['expressRouteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

