// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_application_domain_iam_policy_args_doc}
/// Arguments for getApplicationDomainIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_application_domain_iam_policy_args_doc}
class GetApplicationDomainIamPolicyArgs {
  final pulumi.Input<String> applicationDomainId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetApplicationDomainIamPolicyArgs].
  /// [applicationDomainId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetApplicationDomainIamPolicyArgs({
    required String applicationDomainId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : applicationDomainId = pulumi.Input.asInput<String>(applicationDomainId),
       location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationDomainId': applicationDomainId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetApplicationDomainIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationDomainIamPolicyArgs(
      applicationDomainId: map['applicationDomainId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
