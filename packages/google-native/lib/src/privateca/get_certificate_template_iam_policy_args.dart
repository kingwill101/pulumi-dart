// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privateca_v1_get_certificate_template_iam_policy_args_doc}
/// Arguments for getCertificateTemplateIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1_get_certificate_template_iam_policy_args_doc}
class GetCertificateTemplateIamPolicyArgs {
  final pulumi.Input<String> certificateTemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateTemplateIamPolicyArgs].
  /// [certificateTemplateId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetCertificateTemplateIamPolicyArgs({
    required String certificateTemplateId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) :
      certificateTemplateId = pulumi.Input.asInput<String>(certificateTemplateId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateTemplateId': certificateTemplateId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetCertificateTemplateIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateTemplateIamPolicyArgs(
      certificateTemplateId: map['certificateTemplateId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

