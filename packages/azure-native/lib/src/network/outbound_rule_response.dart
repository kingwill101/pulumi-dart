// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Outbound rule of the load balancer.
class OutboundRuleResponse {
  /// The number of outbound ports to be used for NAT.
  final int? allocatedOutboundPorts;
  /// A reference to a pool of DIPs. Outbound traffic is randomly load balanced across IPs in the backend IPs.
  final SubResourceResponse backendAddressPool;
  /// Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  final bool? enableTcpReset;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The Frontend IP addresses of the load balancer.
  final List<SubResourceResponse> frontendIPConfigurations;
  /// Resource ID.
  final String? id;
  /// The timeout for the TCP idle connection.
  final int? idleTimeoutInMinutes;
  /// The name of the resource that is unique within the set of outbound rules used by the load balancer. This name can be used to access the resource.
  final String? name;
  /// The protocol for the outbound rule in load balancer.
  final String protocol;
  /// The provisioning state of the outbound rule resource.
  final String provisioningState;
  /// Type of the resource.
  final String type;

  /// Creates a new [OutboundRuleResponse].
  /// [allocatedOutboundPorts] The number of outbound ports to be used for NAT.
  /// [backendAddressPool] A reference to a pool of DIPs. Outbound traffic is randomly load balanced across IPs in the backend IPs.
  /// [enableTcpReset] Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [frontendIPConfigurations] The Frontend IP addresses of the load balancer.
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The timeout for the TCP idle connection.
  /// [name] The name of the resource that is unique within the set of outbound rules used by the load balancer. This name can be used to access the resource.
  /// [protocol] The protocol for the outbound rule in load balancer.
  /// [provisioningState] The provisioning state of the outbound rule resource.
  /// [type] Type of the resource.
  OutboundRuleResponse({
    this.allocatedOutboundPorts,
    required this.backendAddressPool,
    this.enableTcpReset,
    required this.etag,
    required this.frontendIPConfigurations,
    this.id,
    this.idleTimeoutInMinutes,
    this.name,
    required this.protocol,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedOutboundPorts': ?allocatedOutboundPorts,
      'backendAddressPool': backendAddressPool.toMap(),
      'enableTcpReset': ?enableTcpReset,
      'etag': etag,
      'frontendIPConfigurations': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(frontendIPConfigurations, (value) => value.toMap()),
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'name': ?name,
      'protocol': protocol,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory OutboundRuleResponse.fromMap(Map<String, dynamic> map) {
    return OutboundRuleResponse(
      allocatedOutboundPorts: map['allocatedOutboundPorts'] == null ? null : map['allocatedOutboundPorts'] as int,
      backendAddressPool: SubResourceResponse.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>()),
      enableTcpReset: map['enableTcpReset'] == null ? null : map['enableTcpReset'] as bool,
      etag: map['etag'] as String,
      frontendIPConfigurations: pulumi.Input.decodeList<SubResourceResponse>(map['frontendIPConfigurations'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

