// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'annotation_type.dart';

/// The set of arguments for Annotation.
class AnnotationArgs2 {
  /// Labels as key value pairs.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// name of resource.
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. An optional request ID to identify requests.
  final Input<String>? requestId;

  /// Type of an annotation.
  final Input<AnnotationType>? type;

  AnnotationArgs2({
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
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
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<AnnotationType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory AnnotationArgs2.fromMap(Map<String, dynamic> map) {
    return AnnotationArgs2(
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      type: Input.asOptionalInput<AnnotationType>(map['type']),
    );
  }
}
