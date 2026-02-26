// ignore_for_file: unused_element, unnecessary_cast

import 'subordinate_config_chain_response.dart';

/// Describes a subordinate CA's issuers. This is either a resource name to a known issuing CertificateAuthority, or a PEM issuer certificate chain.
class SubordinateConfigResponse {
  /// This can refer to a CertificateAuthority that was used to create a subordinate CertificateAuthority. This field is used for information and usability purposes only. The resource name is in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  final String certificateAuthority;

  /// Contains the PEM certificate chain for the issuers of this CertificateAuthority, but not pem certificate for this CA itself.
  final SubordinateConfigChainResponse pemIssuerChain;

  SubordinateConfigResponse({
    required this.certificateAuthority,
    required this.pemIssuerChain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateAuthority'] = certificateAuthority;
    map['pemIssuerChain'] = pemIssuerChain.toMap();
    return map;
  }

  factory SubordinateConfigResponse.fromMap(Map<String, dynamic> map) {
    return SubordinateConfigResponse(
      certificateAuthority: map['certificateAuthority'] as String,
      pemIssuerChain: SubordinateConfigChainResponse.fromMap(
          (map['pemIssuerChain'] as Map).cast<String, dynamic>()),
    );
  }
}
