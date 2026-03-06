// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getGlobalReachConnection.
class GetGlobalReachConnectionResult {
  /// The network used for global reach carved out from the original network block
  /// provided for the private cloud
  final String addressPrefix;
  /// Authorization key from the peer express route used for the global reach
  /// connection
  final String? authorizationKey;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The connection status of the global reach connection
  final String circuitConnectionStatus;
  /// The ID of the Private Cloud's ExpressRoute Circuit that is participating in the
  /// global reach connection
  final String? expressRouteId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Identifier of the ExpressRoute Circuit to peer with in the global reach
  /// connection
  final String? peerExpressRouteCircuit;
  /// The state of the  ExpressRoute Circuit Authorization provisioning
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetGlobalReachConnectionResult].
  /// [addressPrefix] The network used for global reach carved out from the original network block
  /// [authorizationKey] Authorization key from the peer express route used for the global reach
  /// [azureApiVersion] The Azure API version of the resource.
  /// [circuitConnectionStatus] The connection status of the global reach connection
  /// [expressRouteId] The ID of the Private Cloud's ExpressRoute Circuit that is participating in the
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [peerExpressRouteCircuit] Identifier of the ExpressRoute Circuit to peer with in the global reach
  /// [provisioningState] The state of the  ExpressRoute Circuit Authorization provisioning
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetGlobalReachConnectionResult({
    required this.addressPrefix,
    this.authorizationKey,
    required this.azureApiVersion,
    required this.circuitConnectionStatus,
    this.expressRouteId,
    required this.id,
    required this.name,
    this.peerExpressRouteCircuit,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': addressPrefix,
      'authorizationKey': ?authorizationKey,
      'azureApiVersion': azureApiVersion,
      'circuitConnectionStatus': circuitConnectionStatus,
      'expressRouteId': ?expressRouteId,
      'id': id,
      'name': name,
      'peerExpressRouteCircuit': ?peerExpressRouteCircuit,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetGlobalReachConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalReachConnectionResult(
      addressPrefix: map['addressPrefix'] as String,
      authorizationKey: (() { final guardedValue = map['authorizationKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      circuitConnectionStatus: map['circuitConnectionStatus'] as String,
      expressRouteId: (() { final guardedValue = map['expressRouteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      peerExpressRouteCircuit: (() { final guardedValue = map['peerExpressRouteCircuit']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

