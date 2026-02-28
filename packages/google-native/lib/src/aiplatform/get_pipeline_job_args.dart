// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_pipeline_job_args_doc}
/// Arguments for getPipelineJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_pipeline_job_args_doc}
class GetPipelineJobArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> pipelineJobId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPipelineJobArgs].
  /// [location] Required.
  /// [pipelineJobId] Required.
  /// [project] Optional.
  GetPipelineJobArgs({
    required String location,
    required String pipelineJobId,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        pipelineJobId = pulumi.Input.asInput<String>(pipelineJobId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['pipelineJobId'] = pipelineJobId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPipelineJobArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineJobArgs(
      location: map['location'] as String,
      pipelineJobId: map['pipelineJobId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
