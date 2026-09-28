// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointSelfManagedLatticeResource {
  /// Identifier of the VPC Lattice resource configuration.
  final pulumi.Input<String?>? resourceConfigurationIdentifier;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointSelfManagedLatticeResource].
  /// [resourceConfigurationIdentifier] Identifier of the VPC Lattice resource configuration.
  const AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceConfigurationIdentifier': ?resourceConfigurationIdentifier,
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointSelfManagedLatticeResource.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointSelfManagedLatticeResource(
      resourceConfigurationIdentifier: (() { final guardedValue = map['resourceConfigurationIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
