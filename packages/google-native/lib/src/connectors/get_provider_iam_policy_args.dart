// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectors_v1_get_provider_iam_policy_args_doc}
/// Arguments for getProviderIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_get_provider_iam_policy_args_doc}
class GetProviderIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> providerId;

  /// Creates a new [GetProviderIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [providerId] Required.
  GetProviderIamPolicyArgs({
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String providerId,
  }) : location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       providerId = pulumi.Input.asInput<String>(providerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'providerId': providerId,
    };
  }

  factory GetProviderIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetProviderIamPolicyArgs(
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      providerId: map['providerId'] as String,
    );
  }
}
