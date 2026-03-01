// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'annotation_source.dart';
import 'image_annotation.dart';
import 'resource_annotation.dart';
import 'sensitive_text_annotation.dart';

/// {@template pulumi_healthcare_v1beta1_annotation_args_doc}
/// The set of arguments for Annotation.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_annotation_args_doc}
class AnnotationArgs {
  /// Details of the source.
  final pulumi.Input<AnnotationSource>? annotationSource;
  final pulumi.Input<String> annotationStoreId;

  /// Additional information for this annotation record, such as annotator and verifier information or study campaign.
  final pulumi.Input<Map<String, String>>? customData;
  final pulumi.Input<String> datasetId;

  /// Annotations for images. For example, bounding polygons.
  final pulumi.Input<ImageAnnotation>? imageAnnotation;
  final pulumi.Input<String>? location;

  /// Resource name of the Annotation, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}/annotations/{annotation_id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Annotations for resource. For example, classification tags.
  final pulumi.Input<ResourceAnnotation>? resourceAnnotation;

  /// Annotations for sensitive texts. For example, a range that describes the location of sensitive text.
  final pulumi.Input<SensitiveTextAnnotation>? textAnnotation;

  /// Creates a new [AnnotationArgs].
  /// [annotationSource] Details of the source.
  /// [annotationStoreId] Required.
  /// [customData] Additional information for this annotation record, such as annotator and verifier information or study campaign.
  /// [datasetId] Required.
  /// [imageAnnotation] Annotations for images. For example, bounding polygons.
  /// [location] Optional.
  /// [name] Resource name of the Annotation, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}/annotations/{annotation_id}`.
  /// [project] Optional.
  /// [resourceAnnotation] Annotations for resource. For example, classification tags.
  /// [textAnnotation] Annotations for sensitive texts. For example, a range that describes the location of sensitive text.
  AnnotationArgs({
    AnnotationSource? annotationSource,
    required String annotationStoreId,
    Map<String, String>? customData,
    required String datasetId,
    ImageAnnotation? imageAnnotation,
    String? location,
    String? name,
    String? project,
    ResourceAnnotation? resourceAnnotation,
    SensitiveTextAnnotation? textAnnotation,
  }) : annotationSource = pulumi.Input.asOptionalInput<AnnotationSource>(
         annotationSource,
       ),
       annotationStoreId = pulumi.Input.asInput<String>(annotationStoreId),
       customData = pulumi.Input.asOptionalInput<Map<String, String>>(
         customData,
       ),
       datasetId = pulumi.Input.asInput<String>(datasetId),
       imageAnnotation = pulumi.Input.asOptionalInput<ImageAnnotation>(
         imageAnnotation,
       ),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       resourceAnnotation = pulumi.Input.asOptionalInput<ResourceAnnotation>(
         resourceAnnotation,
       ),
       textAnnotation = pulumi.Input.asOptionalInput<SensitiveTextAnnotation>(
         textAnnotation,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationSource':
          ?pulumi.Input.mapOptionalInputValue<
            AnnotationSource,
            Map<String, dynamic>
          >(annotationSource, (value) => value.toMap()),
      'annotationStoreId': annotationStoreId,
      'customData': ?customData,
      'datasetId': datasetId,
      'imageAnnotation':
          ?pulumi.Input.mapOptionalInputValue<
            ImageAnnotation,
            Map<String, dynamic>
          >(imageAnnotation, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'resourceAnnotation':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceAnnotation,
            Map<String, dynamic>
          >(resourceAnnotation, (value) => value.toMap()),
      'textAnnotation':
          ?pulumi.Input.mapOptionalInputValue<
            SensitiveTextAnnotation,
            Map<String, dynamic>
          >(textAnnotation, (value) => value.toMap()),
    };
  }

  factory AnnotationArgs.fromMap(Map<String, dynamic> map) {
    return AnnotationArgs(
      annotationSource: map['annotationSource'] == null
          ? null
          : AnnotationSource.fromMap(
              (map['annotationSource'] as Map).cast<String, dynamic>(),
            ),
      annotationStoreId: map['annotationStoreId'] as String,
      customData: map['customData'] == null
          ? null
          : (map['customData'] as Map).cast<String, String>(),
      datasetId: map['datasetId'] as String,
      imageAnnotation: map['imageAnnotation'] == null
          ? null
          : ImageAnnotation.fromMap(
              (map['imageAnnotation'] as Map).cast<String, dynamic>(),
            ),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      resourceAnnotation: map['resourceAnnotation'] == null
          ? null
          : ResourceAnnotation.fromMap(
              (map['resourceAnnotation'] as Map).cast<String, dynamic>(),
            ),
      textAnnotation: map['textAnnotation'] == null
          ? null
          : SensitiveTextAnnotation.fromMap(
              (map['textAnnotation'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
