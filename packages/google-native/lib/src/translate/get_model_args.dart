// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_translate_v3_get_model_args_doc}
/// Arguments for getModel.
/// {@endtemplate}
/// {@macro pulumi_translate_v3_get_model_args_doc}
class GetModelArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> modelId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetModelArgs].
  /// [location] Required.
  /// [modelId] Required.
  /// [project] Optional.
  GetModelArgs({
    required String location,
    required String modelId,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        modelId = pulumi.Input.asInput<String>(modelId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['modelId'] = modelId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetModelArgs.fromMap(Map<String, dynamic> map) {
    return GetModelArgs(
      location: map['location'] as String,
      modelId: map['modelId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
