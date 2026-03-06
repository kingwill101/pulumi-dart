// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_parallelism_configuration.dart';
import 'pipeline_pipeline_definition_s3_location.dart';

/// Input properties used for looking up and filtering Pipeline resources.
class PipelineState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Pipeline.
  final pulumi.Input<String>? arn;
  /// This is the configuration that controls the parallelism of the pipeline. If specified, it applies to all runs of this pipeline by default. see Parallelism Configuration details below.
  final pulumi.Input<PipelineParallelismConfiguration>? parallelismConfiguration;
  /// The [JSON pipeline definition](https://aws-sagemaker-mlops.github.io/sagemaker-model-building-pipeline-definition-JSON-schema/) of the pipeline.
  final pulumi.Input<String>? pipelineDefinition;
  /// The location of the pipeline definition stored in Amazon S3. If specified, SageMaker AI will retrieve the pipeline definition from this location. see Pipeline Definition S3 Location details below.
  final pulumi.Input<PipelinePipelineDefinitionS3Location>? pipelineDefinitionS3Location;
  /// A description of the pipeline.
  final pulumi.Input<String>? pipelineDescription;
  /// The display name of the pipeline.
  final pulumi.Input<String>? pipelineDisplayName;
  /// The name of the pipeline.
  final pulumi.Input<String>? pipelineName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the IAM role the pipeline will execute as.
  final pulumi.Input<String>? roleArn;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [PipelineState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this Pipeline.
  /// [parallelismConfiguration] This is the configuration that controls the parallelism of the pipeline. If specified, it applies to all runs of this pipeline by default. see Parallelism Configuration details below.
  /// [pipelineDefinition] The [JSON pipeline definition](https://aws-sagemaker-mlops.github.io/sagemaker-model-building-pipeline-definition-JSON-schema/) of the pipeline.
  /// [pipelineDefinitionS3Location] The location of the pipeline definition stored in Amazon S3. If specified, SageMaker AI will retrieve the pipeline definition from this location. see Pipeline Definition S3 Location details below.
  /// [pipelineDescription] A description of the pipeline.
  /// [pipelineDisplayName] The display name of the pipeline.
  /// [pipelineName] The name of the pipeline.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the IAM role the pipeline will execute as.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  const PipelineState({
    this.arn,
    this.parallelismConfiguration,
    this.pipelineDefinition,
    this.pipelineDefinitionS3Location,
    this.pipelineDescription,
    this.pipelineDisplayName,
    this.pipelineName,
    this.region,
    this.roleArn,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'parallelismConfiguration': ?pulumi.Input.mapOptionalInputValue<PipelineParallelismConfiguration, Map<String, dynamic>>(parallelismConfiguration, (value) => value.toMap()),
      'pipelineDefinition': ?pipelineDefinition,
      'pipelineDefinitionS3Location': ?pulumi.Input.mapOptionalInputValue<PipelinePipelineDefinitionS3Location, Map<String, dynamic>>(pipelineDefinitionS3Location, (value) => value.toMap()),
      'pipelineDescription': ?pipelineDescription,
      'pipelineDisplayName': ?pipelineDisplayName,
      'pipelineName': ?pipelineName,
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory PipelineState.fromMap(Map<String, dynamic> map) {
    return PipelineState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parallelismConfiguration: (() { final guardedValue = map['parallelismConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineParallelismConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pipelineDefinition: (() { final guardedValue = map['pipelineDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineDefinitionS3Location: (() { final guardedValue = map['pipelineDefinitionS3Location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelinePipelineDefinitionS3Location.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pipelineDescription: (() { final guardedValue = map['pipelineDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineDisplayName: (() { final guardedValue = map['pipelineDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineName: (() { final guardedValue = map['pipelineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

