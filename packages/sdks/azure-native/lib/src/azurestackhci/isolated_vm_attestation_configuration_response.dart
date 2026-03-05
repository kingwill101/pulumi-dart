// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Attestation configurations for isolated VM (e.g. TVM, CVM) of the cluster.
class IsolatedVmAttestationConfigurationResponse {
  /// Fully qualified Azure resource id of the Microsoft Azure attestation resource associated with this cluster.
  final pulumi.Input<String> attestationResourceId;
  /// Region specific endpoint for Microsoft Azure Attestation service for the cluster
  final pulumi.Input<String> attestationServiceEndpoint;
  /// Region specific endpoint for relying party service.
  final pulumi.Input<String> relyingPartyServiceEndpoint;

  /// Creates a new [IsolatedVmAttestationConfigurationResponse].
  /// [attestationResourceId] Fully qualified Azure resource id of the Microsoft Azure attestation resource associated with this cluster.
  /// [attestationServiceEndpoint] Region specific endpoint for Microsoft Azure Attestation service for the cluster
  /// [relyingPartyServiceEndpoint] Region specific endpoint for relying party service.
  IsolatedVmAttestationConfigurationResponse({
    required this.attestationResourceId,
    required this.attestationServiceEndpoint,
    required this.relyingPartyServiceEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationResourceId': attestationResourceId,
      'attestationServiceEndpoint': attestationServiceEndpoint,
      'relyingPartyServiceEndpoint': relyingPartyServiceEndpoint,
    };
  }

  factory IsolatedVmAttestationConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return IsolatedVmAttestationConfigurationResponse(
      attestationResourceId: pulumi.Input.fromValue(map['attestationResourceId'] as String),
      attestationServiceEndpoint: pulumi.Input.fromValue(map['attestationServiceEndpoint'] as String),
      relyingPartyServiceEndpoint: pulumi.Input.fromValue(map['relyingPartyServiceEndpoint'] as String),
    );
  }
}

