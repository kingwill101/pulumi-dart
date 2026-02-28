// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privateca_v1beta1_get_certificate_authority_certificate_revocation_list_iam_policy_args_doc}
/// Arguments for getCertificateAuthorityCertificateRevocationListIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1beta1_get_certificate_authority_certificate_revocation_list_iam_policy_args_doc}
class GetCertificateAuthorityCertificateRevocationListIamPolicyArgs {
  final pulumi.Input<String> certificateAuthorityId;
  final pulumi.Input<String> certificateRevocationListId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateAuthorityCertificateRevocationListIamPolicyArgs].
  /// [certificateAuthorityId] Required.
  /// [certificateRevocationListId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetCertificateAuthorityCertificateRevocationListIamPolicyArgs({
    required String certificateAuthorityId,
    required String certificateRevocationListId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : certificateAuthorityId =
            pulumi.Input.asInput<String>(certificateAuthorityId),
        certificateRevocationListId =
            pulumi.Input.asInput<String>(certificateRevocationListId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      certificateAuthorityId: map['certificateAuthorityId'] as String,
      certificateRevocationListId: map['certificateRevocationListId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
