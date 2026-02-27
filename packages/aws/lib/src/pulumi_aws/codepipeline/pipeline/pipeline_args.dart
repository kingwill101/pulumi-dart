// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../pipeline_artifact_store/pipeline_artifact_store.dart';
import '../pipeline_stage/pipeline_stage.dart';
import '../pipeline_trigger/pipeline_trigger.dart';
import '../pipeline_variable/pipeline_variable.dart';

/// The set of arguments for Pipeline.
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

  PipelineArgs({
    required this.artifactStores,
    this.executionMode,
    this.name,
    this.pipelineType,
    this.region,
    required this.roleArn,
    required this.stages,
    this.tags,
    this.triggers,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifactStores'] = pulumi.Input.mapInputValue<
            List<PipelineArtifactStore>, List<Map<String, dynamic>>>(
        artifactStores,
        (value) => pulumi.Input.encodeList<PipelineArtifactStore,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final executionModeValue = executionMode;
    if (executionModeValue != null) {
      map['executionMode'] = executionModeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pipelineTypeValue = pipelineType;
    if (pipelineTypeValue != null) {
      map['pipelineType'] = pipelineTypeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    map['stages'] = pulumi.Input.mapInputValue<List<PipelineStage>,
            List<Map<String, dynamic>>>(
        stages,
        (value) => pulumi.Input.encodeList<PipelineStage, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = pulumi.Input.mapOptionalInputValue<
              List<PipelineTrigger>, List<Map<String, dynamic>>>(
          triggersValue,
          (value) =>
              pulumi.Input.encodeList<PipelineTrigger, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final variablesValue = variables;
    if (variablesValue != null) {
      map['variables'] = pulumi.Input.mapOptionalInputValue<
              List<PipelineVariable>, List<Map<String, dynamic>>>(
          variablesValue,
          (value) =>
              pulumi.Input.encodeList<PipelineVariable, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      artifactStores: pulumi.Input.asInput<List<PipelineArtifactStore>>(
          map['artifactStores']),
      executionMode: pulumi.Input.asOptionalInput<String>(map['executionMode']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      pipelineType: pulumi.Input.asOptionalInput<String>(map['pipelineType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      stages: pulumi.Input.asInput<List<PipelineStage>>(map['stages']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      triggers:
          pulumi.Input.asOptionalInput<List<PipelineTrigger>>(map['triggers']),
      variables: pulumi.Input.asOptionalInput<List<PipelineVariable>>(
          map['variables']),
    );
  }
}
