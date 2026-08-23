// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_authorizer_configuration_custom_jwt_authorizer_private_endpoint_managed_vpc_resource.dart';
import 'agentcore_harness_authorizer_configuration_custom_jwt_authorizer_private_endpoint_self_managed_lattice_resource.dart';

class AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint {
  /// Managed VPC resource configuration. See `managedVpcResource` Block below.
  final pulumi.Input<AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource>? managedVpcResource;
  /// Self-managed VPC Lattice resource configuration. See `selfManagedLatticeResource` Block below.
  final pulumi.Input<AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource>? selfManagedLatticeResource;

  /// Creates a new [AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint].
  /// [managedVpcResource] Managed VPC resource configuration. See `managedVpcResource` Block below.
  /// [selfManagedLatticeResource] Self-managed VPC Lattice resource configuration. See `selfManagedLatticeResource` Block below.
  const AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedVpcResource': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource, Map<String, dynamic>>(managedVpcResource, (value) => value.toMap()),
      'selfManagedLatticeResource': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource, Map<String, dynamic>>(selfManagedLatticeResource, (value) => value.toMap()),
    };
  }

  factory AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint(
      managedVpcResource: (() { final guardedValue = map['managedVpcResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfManagedLatticeResource: (() { final guardedValue = map['selfManagedLatticeResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
