// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_artifact_store.dart';
import 'pipeline_stage.dart';
import 'pipeline_trigger.dart';
import 'pipeline_variable.dart';

/// {@template pulumi_codepipeline_pipeline_pipeline_args_doc}
/// The set of arguments for Pipeline.
/// {@endtemplate}
/// {@macro pulumi_codepipeline_pipeline_pipeline_args_doc}
class PipelineArgs {
  /// One or more artifact_store blocks. Artifact stores are documented below.
  final pulumi.Input<List<PipelineArtifactStore>> artifactStores;

  /// The method that the pipeline will use to handle multiple executions. The default mode is `SUPERSEDED`. For value values, refer to the [AWS documentation](https://docs.aws.amazon.com/codepipeline/latest/APIReference/API_PipelineDeclaration.html#CodePipeline-Type-PipelineDeclaration-executionMode).
  final pulumi.Input<String>? executionMode;

  /// The name of the pipeline.
  final pulumi.Input<String>? name;

  /// Type of the pipeline. Possible values are: `V1` and `V2`. Default value is `V1`.
  final pulumi.Input<String>? pipelineType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A service role Amazon Resource Name (ARN) that grants AWS CodePipeline permission to make calls to AWS services on your behalf.
  final pulumi.Input<String> roleArn;

  /// A stage block. Stages are documented below.
  final pulumi.Input<List<PipelineStage>> stages;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A trigger block. Valid only when `pipeline_type` is `V2`. Triggers are documented below.
  final pulumi.Input<List<PipelineTrigger>>? triggers;

  /// A pipeline-level variable block. Valid only when `pipeline_type` is `V2`. Variable are documented below.
  ///
  /// **Note:** `QUEUED` or `PARALLEL` mode can only be used with V2 pipelines.
  final pulumi.Input<List<PipelineVariable>>? variables;

  /// Creates a new [PipelineArgs].
  /// [artifactStores] One or more artifact_store blocks. Artifact stores are documented below.
  /// [executionMode] The method that the pipeline will use to handle multiple executions. The default mode is `SUPERSEDED`. For value values, refer to the [AWS documentation](https://docs.aws.amazon.com/codepipeline/latest/APIReference/API_PipelineDeclaration.html#CodePipeline-Type-PipelineDeclaration-executionMode).
  /// [name] The name of the pipeline.
  /// [pipelineType] Type of the pipeline. Possible values are: `V1` and `V2`. Default value is `V1`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] A service role Amazon Resource Name (ARN) that grants AWS CodePipeline permission to make calls to AWS services on your behalf.
  /// [stages] A stage block. Stages are documented below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [triggers] A trigger block. Valid only when `pipeline_type` is `V2`. Triggers are documented below.
  /// [variables] A pipeline-level variable block. Valid only when `pipeline_type` is `V2`. Variable are documented below.
  PipelineArgs({
    required List<PipelineArtifactStore> artifactStores,
    String? executionMode,
    String? name,
    String? pipelineType,
    String? region,
    required String roleArn,
    required List<PipelineStage> stages,
    Map<String, String>? tags,
    List<PipelineTrigger>? triggers,
    List<PipelineVariable>? variables,
  }) : artifactStores = pulumi.Input.asInput<List<PipelineArtifactStore>>(
         artifactStores,
       ),
       executionMode = pulumi.Input.asOptionalInput<String>(executionMode),
       name = pulumi.Input.asOptionalInput<String>(name),
       pipelineType = pulumi.Input.asOptionalInput<String>(pipelineType),
       region = pulumi.Input.asOptionalInput<String>(region),
       roleArn = pulumi.Input.asInput<String>(roleArn),
       stages = pulumi.Input.asInput<List<PipelineStage>>(stages),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       triggers = pulumi.Input.asOptionalInput<List<PipelineTrigger>>(triggers),
       variables = pulumi.Input.asOptionalInput<List<PipelineVariable>>(
         variables,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStores':
          pulumi.Input.mapInputValue<
            List<PipelineArtifactStore>,
            List<Map<String, dynamic>>
          >(
            artifactStores,
            (value) =>
                pulumi.Input.encodeList<
                  PipelineArtifactStore,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'executionMode': ?executionMode,
      'name': ?name,
      'pipelineType': ?pipelineType,
      'region': ?region,
      'roleArn': roleArn,
      'stages':
          pulumi.Input.mapInputValue<
            List<PipelineStage>,
            List<Map<String, dynamic>>
          >(
            stages,
            (value) =>
                pulumi.Input.encodeList<PipelineStage, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'tags': ?tags,
      'triggers':
          ?pulumi.Input.mapOptionalInputValue<
            List<PipelineTrigger>,
            List<Map<String, dynamic>>
          >(
            triggers,
            (value) =>
                pulumi.Input.encodeList<PipelineTrigger, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'variables':
          ?pulumi.Input.mapOptionalInputValue<
            List<PipelineVariable>,
            List<Map<String, dynamic>>
          >(
            variables,
            (value) =>
                pulumi.Input.encodeList<PipelineVariable, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      artifactStores: pulumi.Input.decodeList<PipelineArtifactStore>(
        map['artifactStores'],
        (value) => PipelineArtifactStore.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      executionMode: map['executionMode'] == null
          ? null
          : map['executionMode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      pipelineType: map['pipelineType'] == null
          ? null
          : map['pipelineType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      stages: pulumi.Input.decodeList<PipelineStage>(
        map['stages'],
        (value) =>
            PipelineStage.fromMap((value as Map).cast<String, dynamic>()),
      ),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      triggers: map['triggers'] == null
          ? null
          : pulumi.Input.decodeList<PipelineTrigger>(
              map['triggers'],
              (value) => PipelineTrigger.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      variables: map['variables'] == null
          ? null
          : pulumi.Input.decodeList<PipelineVariable>(
              map['variables'],
              (value) => PipelineVariable.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
