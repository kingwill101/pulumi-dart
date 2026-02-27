// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCaPoolCertificateAuthorityCertificateRevocationListIamPolicy.
class GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs {
  final pulumi.Input<String> caPoolId;
  final pulumi.Input<String> certificateAuthorityId;
  final pulumi.Input<String> certificateRevocationListId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

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
      caPoolId: pulumi.Input.asInput<String>(map['caPoolId']),
      certificateAuthorityId:
          pulumi.Input.asInput<String>(map['certificateAuthorityId']),
      certificateRevocationListId:
          pulumi.Input.asInput<String>(map['certificateRevocationListId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
