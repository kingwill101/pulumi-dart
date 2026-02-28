// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_domains_v1beta1_get_registration_iam_policy_domains_v1beta1_args_doc}
/// Arguments for getRegistrationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_domains_v1beta1_get_registration_iam_policy_domains_v1beta1_args_doc}
class GetRegistrationIamPolicyDomainsV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registrationId;

  /// Creates a new [GetRegistrationIamPolicyDomainsV1beta1Args].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [registrationId] Required.
  GetRegistrationIamPolicyDomainsV1beta1Args({
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String registrationId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      registrationId = pulumi.Input.asInput<String>(registrationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'registrationId': registrationId,
    };
  }

  factory GetRegistrationIamPolicyDomainsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetRegistrationIamPolicyDomainsV1beta1Args(
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      registrationId: map['registrationId'] as String,
    );
  }
}

