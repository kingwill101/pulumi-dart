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
    this.arn,
    this.artifactStores,
    this.executionMode,
    this.name,
    this.pipelineType,
    this.region,
    this.roleArn,
    this.stages,
    this.tags,
    this.tagsAll,
    this.triggerAlls,
    this.triggers,
    this.variables,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      artifactStores: map['artifactStores'] == null ? null : ((pulumi.Input.decodeList<PipelineArtifactStore>(map['artifactStores']!, (value) => PipelineArtifactStore.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      executionMode: map['executionMode'] == null ? null : ((map['executionMode'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      pipelineType: map['pipelineType'] == null ? null : ((map['pipelineType'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      stages: map['stages'] == null ? null : ((pulumi.Input.decodeList<PipelineStage>(map['stages']!, (value) => PipelineStage.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      triggerAlls: map['triggerAlls'] == null ? null : ((pulumi.Input.decodeList<PipelineTriggerAll>(map['triggerAlls']!, (value) => PipelineTriggerAll.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      triggers: map['triggers'] == null ? null : ((pulumi.Input.decodeList<PipelineTrigger>(map['triggers']!, (value) => PipelineTrigger.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      variables: map['variables'] == null ? null : ((pulumi.Input.decodeList<PipelineVariable>(map['variables']!, (value) => PipelineVariable.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

