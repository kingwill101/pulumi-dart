// ignore_for_file: unused_element, unnecessary_cast

import 'subordinate_config_chain.dart';

/// Describes a subordinate CA's issuers. This is either a resource name to a known issuing CertificateAuthority, or a PEM issuer certificate chain.
class SubordinateConfig {
  /// This can refer to a CertificateAuthority that was used to create a subordinate CertificateAuthority. This field is used for information and usability purposes only. The resource name is in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  final String certificateAuthority;

  /// Contains the PEM certificate chain for the issuers of this CertificateAuthority, but not pem certificate for this CA itself.
  final SubordinateConfigChain pemIssuerChain;

  /// Creates a new [SubordinateConfig].
  /// [certificateAuthority] This can refer to a CertificateAuthority that was used to create a subordinate CertificateAuthority. This field is used for information and usability purposes only. The resource name is in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  /// [pemIssuerChain] Contains the PEM certificate chain for the issuers of this CertificateAuthority, but not pem certificate for this CA itself.
  SubordinateConfig({
    required this.certificateAuthority,
    required this.pemIssuerChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': certificateAuthority,
      'pemIssuerChain': pemIssuerChain.toMap(),
    };
  }

  factory SubordinateConfig.fromMap(Map<String, dynamic> map) {
    return SubordinateConfig(
      certificateAuthority: map['certificateAuthority'] as String,
      pemIssuerChain: SubordinateConfigChain.fromMap(
        (map['pemIssuerChain'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
