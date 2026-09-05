// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_private_endpoint_managed_vpc_resource.dart';
import 'agentcore_gateway_target_private_endpoint_self_managed_lattice_resource.dart';

class AgentcoreGatewayTargetPrivateEndpoint {
  /// AWS creates and manages the VPC Lattice resource gateway and resource configuration on your behalf using a service-linked role. See `managedVpcResource` below.
  final pulumi.Input<AgentcoreGatewayTargetPrivateEndpointManagedVpcResource?>? managedVpcResource;
  /// Use an existing VPC Lattice resource configuration that you manage yourself. Useful for cross-account setups or advanced Lattice configurations. See `selfManagedLatticeResource` below.
  final pulumi.Input<AgentcoreGatewayTargetPrivateEndpointSelfManagedLatticeResource?>? selfManagedLatticeResource;

  /// Creates a new [AgentcoreGatewayTargetPrivateEndpoint].
  /// [managedVpcResource] AWS creates and manages the VPC Lattice resource gateway and resource configuration on your behalf using a service-linked role. See `managedVpcResource` below.
  /// [selfManagedLatticeResource] Use an existing VPC Lattice resource configuration that you manage yourself. Useful for cross-account setups or advanced Lattice configurations. See `selfManagedLatticeResource` below.
  const AgentcoreGatewayTargetPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedVpcResource': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetPrivateEndpointManagedVpcResource, Map<String, dynamic>>(managedVpcResource, (value) => value.toMap()),
      'selfManagedLatticeResource': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetPrivateEndpointSelfManagedLatticeResource, Map<String, dynamic>>(selfManagedLatticeResource, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetPrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetPrivateEndpoint(
      managedVpcResource: (() { final guardedValue = map['managedVpcResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetPrivateEndpointManagedVpcResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfManagedLatticeResource: (() { final guardedValue = map['selfManagedLatticeResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetPrivateEndpointSelfManagedLatticeResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
