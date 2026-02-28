// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_aspect_type_iam_policy_args_doc}
/// Arguments for getAspectTypeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_aspect_type_iam_policy_args_doc}
class GetAspectTypeIamPolicyArgs {
  final pulumi.Input<String> aspectTypeId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAspectTypeIamPolicyArgs].
  /// [aspectTypeId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetAspectTypeIamPolicyArgs({
    required String aspectTypeId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) :
      aspectTypeId = pulumi.Input.asInput<String>(aspectTypeId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspectTypeId': aspectTypeId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetAspectTypeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAspectTypeIamPolicyArgs(
      aspectTypeId: map['aspectTypeId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

