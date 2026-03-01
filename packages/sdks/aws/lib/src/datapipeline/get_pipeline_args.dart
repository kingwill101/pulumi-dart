// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datapipeline_get_pipeline_get_pipeline_args_doc}
/// Arguments for getPipeline.
/// {@endtemplate}
/// {@macro pulumi_datapipeline_get_pipeline_get_pipeline_args_doc}
class GetPipelineArgs {
  /// ID of the pipeline.
  final pulumi.Input<String> pipelineId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetPipelineArgs].
  /// [pipelineId] ID of the pipeline.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource.
  GetPipelineArgs({
    required pulumi.Output<String> pipelineId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      pipelineId = pulumi.Input.asInput<String>(pipelineId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineId': pipelineId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineArgs(
      pipelineId: pulumi.Output.create<String>(map['pipelineId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

