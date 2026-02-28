// ignore_for_file: unused_element, unnecessary_cast

import 'annotation_source_response.dart';
import 'image_annotation_response.dart';
import 'resource_annotation_response.dart';
import 'sensitive_text_annotation_response.dart';

/// Result data returned by getAnnotation.
class GetAnnotationResult {
  /// Details of the source.
  final AnnotationSourceResponse annotationSource;

  /// Additional information for this annotation record, such as annotator and verifier information or study campaign.
  final Map<String, String> customData;

  /// Annotations for images. For example, bounding polygons.
  final ImageAnnotationResponse imageAnnotation;

  /// Resource name of the Annotation, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}/annotations/{annotation_id}`.
  final String name;

  /// Annotations for resource. For example, classification tags.
  final ResourceAnnotationResponse resourceAnnotation;

  /// Annotations for sensitive texts. For example, a range that describes the location of sensitive text.
  final SensitiveTextAnnotationResponse textAnnotation;

  /// Creates a new [GetAnnotationResult].
  /// [annotationSource] Details of the source.
  /// [customData] Additional information for this annotation record, such as annotator and verifier information or study campaign.
  /// [imageAnnotation] Annotations for images. For example, bounding polygons.
  /// [name] Resource name of the Annotation, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}/annotations/{annotation_id}`.
  /// [resourceAnnotation] Annotations for resource. For example, classification tags.
  /// [textAnnotation] Annotations for sensitive texts. For example, a range that describes the location of sensitive text.
  GetAnnotationResult({
    required this.annotationSource,
    required this.customData,
    required this.imageAnnotation,
    required this.name,
    required this.resourceAnnotation,
    required this.textAnnotation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotationSource'] = annotationSource.toMap();
    map['customData'] = customData;
    map['imageAnnotation'] = imageAnnotation.toMap();
    map['name'] = name;
    map['resourceAnnotation'] = resourceAnnotation.toMap();
    map['textAnnotation'] = textAnnotation.toMap();
    return map;
  }

  factory GetAnnotationResult.fromMap(Map<String, dynamic> map) {
    return GetAnnotationResult(
      annotationSource: AnnotationSourceResponse.fromMap(
          (map['annotationSource'] as Map).cast<String, dynamic>()),
      customData: (map['customData'] as Map).cast<String, String>(),
      imageAnnotation: ImageAnnotationResponse.fromMap(
          (map['imageAnnotation'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      resourceAnnotation: ResourceAnnotationResponse.fromMap(
          (map['resourceAnnotation'] as Map).cast<String, dynamic>()),
      textAnnotation: SensitiveTextAnnotationResponse.fromMap(
          (map['textAnnotation'] as Map).cast<String, dynamic>()),
    );
  }
}
