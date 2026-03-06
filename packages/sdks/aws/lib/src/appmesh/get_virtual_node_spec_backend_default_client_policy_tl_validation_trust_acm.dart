// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm {
  final pulumi.Input<List<String>> certificateAuthorityArns;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm].
  /// [certificateAuthorityArns] Required.
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

