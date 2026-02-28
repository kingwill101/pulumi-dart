// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privateca_v1_get_ca_pool_iam_policy_args_doc}
/// Arguments for getCaPoolIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1_get_ca_pool_iam_policy_args_doc}
class GetCaPoolIamPolicyArgs {
  final pulumi.Input<String> caPoolId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCaPoolIamPolicyArgs].
  /// [caPoolId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetCaPoolIamPolicyArgs({
    required String caPoolId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) :
      caPoolId = pulumi.Input.asInput<String>(caPoolId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPoolId': caPoolId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetCaPoolIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetCaPoolIamPolicyArgs(
      caPoolId: map['caPoolId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

