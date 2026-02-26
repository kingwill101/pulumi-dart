// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAnnotationStore.
class GetAnnotationStoreArgs {
  final Input<String> annotationStoreId;
  final Input<String> datasetId;
  final Input<String> location;
  final Input<String>? project;

  GetAnnotationStoreArgs({
    required this.annotationStoreId,
    required this.datasetId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotationStoreId'] = annotationStoreId;
    map['datasetId'] = datasetId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAnnotationStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetAnnotationStoreArgs(
      annotationStoreId: Input.asInput<String>(map['annotationStoreId']),
      datasetId: Input.asInput<String>(map['datasetId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
