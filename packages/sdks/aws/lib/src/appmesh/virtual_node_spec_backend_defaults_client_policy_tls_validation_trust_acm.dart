// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm {
  /// One or more ACM ARNs.
  final pulumi.Input<List<String>> certificateAuthorityArns;

  /// Creates a new [VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm].
  /// [certificateAuthorityArns] One or more ACM ARNs.
  const VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm({
    required this.certificateAuthorityArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArns': certificateAuthorityArns,
    };
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm(
      certificateAuthorityArns: pulumi.Input.fromValue((map['certificateAuthorityArns'] as List).cast<String>()),
    );
  }
}
