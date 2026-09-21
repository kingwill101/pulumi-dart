// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource {
  /// Identifier of the VPC Lattice resource configuration.
  final pulumi.Input<String?>? resourceConfigurationIdentifier;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource].
  /// [resourceConfigurationIdentifier] Identifier of the VPC Lattice resource configuration.
  const AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceConfigurationIdentifier': ?resourceConfigurationIdentifier,
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource(
      resourceConfigurationIdentifier: (() { final guardedValue = map['resourceConfigurationIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
