// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_parallelism_configuration.dart';
import 'pipeline_pipeline_definition_s3_location.dart';

/// {@template pulumi_sagemaker_pipeline_pipeline_args_doc}
/// The set of arguments for Pipeline.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_pipeline_pipeline_args_doc}
class PipelineArgs {
  /// This is the configuration that controls the parallelism of the pipeline. If specified, it applies to all runs of this pipeline by default. see Parallelism Configuration details below.
  final pulumi.Input<PipelineParallelismConfiguration>? parallelismConfiguration;
  /// The [JSON pipeline definition](https://aws-sagemaker-mlops.github.io/sagemaker-model-building-pipeline-definition-JSON-schema/) of the pipeline.
  final pulumi.Input<String>? pipelineDefinition;
  /// The location of the pipeline definition stored in Amazon S3. If specified, SageMaker AI will retrieve the pipeline definition from this location. see Pipeline Definition S3 Location details below.
  final pulumi.Input<PipelinePipelineDefinitionS3Location>? pipelineDefinitionS3Location;
  /// A description of the pipeline.
  final pulumi.Input<String>? pipelineDescription;
  /// The display name of the pipeline.
  final pulumi.Input<String> pipelineDisplayName;
  /// The name of the pipeline.
  final pulumi.Input<String> pipelineName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the IAM role the pipeline will execute as.
  final pulumi.Input<String>? roleArn;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PipelineArgs].
  /// [parallelismConfiguration] This is the configuration that controls the parallelism of the pipeline. If specified, it applies to all runs of this pipeline by default. see Parallelism Configuration details below.
  /// [pipelineDefinition] The [JSON pipeline definition](https://aws-sagemaker-mlops.github.io/sagemaker-model-building-pipeline-definition-JSON-schema/) of the pipeline.
  /// [pipelineDefinitionS3Location] The location of the pipeline definition stored in Amazon S3. If specified, SageMaker AI will retrieve the pipeline definition from this location. see Pipeline Definition S3 Location details below.
  /// [pipelineDescription] A description of the pipeline.
  /// [pipelineDisplayName] The display name of the pipeline.
  /// [pipelineName] The name of the pipeline.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the IAM role the pipeline will execute as.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  PipelineArgs({
    this.parallelismConfiguration,
    this.pipelineDefinition,
    this.pipelineDefinitionS3Location,
    this.pipelineDescription,
    required this.pipelineDisplayName,
    required this.pipelineName,
    this.region,
    this.roleArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parallelismConfiguration': ?pulumi.Input.mapOptionalInputValue<PipelineParallelismConfiguration, Map<String, dynamic>>(parallelismConfiguration, (value) => value.toMap()),
      'pipelineDefinition': ?pipelineDefinition,
      'pipelineDefinitionS3Location': ?pulumi.Input.mapOptionalInputValue<PipelinePipelineDefinitionS3Location, Map<String, dynamic>>(pipelineDefinitionS3Location, (value) => value.toMap()),
      'pipelineDescription': ?pipelineDescription,
      'pipelineDisplayName': pipelineDisplayName,
      'pipelineName': pipelineName,
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
    };
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      parallelismConfiguration: map['parallelismConfiguration'] == null ? null : ((PipelineParallelismConfiguration.fromMap((map['parallelismConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      pipelineDefinition: map['pipelineDefinition'] == null ? null : ((map['pipelineDefinition'] as String).input()).input(),
      pipelineDefinitionS3Location: map['pipelineDefinitionS3Location'] == null ? null : ((PipelinePipelineDefinitionS3Location.fromMap((map['pipelineDefinitionS3Location']! as Map).cast<String, dynamic>())).input()).input(),
      pipelineDescription: map['pipelineDescription'] == null ? null : ((map['pipelineDescription'] as String).input()).input(),
      pipelineDisplayName: (map['pipelineDisplayName'] as String).input(),
      pipelineName: (map['pipelineName'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

