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
  PipelineState({
    pulumi.Output<String>? arn,
    pulumi.Output<PipelineParallelismConfiguration>? parallelismConfiguration,
    pulumi.Output<String>? pipelineDefinition,
    pulumi.Output<PipelinePipelineDefinitionS3Location>? pipelineDefinitionS3Location,
    pulumi.Output<String>? pipelineDescription,
    pulumi.Output<String>? pipelineDisplayName,
    pulumi.Output<String>? pipelineName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      parallelismConfiguration = pulumi.Input.asOptionalInput<PipelineParallelismConfiguration>(parallelismConfiguration),
      pipelineDefinition = pulumi.Input.asOptionalInput<String>(pipelineDefinition),
      pipelineDefinitionS3Location = pulumi.Input.asOptionalInput<PipelinePipelineDefinitionS3Location>(pipelineDefinitionS3Location),
      pipelineDescription = pulumi.Input.asOptionalInput<String>(pipelineDescription),
      pipelineDisplayName = pulumi.Input.asOptionalInput<String>(pipelineDisplayName),
      pipelineName = pulumi.Input.asOptionalInput<String>(pipelineName),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      parallelismConfiguration: map['parallelismConfiguration'] == null ? null : pulumi.Output.create<PipelineParallelismConfiguration>(PipelineParallelismConfiguration.fromMap((map['parallelismConfiguration'] as Map).cast<String, dynamic>())),
      pipelineDefinition: map['pipelineDefinition'] == null ? null : pulumi.Output.create<String>(map['pipelineDefinition'] as String),
      pipelineDefinitionS3Location: map['pipelineDefinitionS3Location'] == null ? null : pulumi.Output.create<PipelinePipelineDefinitionS3Location>(PipelinePipelineDefinitionS3Location.fromMap((map['pipelineDefinitionS3Location'] as Map).cast<String, dynamic>())),
      pipelineDescription: map['pipelineDescription'] == null ? null : pulumi.Output.create<String>(map['pipelineDescription'] as String),
      pipelineDisplayName: map['pipelineDisplayName'] == null ? null : pulumi.Output.create<String>(map['pipelineDisplayName'] as String),
      pipelineName: map['pipelineName'] == null ? null : pulumi.Output.create<String>(map['pipelineName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

