// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_lake_contentitem_iam_policy_args_doc}
/// Arguments for getLakeContentitemIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_lake_contentitem_iam_policy_args_doc}
class GetLakeContentitemIamPolicyArgs {
  final pulumi.Input<String> contentitemId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLakeContentitemIamPolicyArgs].
  /// [contentitemId] Required.
  /// [lakeId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetLakeContentitemIamPolicyArgs({
    required String contentitemId,
    required String lakeId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) :
      contentitemId = pulumi.Input.asInput<String>(contentitemId),
      lakeId = pulumi.Input.asInput<String>(lakeId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentitemId': contentitemId,
      'lakeId': lakeId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetLakeContentitemIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetLakeContentitemIamPolicyArgs(
      contentitemId: map['contentitemId'] as String,
      lakeId: map['lakeId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

