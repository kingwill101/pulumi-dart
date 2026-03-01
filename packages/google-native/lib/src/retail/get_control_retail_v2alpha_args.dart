// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_retail_v2alpha_get_control_retail_v2alpha_args_doc}
/// Arguments for getControl.
/// {@endtemplate}
/// {@macro pulumi_retail_v2alpha_get_control_retail_v2alpha_args_doc}
class GetControlRetailV2alphaArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> controlId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetControlRetailV2alphaArgs].
  /// [catalogId] Required.
  /// [controlId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetControlRetailV2alphaArgs({
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

  factory GetControlRetailV2alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetControlRetailV2alphaArgs(
      catalogId: map['catalogId'] as String,
      controlId: map['controlId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
