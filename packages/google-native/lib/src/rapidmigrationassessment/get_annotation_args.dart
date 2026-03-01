// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rapidmigrationassessment_v1_get_annotation_args_doc}
/// Arguments for getAnnotation.
/// {@endtemplate}
/// {@macro pulumi_rapidmigrationassessment_v1_get_annotation_args_doc}
class GetAnnotationArgs {
  final pulumi.Input<String> annotationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAnnotationArgs].
  /// [annotationId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAnnotationArgs({
    required String annotationId,
    required String location,
    String? project,
  }) : annotationId = pulumi.Input.asInput<String>(annotationId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationId': annotationId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAnnotationArgs.fromMap(Map<String, dynamic> map) {
    return GetAnnotationArgs(
      annotationId: map['annotationId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
