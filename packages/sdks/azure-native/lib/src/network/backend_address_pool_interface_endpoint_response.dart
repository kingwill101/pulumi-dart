// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_ipconfiguration_response.dart';
import 'sub_resource_response.dart';

/// Pool of backend IP addresses.
class BackendAddressPoolInterfaceEndpointResponse {
  /// Gets collection of references to IP addresses defined in network interfaces.
  final pulumi.Input<List<NetworkInterfaceIPConfigurationResponse>> backendIPConfigurations;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String?>? etag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Gets load balancing rules that use this backend address pool.
  final pulumi.Input<List<SubResourceResponse>> loadBalancingRules;
  /// Gets name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// Gets outbound rules that use this backend address pool.
  final pulumi.Input<SubResourceResponse> outboundRule;
  /// Gets outbound rules that use this backend address pool.
  final pulumi.Input<List<SubResourceResponse>> outboundRules;
  /// Get provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String?>? provisioningState;

  /// Creates a new [BackendAddressPoolInterfaceEndpointResponse].
  /// [backendIPConfigurations] Gets collection of references to IP addresses defined in network interfaces.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [loadBalancingRules] Gets load balancing rules that use this backend address pool.
  /// [name] Gets name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [outboundRule] Gets outbound rules that use this backend address pool.
  /// [outboundRules] Gets outbound rules that use this backend address pool.
  /// [provisioningState] Get provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  const BackendAddressPoolInterfaceEndpointResponse({
    required this.backendIPConfigurations,
    this.etag,
    this.id,
    required this.loadBalancingRules,
    this.name,
    required this.outboundRule,
    required this.outboundRules,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendIPConfigurations': pulumi.Input.mapInputValue<List<NetworkInterfaceIPConfigurationResponse>, List<Map<String, dynamic>>>(backendIPConfigurations, (value) => pulumi.Input.encodeList<NetworkInterfaceIPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'id': ?id,
      'loadBalancingRules': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(loadBalancingRules, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'outboundRule': pulumi.Input.mapInputValue<SubResourceResponse, Map<String, dynamic>>(outboundRule, (value) => value.toMap()),
      'outboundRules': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(outboundRules, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': ?provisioningState,
    };
  }

  factory BackendAddressPoolInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return BackendAddressPoolInterfaceEndpointResponse(
      backendIPConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceIPConfigurationResponse>(map['backendIPConfigurations']!, (value) => NetworkInterfaceIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancingRules: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['loadBalancingRules']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundRule: pulumi.Input.fromValue(SubResourceResponse.fromMap((map['outboundRule']! as Map).cast<String, dynamic>())),
      outboundRules: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['outboundRules']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
