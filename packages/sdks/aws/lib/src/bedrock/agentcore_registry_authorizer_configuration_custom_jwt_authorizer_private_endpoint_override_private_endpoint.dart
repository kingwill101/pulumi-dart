// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_registry_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override_private_endpoint_managed_vpc_resource.dart';
import 'agentcore_registry_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override_private_endpoint_self_managed_lattice_resource.dart';

class AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint {
  /// Managed VPC resource configuration. See `managedVpcResource` below.
  final pulumi.Input<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource?>? managedVpcResource;
  /// Self-managed VPC Lattice resource configuration. See `selfManagedLatticeResource` below.
  final pulumi.Input<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource?>? selfManagedLatticeResource;

  /// Creates a new [AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint].
  /// [managedVpcResource] Managed VPC resource configuration. See `managedVpcResource` below.
  /// [selfManagedLatticeResource] Self-managed VPC Lattice resource configuration. See `selfManagedLatticeResource` below.
  const AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedVpcResource': ?pulumi.Input.mapOptionalInputValue<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource, Map<String, dynamic>>(managedVpcResource, (value) => value.toMap()),
      'selfManagedLatticeResource': ?pulumi.Input.mapOptionalInputValue<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource, Map<String, dynamic>>(selfManagedLatticeResource, (value) => value.toMap()),
    };
  }

  factory AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint(
      managedVpcResource: (() { final guardedValue = map['managedVpcResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfManagedLatticeResource: (() { final guardedValue = map['selfManagedLatticeResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
