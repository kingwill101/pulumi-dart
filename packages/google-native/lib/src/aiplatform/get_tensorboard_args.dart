// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_tensorboard_args_doc}
/// Arguments for getTensorboard.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_tensorboard_args_doc}
class GetTensorboardArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tensorboardId;

  /// Creates a new [GetTensorboardArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [tensorboardId] Required.
  GetTensorboardArgs({
    required String location,
    String? project,
    required String tensorboardId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        tensorboardId = pulumi.Input.asInput<String>(tensorboardId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tensorboardId'] = tensorboardId;
    return map;
  }

  factory GetTensorboardArgs.fromMap(Map<String, dynamic> map) {
    return GetTensorboardArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tensorboardId: map['tensorboardId'] as String,
    );
  }
}
