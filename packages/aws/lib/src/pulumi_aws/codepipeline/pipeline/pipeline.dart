import 'package:pulumi/pulumi.dart' as pulumi;
import '../pipeline_artifact_store/pipeline_artifact_store.dart';
import '../pipeline_stage/pipeline_stage.dart';
import '../pipeline_trigger/pipeline_trigger.dart';
import '../pipeline_trigger_all/pipeline_trigger_all.dart';
import '../pipeline_variable/pipeline_variable.dart';
import 'pipeline_args.dart';

/// Provides a CodePipeline.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CodePipelines using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:codepipeline/pipeline:Pipeline example example-pipeline
/// ```
class Pipeline extends pulumi.CustomResource {
  /// Codepipeline ARN.
  late final pulumi.Output<String> arn;

  /// One or more artifact_store blocks. Artifact stores are documented below.
  late final pulumi.Output<List<PipelineArtifactStore>> artifactStores;

  /// The method that the pipeline will use to handle multiple executions. The default mode is `SUPERSEDED`. For value values, refer to the [AWS documentation](https://docs.aws.amazon.com/codepipeline/latest/APIReference/API_PipelineDeclaration.html#CodePipeline-Type-PipelineDeclaration-executionMode).
  late final pulumi.Output<String?> executionMode;

  /// The name of the pipeline.
  late final pulumi.Output<String> name;

  /// Type of the pipeline. Possible values are: `V1` and `V2`. Default value is `V1`.
  late final pulumi.Output<String?> pipelineType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A service role Amazon Resource Name (ARN) that grants AWS CodePipeline permission to make calls to AWS services on your behalf.
  late final pulumi.Output<String> roleArn;

  /// A stage block. Stages are documented below.
  late final pulumi.Output<List<PipelineStage>> stages;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// A list of all triggers present on the pipeline, including default triggers added by AWS for `V2` pipelines which omit an explicit `trigger` definition.
  late final pulumi.Output<List<PipelineTriggerAll>> triggerAlls;

  /// A trigger block. Valid only when `pipeline_type` is `V2`. Triggers are documented below.
  late final pulumi.Output<List<PipelineTrigger>?> triggers;

  /// A pipeline-level variable block. Valid only when `pipeline_type` is `V2`. Variable are documented below.
  ///
  /// **Note:** `QUEUED` or `PARALLEL` mode can only be used with V2 pipelines.
  late final pulumi.Output<List<PipelineVariable>?> variables;

  Pipeline(
    String name, {
    PipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codepipeline/pipeline:Pipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.artifactStores =
        registerOutput<List<PipelineArtifactStore>>('artifactStores');
    this.executionMode = registerOutput<String?>('executionMode');
    this.name = registerOutput<String>('name');
    this.pipelineType = registerOutput<String?>('pipelineType');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.stages = registerOutput<List<PipelineStage>>('stages');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.triggerAlls = registerOutput<List<PipelineTriggerAll>>('triggerAlls');
    this.triggers = registerOutput<List<PipelineTrigger>?>('triggers');
    this.variables = registerOutput<List<PipelineVariable>?>('variables');
  }
}
