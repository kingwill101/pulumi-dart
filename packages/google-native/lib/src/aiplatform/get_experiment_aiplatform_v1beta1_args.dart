// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_experiment_aiplatform_v1beta1_args_doc}
/// Arguments for getExperiment.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_experiment_aiplatform_v1beta1_args_doc}
class GetExperimentAiplatformV1beta1Args {
  final pulumi.Input<String> experimentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tensorboardId;

  /// Creates a new [GetExperimentAiplatformV1beta1Args].
  /// [experimentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [tensorboardId] Required.
  GetExperimentAiplatformV1beta1Args({
    required String experimentId,
    required String location,
    String? project,
    required String tensorboardId,
  }) : experimentId = pulumi.Input.asInput<String>(experimentId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       tensorboardId = pulumi.Input.asInput<String>(tensorboardId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'experimentId': experimentId,
      'location': location,
      'project': ?project,
      'tensorboardId': tensorboardId,
    };
  }

  factory GetExperimentAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetExperimentAiplatformV1beta1Args(
      experimentId: map['experimentId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tensorboardId: map['tensorboardId'] as String,
    );
  }
}
