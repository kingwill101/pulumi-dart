// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getLoadBalancer.
class GetLoadBalancerResult {
  /// IP Range
  final List<String>? addresses;
  /// Advertise Mode
  final String? advertiseMode;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The list of BGP peers it should advertise to. Null or empty means to advertise to all peers.
  final List<String>? bgpPeers;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Resource provision state
  final String? provisioningState;
  /// A dynamic label mapping to select related services. For instance, if you want to create a load balancer only for services with label "a=b", then please specify {"a": "b"} in the field.
  final Map<String, String>? serviceSelector;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetLoadBalancerResult].
  /// [addresses] IP Range
  /// [advertiseMode] Advertise Mode
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bgpPeers] The list of BGP peers it should advertise to. Null or empty means to advertise to all peers.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] Resource provision state
  /// [serviceSelector] A dynamic label mapping to select related services. For instance, if you want to create a load balancer only for services with label "a=b", then please specify {"a": "b"} in the field.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetLoadBalancerResult({
    this.addresses,
    this.advertiseMode,
    this.azureApiVersion,
    this.bgpPeers,
    this.id,
    this.name,
    this.provisioningState,
    this.serviceSelector,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'advertiseMode': ?advertiseMode,
      'azureApiVersion': ?azureApiVersion,
      'bgpPeers': ?bgpPeers,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'serviceSelector': ?serviceSelector,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetLoadBalancerResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerResult(
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      advertiseMode: (() { final guardedValue = map['advertiseMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bgpPeers: (() { final guardedValue = map['bgpPeers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceSelector: (() { final guardedValue = map['serviceSelector']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
