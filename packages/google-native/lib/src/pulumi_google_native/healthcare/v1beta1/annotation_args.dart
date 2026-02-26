// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'annotation_source.dart';
import 'image_annotation.dart';
import 'resource_annotation.dart';
import 'sensitive_text_annotation.dart';

/// The set of arguments for Annotation.
class AnnotationArgs {
  /// Details of the source.
  final Input<AnnotationSource>? annotationSource;
  final Input<String> annotationStoreId;

  /// Additional information for this annotation record, such as annotator and verifier information or study campaign.
  final Input<Map<String, String>>? customData;
  final Input<String> datasetId;

  /// Annotations for images. For example, bounding polygons.
  final Input<ImageAnnotation>? imageAnnotation;
  final Input<String>? location;

  /// Resource name of the Annotation, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}/annotations/{annotation_id}`.
  final Input<String>? name;
  final Input<String>? project;

  /// Annotations for resource. For example, classification tags.
  final Input<ResourceAnnotation>? resourceAnnotation;

  /// Annotations for sensitive texts. For example, a range that describes the location of sensitive text.
  final Input<SensitiveTextAnnotation>? textAnnotation;

  AnnotationArgs({
    this.annotationSource,
    required this.annotationStoreId,
    this.customData,
    required this.datasetId,
    this.imageAnnotation,
    this.location,
    this.name,
    this.project,
    this.resourceAnnotation,
    this.textAnnotation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationSourceValue = annotationSource;
    if (annotationSourceValue != null) {
      map['annotationSource'] =
          Input.mapOptionalInputValue<AnnotationSource, Map<String, dynamic>>(
              annotationSourceValue, (value) => value.toMap());
    }
    map['annotationStoreId'] = annotationStoreId;
    final customDataValue = customData;
    if (customDataValue != null) {
      map['customData'] = customDataValue;
    }
    map['datasetId'] = datasetId;
    final imageAnnotationValue = imageAnnotation;
    if (imageAnnotationValue != null) {
      map['imageAnnotation'] =
          Input.mapOptionalInputValue<ImageAnnotation, Map<String, dynamic>>(
              imageAnnotationValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final resourceAnnotationValue = resourceAnnotation;
    if (resourceAnnotationValue != null) {
      map['resourceAnnotation'] =
          Input.mapOptionalInputValue<ResourceAnnotation, Map<String, dynamic>>(
              resourceAnnotationValue, (value) => value.toMap());
    }
    final textAnnotationValue = textAnnotation;
    if (textAnnotationValue != null) {
      map['textAnnotation'] = Input.mapOptionalInputValue<
          SensitiveTextAnnotation,
          Map<String, dynamic>>(textAnnotationValue, (value) => value.toMap());
    }
    return map;
  }

  factory AnnotationArgs.fromMap(Map<String, dynamic> map) {
    return AnnotationArgs(
      annotationSource:
          Input.asOptionalInput<AnnotationSource>(map['annotationSource']),
      annotationStoreId: Input.asInput<String>(map['annotationStoreId']),
      customData: Input.asOptionalInput<Map<String, String>>(map['customData']),
      datasetId: Input.asInput<String>(map['datasetId']),
      imageAnnotation:
          Input.asOptionalInput<ImageAnnotation>(map['imageAnnotation']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      resourceAnnotation:
          Input.asOptionalInput<ResourceAnnotation>(map['resourceAnnotation']),
      textAnnotation:
          Input.asOptionalInput<SensitiveTextAnnotation>(map['textAnnotation']),
    );
  }
}
