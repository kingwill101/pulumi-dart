// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../pipeline_parallelism_configuration/pipeline_parallelism_configuration.dart';
import '../pipeline_pipeline_definition_s3_location/pipeline_pipeline_definition_s3_location.dart';

/// The set of arguments for Pipeline.
class PipelineSagemakerArgs {
  /// This is the configuration that controls the parallelism of the pipeline. If specified, it applies to all runs of this pipeline by default. see Parallelism Configuration details below.
  final pulumi.Input<PipelineParallelismConfiguration>?
      parallelismConfiguration;

  /// The [JSON pipeline definition](https://aws-sagemaker-mlops.github.io/sagemaker-model-building-pipeline-definition-JSON-schema/) of the pipeline.
  final pulumi.Input<String>? pipelineDefinition;

  /// The location of the pipeline definition stored in Amazon S3. If specified, SageMaker AI will retrieve the pipeline definition from this location. see Pipeline Definition S3 Location details below.
  final pulumi.Input<PipelinePipelineDefinitionS3Location>?
      pipelineDefinitionS3Location;

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

  PipelineSagemakerArgs({
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
    final map = <String, dynamic>{};
    final parallelismConfigurationValue = parallelismConfiguration;
    if (parallelismConfigurationValue != null) {
      map['parallelismConfiguration'] = pulumi.Input.mapOptionalInputValue<
              PipelineParallelismConfiguration, Map<String, dynamic>>(
          parallelismConfigurationValue, (value) => value.toMap());
    }
    final pipelineDefinitionValue = pipelineDefinition;
    if (pipelineDefinitionValue != null) {
      map['pipelineDefinition'] = pipelineDefinitionValue;
    }
    final pipelineDefinitionS3LocationValue = pipelineDefinitionS3Location;
    if (pipelineDefinitionS3LocationValue != null) {
      map['pipelineDefinitionS3Location'] = pulumi.Input.mapOptionalInputValue<
              PipelinePipelineDefinitionS3Location, Map<String, dynamic>>(
          pipelineDefinitionS3LocationValue, (value) => value.toMap());
    }
    final pipelineDescriptionValue = pipelineDescription;
    if (pipelineDescriptionValue != null) {
      map['pipelineDescription'] = pipelineDescriptionValue;
    }
    map['pipelineDisplayName'] = pipelineDisplayName;
    map['pipelineName'] = pipelineName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory PipelineSagemakerArgs.fromMap(Map<String, dynamic> map) {
    return PipelineSagemakerArgs(
      parallelismConfiguration:
          pulumi.Input.asOptionalInput<PipelineParallelismConfiguration>(
              map['parallelismConfiguration']),
      pipelineDefinition:
          pulumi.Input.asOptionalInput<String>(map['pipelineDefinition']),
      pipelineDefinitionS3Location:
          pulumi.Input.asOptionalInput<PipelinePipelineDefinitionS3Location>(
              map['pipelineDefinitionS3Location']),
      pipelineDescription:
          pulumi.Input.asOptionalInput<String>(map['pipelineDescription']),
      pipelineDisplayName:
          pulumi.Input.asInput<String>(map['pipelineDisplayName']),
      pipelineName: pulumi.Input.asInput<String>(map['pipelineName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asOptionalInput<String>(map['roleArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
