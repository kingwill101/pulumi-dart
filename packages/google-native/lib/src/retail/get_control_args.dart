// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_retail_v2_get_control_args_doc}
/// Arguments for getControl.
/// {@endtemplate}
/// {@macro pulumi_retail_v2_get_control_args_doc}
class GetControlArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> controlId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetControlArgs].
  /// [catalogId] Required.
  /// [controlId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetControlArgs({
    required String catalogId,
    required String controlId,
    required String location,
    String? project,
  }) : catalogId = pulumi.Input.asInput<String>(catalogId),
       controlId = pulumi.Input.asInput<String>(controlId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'controlId': controlId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetControlArgs.fromMap(Map<String, dynamic> map) {
    return GetControlArgs(
      catalogId: map['catalogId'] as String,
      controlId: map['controlId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
