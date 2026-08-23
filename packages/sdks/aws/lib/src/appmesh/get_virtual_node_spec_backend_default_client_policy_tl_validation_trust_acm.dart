// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm {
  /// One or more ACM ARNs.
  final pulumi.Input<List<String>> certificateAuthorityArns;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm].
  /// [certificateAuthorityArns] One or more ACM ARNs.
  const GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm({
    required this.certificateAuthorityArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArns': certificateAuthorityArns,
    };
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm(
      certificateAuthorityArns: pulumi.Input.fromValue((map['certificateAuthorityArns'] as List).cast<String>()),
    );
  }
}
