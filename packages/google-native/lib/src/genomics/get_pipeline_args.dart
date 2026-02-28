// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_genomics_v1alpha2_get_pipeline_args_doc}
/// Arguments for getPipeline.
/// {@endtemplate}
/// {@macro pulumi_genomics_v1alpha2_get_pipeline_args_doc}
class GetPipelineArgs {
  final pulumi.Input<String> pipelineId;

  /// Creates a new [GetPipelineArgs].
  /// [pipelineId] Required.
  GetPipelineArgs({
    required String pipelineId,
  }) : pipelineId = pulumi.Input.asInput<String>(pipelineId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pipelineId'] = pipelineId;
    return map;
  }

  factory GetPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineArgs(
      pipelineId: map['pipelineId'] as String,
    );
  }
}
