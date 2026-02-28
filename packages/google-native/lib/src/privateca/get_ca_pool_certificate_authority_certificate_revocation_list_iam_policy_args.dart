// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privateca_v1_get_ca_pool_certificate_authority_certificate_revocation_list_iam_policy_args_doc}
/// Arguments for getCaPoolCertificateAuthorityCertificateRevocationListIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1_get_ca_pool_certificate_authority_certificate_revocation_list_iam_policy_args_doc}
class GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs {
  final pulumi.Input<String> caPoolId;
  final pulumi.Input<String> certificateAuthorityId;
  final pulumi.Input<String> certificateRevocationListId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs].
  /// [caPoolId] Required.
  /// [certificateAuthorityId] Required.
  /// [certificateRevocationListId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs({
    required String caPoolId,
    required String certificateAuthorityId,
    required String certificateRevocationListId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) :
      caPoolId = pulumi.Input.asInput<String>(caPoolId),
      certificateAuthorityId = pulumi.Input.asInput<String>(certificateAuthorityId),
      certificateRevocationListId = pulumi.Input.asInput<String>(certificateRevocationListId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPoolId': caPoolId,
      'certificateAuthorityId': certificateAuthorityId,
      'certificateRevocationListId': certificateRevocationListId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs(
      caPoolId: map['caPoolId'] as String,
      certificateAuthorityId: map['certificateAuthorityId'] as String,
      certificateRevocationListId: map['certificateRevocationListId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

