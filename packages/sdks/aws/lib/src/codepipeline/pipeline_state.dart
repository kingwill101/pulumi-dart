// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_artifact_store.dart';
import 'pipeline_stage.dart';
import 'pipeline_trigger.dart';
import 'pipeline_trigger_all.dart';
import 'pipeline_variable.dart';

/// Input properties used for looking up and filtering Pipeline resources.
class PipelineState {
  /// Codepipeline ARN.
  final pulumi.Input<String>? arn;
  /// One or more artifact_store blocks. Artifact stores are documented below.
  final pulumi.Input<List<PipelineArtifactStore>>? artifactStores;
  /// The method that the pipeline will use to handle multiple executions. The default mode is `SUPERSEDED`. For value values, refer to the [AWS documentation](https://docs.aws.amazon.com/codepipeline/latest/APIReference/API_PipelineDeclaration.html#CodePipeline-Type-PipelineDeclaration-executionMode).
  final pulumi.Input<String>? executionMode;
  /// The name of the pipeline.
  final pulumi.Input<String>? name;
  /// Type of the pipeline. Possible values are: `V1` and `V2`. Default value is `V1`.
  final pulumi.Input<String>? pipelineType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A service role Amazon Resource Name (ARN) that grants AWS CodePipeline permission to make calls to AWS services on your behalf.
  final pulumi.Input<String>? roleArn;
  /// A stage block. Stages are documented below.
  final pulumi.Input<List<PipelineStage>>? stages;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// A list of all triggers present on the pipeline, including default triggers added by AWS for `V2` pipelines which omit an explicit `trigger` definition.
  final pulumi.Input<List<PipelineTriggerAll>>? triggerAlls;
  /// A trigger block. Valid only when `pipeline_type` is `V2`. Triggers are documented below.
  final pulumi.Input<List<PipelineTrigger>>? triggers;
  /// A pipeline-level variable block. Valid only when `pipeline_type` is `V2`. Variable are documented below.
  ///
  /// **Note:** `QUEUED` or `PARALLEL` mode can only be used with V2 pipelines.
  final pulumi.Input<List<PipelineVariable>>? variables;

  /// Creates a new [PipelineState].
  /// [arn] Codepipeline ARN.
  /// [artifactStores] One or more artifact_store blocks. Artifact stores are documented below.
  /// [executionMode] The method that the pipeline will use to handle multiple executions. The default mode is `SUPERSEDED`. For value values, refer to the [AWS documentation](https://docs.aws.amazon.com/codepipeline/latest/APIReference/API_PipelineDeclaration.html#CodePipeline-Type-PipelineDeclaration-executionMode).
  /// [name] The name of the pipeline.
  /// [pipelineType] Type of the pipeline. Possible values are: `V1` and `V2`. Default value is `V1`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] A service role Amazon Resource Name (ARN) that grants AWS CodePipeline permission to make calls to AWS services on your behalf.
  /// [stages] A stage block. Stages are documented below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [triggerAlls] A list of all triggers present on the pipeline, including default triggers added by AWS for `V2` pipelines which omit an explicit `trigger` definition.
  /// [triggers] A trigger block. Valid only when `pipeline_type` is `V2`. Triggers are documented below.
  /// [variables] A pipeline-level variable block. Valid only when `pipeline_type` is `V2`. Variable are documented below.
  PipelineState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<PipelineArtifactStore>>? artifactStores,
    pulumi.Output<String>? executionMode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pipelineType,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<List<PipelineStage>>? stages,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<PipelineTriggerAll>>? triggerAlls,
    pulumi.Output<List<PipelineTrigger>>? triggers,
    pulumi.Output<List<PipelineVariable>>? variables,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      artifactStores = pulumi.Input.asOptionalInput<List<PipelineArtifactStore>>(artifactStores),
      executionMode = pulumi.Input.asOptionalInput<String>(executionMode),
      name = pulumi.Input.asOptionalInput<String>(name),
      pipelineType = pulumi.Input.asOptionalInput<String>(pipelineType),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      stages = pulumi.Input.asOptionalInput<List<PipelineStage>>(stages),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      triggerAlls = pulumi.Input.asOptionalInput<List<PipelineTriggerAll>>(triggerAlls),
      triggers = pulumi.Input.asOptionalInput<List<PipelineTrigger>>(triggers),
      variables = pulumi.Input.asOptionalInput<List<PipelineVariable>>(variables);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'artifactStores': ?pulumi.Input.mapOptionalInputValue<List<PipelineArtifactStore>, List<Map<String, dynamic>>>(artifactStores, (value) => pulumi.Input.encodeList<PipelineArtifactStore, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executionMode': ?executionMode,
      'name': ?name,
      'pipelineType': ?pipelineType,
      'region': ?region,
      'roleArn': ?roleArn,
      'stages': ?pulumi.Input.mapOptionalInputValue<List<PipelineStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<PipelineStage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'triggerAlls': ?pulumi.Input.mapOptionalInputValue<List<PipelineTriggerAll>, List<Map<String, dynamic>>>(triggerAlls, (value) => pulumi.Input.encodeList<PipelineTriggerAll, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggers': ?pulumi.Input.mapOptionalInputValue<List<PipelineTrigger>, List<Map<String, dynamic>>>(triggers, (value) => pulumi.Input.encodeList<PipelineTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
      'variables': ?pulumi.Input.mapOptionalInputValue<List<PipelineVariable>, List<Map<String, dynamic>>>(variables, (value) => pulumi.Input.encodeList<PipelineVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PipelineState.fromMap(Map<String, dynamic> map) {
    return PipelineState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      artifactStores: map['artifactStores'] == null ? null : pulumi.Output.create<List<PipelineArtifactStore>>(pulumi.Input.decodeList<PipelineArtifactStore>(map['artifactStores'], (value) => PipelineArtifactStore.fromMap((value as Map).cast<String, dynamic>()))),
      executionMode: map['executionMode'] == null ? null : pulumi.Output.create<String>(map['executionMode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pipelineType: map['pipelineType'] == null ? null : pulumi.Output.create<String>(map['pipelineType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      stages: map['stages'] == null ? null : pulumi.Output.create<List<PipelineStage>>(pulumi.Input.decodeList<PipelineStage>(map['stages'], (value) => PipelineStage.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      triggerAlls: map['triggerAlls'] == null ? null : pulumi.Output.create<List<PipelineTriggerAll>>(pulumi.Input.decodeList<PipelineTriggerAll>(map['triggerAlls'], (value) => PipelineTriggerAll.fromMap((value as Map).cast<String, dynamic>()))),
      triggers: map['triggers'] == null ? null : pulumi.Output.create<List<PipelineTrigger>>(pulumi.Input.decodeList<PipelineTrigger>(map['triggers'], (value) => PipelineTrigger.fromMap((value as Map).cast<String, dynamic>()))),
      variables: map['variables'] == null ? null : pulumi.Output.create<List<PipelineVariable>>(pulumi.Input.decodeList<PipelineVariable>(map['variables'], (value) => PipelineVariable.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

