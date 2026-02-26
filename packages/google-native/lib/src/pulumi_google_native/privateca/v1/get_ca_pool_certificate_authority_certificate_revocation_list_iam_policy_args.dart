// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCaPoolCertificateAuthorityCertificateRevocationListIamPolicy.
class GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs {
  final Input<String> caPoolId;
  final Input<String> certificateAuthorityId;
  final Input<String> certificateRevocationListId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs({
    required this.caPoolId,
    required this.certificateAuthorityId,
    required this.certificateRevocationListId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caPoolId'] = caPoolId;
    map['certificateAuthorityId'] = certificateAuthorityId;
    map['certificateRevocationListId'] = certificateRevocationListId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs(
      caPoolId: Input.asInput<String>(map['caPoolId']),
      certificateAuthorityId:
          Input.asInput<String>(map['certificateAuthorityId']),
      certificateRevocationListId:
          Input.asInput<String>(map['certificateRevocationListId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
