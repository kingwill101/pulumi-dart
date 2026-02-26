// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipeline_artifact_store/pipeline_artifact_store.dart';
import '../pipeline_stage/pipeline_stage.dart';
import '../pipeline_trigger/pipeline_trigger.dart';
import '../pipeline_variable/pipeline_variable.dart';

/// The set of arguments for Pipeline.
class PipelineArgs {
  /// One or more<span pulumi-lang-nodejs=" artifactStore " pulumi-lang-dotnet=" ArtifactStore " pulumi-lang-go=" artifactStore " pulumi-lang-python=" artifact_store " pulumi-lang-yaml=" artifactStore " pulumi-lang-java=" artifactStore "> artifact_store </span>blocks. Artifact stores are documented below.
  final Input<List<PipelineArtifactStore>> artifactStores;

  /// The method that the pipeline will use to handle multiple executions. The default mode is `SUPERSEDED`. For value values, refer to the [AWS documentation](https://docs.aws.amazon.com/codepipeline/latest/APIReference/API_PipelineDeclaration.html#CodePipeline-Type-PipelineDeclaration-executionMode).
  final Input<String>? executionMode;

  /// The name of the pipeline.
  final Input<String>? name;

  /// Type of the pipeline. Possible values are: `V1` and `V2`. Default value is `V1`.
  final Input<String>? pipelineType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A service role Amazon Resource Name (ARN) that grants AWS CodePipeline permission to make calls to AWS services on your behalf.
  final Input<String> roleArn;

  /// A stage block. Stages are documented below.
  final Input<List<PipelineStage>> stages;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// A trigger block. Valid only when <span pulumi-lang-nodejs="`pipelineType`" pulumi-lang-dotnet="`PipelineType`" pulumi-lang-go="`pipelineType`" pulumi-lang-python="`pipeline_type`" pulumi-lang-yaml="`pipelineType`" pulumi-lang-java="`pipelineType`">`pipeline_type`</span> is `V2`. Triggers are documented below.
  final Input<List<PipelineTrigger>>? triggers;

  /// A pipeline-level variable block. Valid only when <span pulumi-lang-nodejs="`pipelineType`" pulumi-lang-dotnet="`PipelineType`" pulumi-lang-go="`pipelineType`" pulumi-lang-python="`pipeline_type`" pulumi-lang-yaml="`pipelineType`" pulumi-lang-java="`pipelineType`">`pipeline_type`</span> is `V2`. Variable are documented below.
  ///
  /// **Note:** `QUEUED` or `PARALLEL` mode can only be used with V2 pipelines.
  final Input<List<PipelineVariable>>? variables;

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
    map['artifactStores'] = Input.mapInputValue<List<PipelineArtifactStore>,
            List<Map<String, dynamic>>>(
        artifactStores,
        (value) =>
            Input.encodeList<PipelineArtifactStore, Map<String, dynamic>>(
                value, (value) => value.toMap()));
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
    map['stages'] =
        Input.mapInputValue<List<PipelineStage>, List<Map<String, dynamic>>>(
            stages,
            (value) => Input.encodeList<PipelineStage, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = Input.mapOptionalInputValue<List<PipelineTrigger>,
              List<Map<String, dynamic>>>(
          triggersValue,
          (value) => Input.encodeList<PipelineTrigger, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final variablesValue = variables;
    if (variablesValue != null) {
      map['variables'] = Input.mapOptionalInputValue<List<PipelineVariable>,
              List<Map<String, dynamic>>>(
          variablesValue,
          (value) => Input.encodeList<PipelineVariable, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      artifactStores:
          Input.asInput<List<PipelineArtifactStore>>(map['artifactStores']),
      executionMode: Input.asOptionalInput<String>(map['executionMode']),
      name: Input.asOptionalInput<String>(map['name']),
      pipelineType: Input.asOptionalInput<String>(map['pipelineType']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      stages: Input.asInput<List<PipelineStage>>(map['stages']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      triggers: Input.asOptionalInput<List<PipelineTrigger>>(map['triggers']),
      variables:
          Input.asOptionalInput<List<PipelineVariable>>(map['variables']),
    );
  }
}
