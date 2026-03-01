// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datapipelines_v1_get_pipeline_args_doc}
/// Arguments for getPipeline.
/// {@endtemplate}
/// {@macro pulumi_datapipelines_v1_get_pipeline_args_doc}
class GetPipelineArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> pipelineId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPipelineArgs].
  /// [location] Required.
  /// [pipelineId] Required.
  /// [project] Optional.
  GetPipelineArgs({
    required String location,
    required String pipelineId,
    String? project,
  }) : location = pulumi.Input.asInput<String>(location),
       pipelineId = pulumi.Input.asInput<String>(pipelineId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'pipelineId': pipelineId,
      'project': ?project,
    };
  }

  factory GetPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineArgs(
      location: map['location'] as String,
      pipelineId: map['pipelineId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
