// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_experiment_args_doc}
/// Arguments for getExperiment.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_experiment_args_doc}
class GetExperimentArgs {
  final pulumi.Input<String> experimentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tensorboardId;

  /// Creates a new [GetExperimentArgs].
  /// [experimentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [tensorboardId] Required.
  GetExperimentArgs({
    required String experimentId,
    required String location,
    String? project,
    required String tensorboardId,
  })  : experimentId = pulumi.Input.asInput<String>(experimentId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        tensorboardId = pulumi.Input.asInput<String>(tensorboardId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['experimentId'] = experimentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tensorboardId'] = tensorboardId;
    return map;
  }

  factory GetExperimentArgs.fromMap(Map<String, dynamic> map) {
    return GetExperimentArgs(
      experimentId: map['experimentId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tensorboardId: map['tensorboardId'] as String,
    );
  }
}
