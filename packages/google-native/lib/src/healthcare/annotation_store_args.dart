// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_annotation_store_args_doc}
/// The set of arguments for AnnotationStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_annotation_store_args_doc}
class AnnotationStoreArgs {
  /// The ID of the Annotation store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  final pulumi.Input<String>? annotationStoreId;
  final pulumi.Input<String> datasetId;
  /// Optional. User-supplied key-value pairs used to organize Annotation stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Resource name of the Annotation store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [AnnotationStoreArgs].
  /// [annotationStoreId] The ID of the Annotation store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  /// [datasetId] Required.
  /// [labels] Optional. User-supplied key-value pairs used to organize Annotation stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  /// [location] Optional.
  /// [name] Resource name of the Annotation store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}`.
  /// [project] Optional.
  AnnotationStoreArgs({
    String? annotationStoreId,
    required String datasetId,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
  }) :
      annotationStoreId = pulumi.Input.asOptionalInput<String>(annotationStoreId),
      datasetId = pulumi.Input.asInput<String>(datasetId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationStoreId': ?annotationStoreId,
      'datasetId': datasetId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory AnnotationStoreArgs.fromMap(Map<String, dynamic> map) {
    return AnnotationStoreArgs(
      annotationStoreId: map['annotationStoreId'] == null ? null : map['annotationStoreId'] as String,
      datasetId: map['datasetId'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

