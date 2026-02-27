// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'annotation_type.dart';

/// The set of arguments for Annotation.
class AnnotationRapidmigrationassessmentV1Args {
  /// Labels as key value pairs.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// name of resource.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests.
  final pulumi.Input<String>? requestId;

  /// Type of an annotation.
  final pulumi.Input<AnnotationType>? type;

  AnnotationRapidmigrationassessmentV1Args({
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
      map['type'] = pulumi.Input.mapOptionalInputValue<AnnotationType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory AnnotationRapidmigrationassessmentV1Args.fromMap(
      Map<String, dynamic> map) {
    return AnnotationRapidmigrationassessmentV1Args(
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      type: pulumi.Input.asOptionalInput<AnnotationType>(map['type']),
    );
  }
}
