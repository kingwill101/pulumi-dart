// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_dataset_annotation_store_iam_policy_args_doc}
/// Arguments for getDatasetAnnotationStoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_dataset_annotation_store_iam_policy_args_doc}
class GetDatasetAnnotationStoreIamPolicyArgs {
  final pulumi.Input<String> annotationStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatasetAnnotationStoreIamPolicyArgs].
  /// [annotationStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDatasetAnnotationStoreIamPolicyArgs({
    required String annotationStoreId,
    required String datasetId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) :
      annotationStoreId = pulumi.Input.asInput<String>(annotationStoreId),
      datasetId = pulumi.Input.asInput<String>(datasetId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationStoreId': annotationStoreId,
      'datasetId': datasetId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetDatasetAnnotationStoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetAnnotationStoreIamPolicyArgs(
      annotationStoreId: map['annotationStoreId'] as String,
      datasetId: map['datasetId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

