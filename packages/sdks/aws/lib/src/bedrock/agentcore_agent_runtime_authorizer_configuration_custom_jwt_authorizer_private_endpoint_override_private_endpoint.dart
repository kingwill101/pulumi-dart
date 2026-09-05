// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_agent_runtime_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override_private_endpoint_managed_vpc_resource.dart';
import 'agentcore_agent_runtime_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override_private_endpoint_self_managed_lattice_resource.dart';

class AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint {
  /// Managed VPC resource configuration. See `managedVpcResource` below.
  final pulumi.Input<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource?>? managedVpcResource;
  /// Self-managed VPC Lattice resource configuration. See `selfManagedLatticeResource` below.
  final pulumi.Input<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource?>? selfManagedLatticeResource;

  /// Creates a new [AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint].
  /// [managedVpcResource] Managed VPC resource configuration. See `managedVpcResource` below.
  /// [selfManagedLatticeResource] Self-managed VPC Lattice resource configuration. See `selfManagedLatticeResource` below.
  const AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedVpcResource': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource, Map<String, dynamic>>(managedVpcResource, (value) => value.toMap()),
      'selfManagedLatticeResource': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource, Map<String, dynamic>>(selfManagedLatticeResource, (value) => value.toMap()),
    };
  }

  factory AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint(
      managedVpcResource: (() { final guardedValue = map['managedVpcResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfManagedLatticeResource: (() { final guardedValue = map['selfManagedLatticeResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
