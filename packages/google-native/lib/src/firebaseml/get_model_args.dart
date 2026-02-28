// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebaseml_v1beta2_get_model_args_doc}
/// Arguments for getModel.
/// {@endtemplate}
/// {@macro pulumi_firebaseml_v1beta2_get_model_args_doc}
class GetModelArgs {
  final pulumi.Input<String> modelId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetModelArgs].
  /// [modelId] Required.
  /// [project] Optional.
  GetModelArgs({
    required String modelId,
    String? project,
  })  : modelId = pulumi.Input.asInput<String>(modelId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['modelId'] = modelId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetModelArgs.fromMap(Map<String, dynamic> map) {
    return GetModelArgs(
      modelId: map['modelId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
