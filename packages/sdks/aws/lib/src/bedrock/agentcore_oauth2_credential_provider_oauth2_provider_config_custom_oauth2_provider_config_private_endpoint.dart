// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_private_endpoint_managed_vpc_resource.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_private_endpoint_self_managed_lattice_resource.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpoint {
  /// Service-managed VPC resource configuration. See `managedVpcResource` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointManagedVpcResource?>? managedVpcResource;
  /// Self-managed VPC Lattice resource configuration. See `selfManagedLatticeResource` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointSelfManagedLatticeResource?>? selfManagedLatticeResource;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpoint].
  /// [managedVpcResource] Service-managed VPC resource configuration. See `managedVpcResource` below.
  /// [selfManagedLatticeResource] Self-managed VPC Lattice resource configuration. See `selfManagedLatticeResource` below.
  const AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedVpcResource': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointManagedVpcResource, Map<String, dynamic>>(managedVpcResource, (value) => value.toMap()),
      'selfManagedLatticeResource': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointSelfManagedLatticeResource, Map<String, dynamic>>(selfManagedLatticeResource, (value) => value.toMap()),
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpoint(
      managedVpcResource: (() { final guardedValue = map['managedVpcResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointManagedVpcResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfManagedLatticeResource: (() { final guardedValue = map['selfManagedLatticeResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointSelfManagedLatticeResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
