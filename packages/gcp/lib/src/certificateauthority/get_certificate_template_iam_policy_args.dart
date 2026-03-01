// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificateauthority_get_certificate_template_iam_policy_get_certificate_template_iam_policy_args_doc}
/// Arguments for getCertificateTemplateIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_certificateauthority_get_certificate_template_iam_policy_get_certificate_template_iam_policy_args_doc}
class GetCertificateTemplateIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> certificateTemplate;

  /// The location for the resource Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateTemplateIamPolicyArgs].
  /// [certificateTemplate] Used to find the parent resource to bind the IAM policy to
  /// [location] The location for the resource Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  GetCertificateTemplateIamPolicyArgs({
    required String certificateTemplate,
    String? location,
    String? project,
  }) : certificateTemplate = pulumi.Input.asInput<String>(certificateTemplate),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateTemplate': certificateTemplate,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetCertificateTemplateIamPolicyArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCertificateTemplateIamPolicyArgs(
      certificateTemplate: map['certificateTemplate'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
