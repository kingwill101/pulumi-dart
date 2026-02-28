// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1alpha1_get_internal_range_iam_policy_args_doc}
/// Arguments for getInternalRangeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1alpha1_get_internal_range_iam_policy_args_doc}
class GetInternalRangeIamPolicyArgs {
  final pulumi.Input<String> internalRangeId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInternalRangeIamPolicyArgs].
  /// [internalRangeId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetInternalRangeIamPolicyArgs({
    required String internalRangeId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) :
      internalRangeId = pulumi.Input.asInput<String>(internalRangeId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalRangeId': internalRangeId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetInternalRangeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetInternalRangeIamPolicyArgs(
      internalRangeId: map['internalRangeId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

