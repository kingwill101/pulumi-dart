// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_v1beta1_get_collection_iam_policy_args_doc}
/// Arguments for getCollectionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_get_collection_iam_policy_args_doc}
class GetCollectionIamPolicyArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCollectionIamPolicyArgs].
  /// [collectionId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetCollectionIamPolicyArgs({
    required String collectionId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : collectionId = pulumi.Input.asInput<String>(collectionId),
       location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetCollectionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetCollectionIamPolicyArgs(
      collectionId: map['collectionId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
