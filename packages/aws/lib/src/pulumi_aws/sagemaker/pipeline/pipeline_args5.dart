// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipeline_parallelism_configuration/pipeline_parallelism_configuration.dart';
import '../pipeline_pipeline_definition_s3_location/pipeline_pipeline_definition_s3_location.dart';

/// The set of arguments for Pipeline.
class PipelineArgs5 {
  /// This is the configuration that controls the parallelism of the pipeline. If specified, it applies to all runs of this pipeline by default. see Parallelism Configuration details below.
  final Input<PipelineParallelismConfiguration>? parallelismConfiguration;

  /// The [JSON pipeline definition](https://aws-sagemaker-mlops.github.io/sagemaker-model-building-pipeline-definition-JSON-schema/) of the pipeline.
  final Input<String>? pipelineDefinition;

  /// The location of the pipeline definition stored in Amazon S3. If specified, SageMaker AI will retrieve the pipeline definition from this location. see Pipeline Definition S3 Location details below.
  final Input<PipelinePipelineDefinitionS3Location>?
      pipelineDefinitionS3Location;

  /// A description of the pipeline.
  final Input<String>? pipelineDescription;

  /// The display name of the pipeline.
  final Input<String> pipelineDisplayName;

  /// The name of the pipeline.
  final Input<String> pipelineName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARN of the IAM role the pipeline will execute as.
  final Input<String>? roleArn;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  PipelineArgs5({
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
      map['parallelismConfiguration'] = Input.mapOptionalInputValue<
              PipelineParallelismConfiguration, Map<String, dynamic>>(
          parallelismConfigurationValue, (value) => value.toMap());
    }
    final pipelineDefinitionValue = pipelineDefinition;
    if (pipelineDefinitionValue != null) {
      map['pipelineDefinition'] = pipelineDefinitionValue;
    }
    final pipelineDefinitionS3LocationValue = pipelineDefinitionS3Location;
    if (pipelineDefinitionS3LocationValue != null) {
      map['pipelineDefinitionS3Location'] = Input.mapOptionalInputValue<
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

  factory PipelineArgs5.fromMap(Map<String, dynamic> map) {
    return PipelineArgs5(
      parallelismConfiguration:
          Input.asOptionalInput<PipelineParallelismConfiguration>(
              map['parallelismConfiguration']),
      pipelineDefinition:
          Input.asOptionalInput<String>(map['pipelineDefinition']),
      pipelineDefinitionS3Location:
          Input.asOptionalInput<PipelinePipelineDefinitionS3Location>(
              map['pipelineDefinitionS3Location']),
      pipelineDescription:
          Input.asOptionalInput<String>(map['pipelineDescription']),
      pipelineDisplayName: Input.asInput<String>(map['pipelineDisplayName']),
      pipelineName: Input.asInput<String>(map['pipelineName']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asOptionalInput<String>(map['roleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
