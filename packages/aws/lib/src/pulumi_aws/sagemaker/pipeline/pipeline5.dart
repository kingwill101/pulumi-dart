import 'package:pulumi/pulumi.dart';
import '../pipeline_parallelism_configuration/pipeline_parallelism_configuration.dart';
import '../pipeline_pipeline_definition_s3_location/pipeline_pipeline_definition_s3_location.dart';
import 'pipeline_args5.dart';

/// Provides a SageMaker AI Pipeline resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import pipelines using the `pipeline_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/pipeline:Pipeline test_pipeline pipeline
/// ```
class Pipeline5 extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Pipeline.
  late final Output<String> arn;

  /// This is the configuration that controls the parallelism of the pipeline. If specified, it applies to all runs of this pipeline by default. see Parallelism Configuration details below.
  late final Output<PipelineParallelismConfiguration?> parallelismConfiguration;

  /// The [JSON pipeline definition](https://aws-sagemaker-mlops.github.io/sagemaker-model-building-pipeline-definition-JSON-schema/) of the pipeline.
  late final Output<String?> pipelineDefinition;

  /// The location of the pipeline definition stored in Amazon S3. If specified, SageMaker AI will retrieve the pipeline definition from this location. see Pipeline Definition S3 Location details below.
  late final Output<PipelinePipelineDefinitionS3Location?>
      pipelineDefinitionS3Location;

  /// A description of the pipeline.
  late final Output<String?> pipelineDescription;

  /// The display name of the pipeline.
  late final Output<String> pipelineDisplayName;

  /// The name of the pipeline.
  late final Output<String> pipelineName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARN of the IAM role the pipeline will execute as.
  late final Output<String?> roleArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Pipeline5(
    String name, {
    PipelineArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/pipeline:Pipeline',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.parallelismConfiguration =
        registerOutput<PipelineParallelismConfiguration?>(
            'parallelismConfiguration');
    this.pipelineDefinition = registerOutput<String?>('pipelineDefinition');
    this.pipelineDefinitionS3Location =
        registerOutput<PipelinePipelineDefinitionS3Location?>(
            'pipelineDefinitionS3Location');
    this.pipelineDescription = registerOutput<String?>('pipelineDescription');
    this.pipelineDisplayName = registerOutput<String>('pipelineDisplayName');
    this.pipelineName = registerOutput<String>('pipelineName');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String?>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
