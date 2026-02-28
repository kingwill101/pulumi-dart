// ignore_for_file: unused_element, unnecessary_cast

import 'authority_subordinate_config_pem_issuer_chain.dart';

class AuthoritySubordinateConfig {
  /// This can refer to a CertificateAuthority that was used to create a
  /// subordinate CertificateAuthority. This field is used for information
  /// and usability purposes only. The resource name is in the format
  /// `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  final String? certificateAuthority;

  /// Contains the PEM certificate chain for the issuers of this CertificateAuthority,
  /// but not pem certificate for this CA itself.
  /// Structure is documented below.
  final AuthoritySubordinateConfigPemIssuerChain? pemIssuerChain;

  /// Creates a new [AuthoritySubordinateConfig].
  /// [certificateAuthority] This can refer to a CertificateAuthority that was used to create a
  /// [pemIssuerChain] Contains the PEM certificate chain for the issuers of this CertificateAuthority,
  AuthoritySubordinateConfig({
    this.certificateAuthority,
    this.pemIssuerChain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateAuthorityValue = certificateAuthority;
    if (certificateAuthorityValue != null) {
      map['certificateAuthority'] = certificateAuthorityValue;
    }
    final pemIssuerChainValue = pemIssuerChain;
    if (pemIssuerChainValue != null) {
      map['pemIssuerChain'] = pemIssuerChainValue.toMap();
    }
    return map;
  }

  factory AuthoritySubordinateConfig.fromMap(Map<String, dynamic> map) {
    return AuthoritySubordinateConfig(
      certificateAuthority: map['certificateAuthority'] == null
          ? null
          : map['certificateAuthority'] as String,
      pemIssuerChain: map['pemIssuerChain'] == null
          ? null
          : AuthoritySubordinateConfigPemIssuerChain.fromMap(
              (map['pemIssuerChain'] as Map).cast<String, dynamic>()),
    );
  }
}
