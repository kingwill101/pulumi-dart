// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'append_variable_activity.dart';
import 'parameter_specification.dart';
import 'pipeline_folder.dart';
import 'pipeline_policy.dart';
import 'variable_specification.dart';

/// {@template pulumi_datafactory_pipeline_args_doc}
/// The set of arguments for Pipeline.
/// {@endtemplate}
/// {@macro pulumi_datafactory_pipeline_args_doc}
class PipelineArgs {
  /// List of activities in pipeline.
  final pulumi.Input<List<AppendVariableActivity>>? activities;
  /// List of tags that can be used for describing the Pipeline.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The max number of concurrent runs for the pipeline.
  final pulumi.Input<int>? concurrency;
  /// The description of the pipeline.
  final pulumi.Input<String>? description;
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The folder that this Pipeline is in. If not specified, Pipeline will appear at the root level.
  final pulumi.Input<PipelineFolder>? folder;
  /// List of parameters for pipeline.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// The pipeline name.
  final pulumi.Input<String>? pipelineName;
  /// Pipeline Policy.
  final pulumi.Input<PipelinePolicy>? policy;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Dimensions emitted by Pipeline.
  final pulumi.Input<Map<String, dynamic>>? runDimensions;
  /// List of variables for pipeline.
  final pulumi.Input<Map<String, VariableSpecification>>? variables;

  /// Creates a new [PipelineArgs].
  /// [activities] List of activities in pipeline.
  /// [annotations] List of tags that can be used for describing the Pipeline.
  /// [concurrency] The max number of concurrent runs for the pipeline.
  /// [description] The description of the pipeline.
  /// [factoryName] The factory name.
  /// [folder] The folder that this Pipeline is in. If not specified, Pipeline will appear at the root level.
  /// [parameters] List of parameters for pipeline.
  /// [pipelineName] The pipeline name.
  /// [policy] Pipeline Policy.
  /// [resourceGroupName] The resource group name.
  /// [runDimensions] Dimensions emitted by Pipeline.
  /// [variables] List of variables for pipeline.
  PipelineArgs({
    List<AppendVariableActivity>? activities,
    List<dynamic>? annotations,
    int? concurrency,
    String? description,
    required String factoryName,
    PipelineFolder? folder,
    Map<String, ParameterSpecification>? parameters,
    String? pipelineName,
    PipelinePolicy? policy,
    required String resourceGroupName,
    Map<String, dynamic>? runDimensions,
    Map<String, VariableSpecification>? variables,
  }) :
      activities = pulumi.Input.asOptionalInput<List<AppendVariableActivity>>(activities),
      annotations = pulumi.Input.asOptionalInput<List<dynamic>>(annotations),
      concurrency = pulumi.Input.asOptionalInput<int>(concurrency),
      description = pulumi.Input.asOptionalInput<String>(description),
      factoryName = pulumi.Input.asInput<String>(factoryName),
      folder = pulumi.Input.asOptionalInput<PipelineFolder>(folder),
      parameters = pulumi.Input.asOptionalInput<Map<String, ParameterSpecification>>(parameters),
      pipelineName = pulumi.Input.asOptionalInput<String>(pipelineName),
      policy = pulumi.Input.asOptionalInput<PipelinePolicy>(policy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runDimensions = pulumi.Input.asOptionalInput<Map<String, dynamic>>(runDimensions),
      variables = pulumi.Input.asOptionalInput<Map<String, VariableSpecification>>(variables);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activities': ?pulumi.Input.mapOptionalInputValue<List<AppendVariableActivity>, List<Map<String, dynamic>>>(activities, (value) => pulumi.Input.encodeList<AppendVariableActivity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'annotations': ?annotations,
      'concurrency': ?concurrency,
      'description': ?description,
      'factoryName': factoryName,
      'folder': ?pulumi.Input.mapOptionalInputValue<PipelineFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pipelineName': ?pipelineName,
      'policy': ?pulumi.Input.mapOptionalInputValue<PipelinePolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'runDimensions': ?runDimensions,
      'variables': ?pulumi.Input.mapOptionalInputValue<Map<String, VariableSpecification>, Map<String, Map<String, dynamic>>>(variables, (value) => pulumi.Input.encodeMapValues<VariableSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      activities: map['activities'] == null ? null : pulumi.Input.decodeList<AppendVariableActivity>(map['activities'], (value) => AppendVariableActivity.fromMap((value as Map).cast<String, dynamic>())),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      concurrency: map['concurrency'] == null ? null : map['concurrency'] as int,
      description: map['description'] == null ? null : map['description'] as String,
      factoryName: map['factoryName'] as String,
      folder: map['folder'] == null ? null : PipelineFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      pipelineName: map['pipelineName'] == null ? null : map['pipelineName'] as String,
      policy: map['policy'] == null ? null : PipelinePolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      runDimensions: map['runDimensions'] == null ? null : (map['runDimensions'] as Map).cast<String, dynamic>(),
      variables: map['variables'] == null ? null : pulumi.Input.decodeMapValues<VariableSpecification>(map['variables'], (value) => VariableSpecification.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

