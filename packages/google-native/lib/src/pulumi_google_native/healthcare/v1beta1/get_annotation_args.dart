// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAnnotation.
class GetAnnotationArgs {
  final pulumi.Input<String> annotationId;
  final pulumi.Input<String> annotationStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      annotationId: pulumi.Input.asInput<String>(map['annotationId']),
      annotationStoreId: pulumi.Input.asInput<String>(map['annotationStoreId']),
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
