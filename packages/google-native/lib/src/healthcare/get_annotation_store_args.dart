// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_annotation_store_args_doc}
/// Arguments for getAnnotationStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_annotation_store_args_doc}
class GetAnnotationStoreArgs {
  final pulumi.Input<String> annotationStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAnnotationStoreArgs].
  /// [annotationStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAnnotationStoreArgs({
    required String annotationStoreId,
    required String datasetId,
    required String location,
    String? project,
  }) :
      annotationStoreId = pulumi.Input.asInput<String>(annotationStoreId),
      datasetId = pulumi.Input.asInput<String>(datasetId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationStoreId': annotationStoreId,
      'datasetId': datasetId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAnnotationStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetAnnotationStoreArgs(
      annotationStoreId: map['annotationStoreId'] as String,
      datasetId: map['datasetId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

