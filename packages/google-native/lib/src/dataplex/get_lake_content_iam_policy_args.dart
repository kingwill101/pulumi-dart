// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_lake_content_iam_policy_args_doc}
/// Arguments for getLakeContentIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_lake_content_iam_policy_args_doc}
class GetLakeContentIamPolicyArgs {
  final pulumi.Input<String> contentId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLakeContentIamPolicyArgs].
  /// [contentId] Required.
  /// [lakeId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetLakeContentIamPolicyArgs({
    required String contentId,
    required String lakeId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) :
      contentId = pulumi.Input.asInput<String>(contentId),
      lakeId = pulumi.Input.asInput<String>(lakeId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentId': contentId,
      'lakeId': lakeId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetLakeContentIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetLakeContentIamPolicyArgs(
      contentId: map['contentId'] as String,
      lakeId: map['lakeId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

