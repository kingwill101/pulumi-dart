// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'annotation_source.dart';
import 'image_annotation.dart';
import 'resource_annotation.dart';
import 'sensitive_text_annotation.dart';

/// The set of arguments for Annotation.
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
      map['annotationSource'] = pulumi.Input.mapOptionalInputValue<
              AnnotationSource, Map<String, dynamic>>(
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
      map['imageAnnotation'] = pulumi.Input.mapOptionalInputValue<
          ImageAnnotation,
          Map<String, dynamic>>(imageAnnotationValue, (value) => value.toMap());
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
      map['resourceAnnotation'] = pulumi.Input.mapOptionalInputValue<
              ResourceAnnotation, Map<String, dynamic>>(
          resourceAnnotationValue, (value) => value.toMap());
    }
    final textAnnotationValue = textAnnotation;
    if (textAnnotationValue != null) {
      map['textAnnotation'] = pulumi.Input.mapOptionalInputValue<
          SensitiveTextAnnotation,
          Map<String, dynamic>>(textAnnotationValue, (value) => value.toMap());
    }
    return map;
  }

  factory AnnotationArgs.fromMap(Map<String, dynamic> map) {
    return AnnotationArgs(
      annotationSource: pulumi.Input.asOptionalInput<AnnotationSource>(
          map['annotationSource']),
      annotationStoreId: pulumi.Input.asInput<String>(map['annotationStoreId']),
      customData:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['customData']),
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      imageAnnotation:
          pulumi.Input.asOptionalInput<ImageAnnotation>(map['imageAnnotation']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resourceAnnotation: pulumi.Input.asOptionalInput<ResourceAnnotation>(
          map['resourceAnnotation']),
      textAnnotation: pulumi.Input.asOptionalInput<SensitiveTextAnnotation>(
          map['textAnnotation']),
    );
  }
}
