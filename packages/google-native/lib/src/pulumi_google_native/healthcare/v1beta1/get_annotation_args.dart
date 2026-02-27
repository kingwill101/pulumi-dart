// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAnnotation.
class GetAnnotationArgs {
  final Input<String> annotationId;
  final Input<String> annotationStoreId;
  final Input<String> datasetId;
  final Input<String> location;
  final Input<String>? project;

  GetAnnotationArgs({
    required this.annotationId,
    required this.annotationStoreId,
    required this.datasetId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotationId'] = annotationId;
    map['annotationStoreId'] = annotationStoreId;
    map['datasetId'] = datasetId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAnnotationArgs.fromMap(Map<String, dynamic> map) {
    return GetAnnotationArgs(
      annotationId: Input.asInput<String>(map['annotationId']),
      annotationStoreId: Input.asInput<String>(map['annotationStoreId']),
      datasetId: Input.asInput<String>(map['datasetId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
