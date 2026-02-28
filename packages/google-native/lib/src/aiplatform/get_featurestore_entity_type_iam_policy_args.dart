// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_featurestore_entity_type_iam_policy_args_doc}
/// Arguments for getFeaturestoreEntityTypeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_featurestore_entity_type_iam_policy_args_doc}
class GetFeaturestoreEntityTypeIamPolicyArgs {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeaturestoreEntityTypeIamPolicyArgs].
  /// [entityTypeId] Required.
  /// [featurestoreId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetFeaturestoreEntityTypeIamPolicyArgs({
    required String entityTypeId,
    required String featurestoreId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) :
      entityTypeId = pulumi.Input.asInput<String>(entityTypeId),
      featurestoreId = pulumi.Input.asInput<String>(featurestoreId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityTypeId': entityTypeId,
      'featurestoreId': featurestoreId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetFeaturestoreEntityTypeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFeaturestoreEntityTypeIamPolicyArgs(
      entityTypeId: map['entityTypeId'] as String,
      featurestoreId: map['featurestoreId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

