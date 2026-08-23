// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm {
  /// One or more ACM ARNs.
  final pulumi.Input<List<String>> certificateAuthorityArns;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm].
  /// [certificateAuthorityArns] One or more ACM ARNs.
  const GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm({
    required this.certificateAuthorityArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArns': certificateAuthorityArns,
    };
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm(
      certificateAuthorityArns: pulumi.Input.fromValue((map['certificateAuthorityArns'] as List).cast<String>()),
    );
  }
}
