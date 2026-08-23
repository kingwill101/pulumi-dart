// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override_private_endpoint_managed_vpc_resource.dart';
import 'agentcore_gateway_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override_private_endpoint_self_managed_lattice_resource.dart';

class AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint {
  /// Managed VPC resource configuration. See `managedVpcResource` below.
  final pulumi.Input<AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource>? managedVpcResource;
  /// Self-managed VPC Lattice resource configuration. See `selfManagedLatticeResource` below.
  final pulumi.Input<AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource>? selfManagedLatticeResource;

  /// Creates a new [AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint].
  /// [managedVpcResource] Managed VPC resource configuration. See `managedVpcResource` below.
  /// [selfManagedLatticeResource] Self-managed VPC Lattice resource configuration. See `selfManagedLatticeResource` below.
  const AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedVpcResource': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource, Map<String, dynamic>>(managedVpcResource, (value) => value.toMap()),
      'selfManagedLatticeResource': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource, Map<String, dynamic>>(selfManagedLatticeResource, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint(
      managedVpcResource: (() { final guardedValue = map['managedVpcResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfManagedLatticeResource: (() { final guardedValue = map['selfManagedLatticeResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
