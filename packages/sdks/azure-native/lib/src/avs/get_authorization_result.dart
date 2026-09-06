// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAuthorization.
class GetAuthorizationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The ID of the ExpressRoute Circuit Authorization
  final String? expressRouteAuthorizationId;
  /// The key of the ExpressRoute Circuit Authorization
  final String? expressRouteAuthorizationKey;
  /// The ID of the ExpressRoute Circuit
  final String? expressRouteId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The state of the ExpressRoute Circuit Authorization provisioning
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
    this.azureApiVersion,
    this.expressRouteAuthorizationId,
    this.expressRouteAuthorizationKey,
    this.expressRouteId,
    this.id,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'expressRouteAuthorizationId': ?expressRouteAuthorizationId,
      'expressRouteAuthorizationKey': ?expressRouteAuthorizationKey,
      'expressRouteId': ?expressRouteId,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetAuthorizationResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expressRouteAuthorizationId: (() { final guardedValue = map['expressRouteAuthorizationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expressRouteAuthorizationKey: (() { final guardedValue = map['expressRouteAuthorizationKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expressRouteId: (() { final guardedValue = map['expressRouteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
