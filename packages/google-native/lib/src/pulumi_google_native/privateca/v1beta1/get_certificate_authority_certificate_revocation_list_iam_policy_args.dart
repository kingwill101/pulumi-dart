// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getCertificateAuthorityCertificateRevocationListIamPolicy.
class GetCertificateAuthorityCertificateRevocationListIamPolicyArgs {
  final Input<String> certificateAuthorityId;
  final Input<String> certificateRevocationListId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetCertificateAuthorityCertificateRevocationListIamPolicyArgs({
    required this.certificateAuthorityId,
    required this.certificateRevocationListId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory GetCertificateAuthorityCertificateRevocationListIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetCertificateAuthorityCertificateRevocationListIamPolicyArgs(
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
