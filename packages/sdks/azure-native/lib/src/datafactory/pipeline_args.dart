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
    this.activities,
    this.annotations,
    this.concurrency,
    this.description,
    required this.factoryName,
    this.folder,
    this.parameters,
    this.pipelineName,
    this.policy,
    required this.resourceGroupName,
    this.runDimensions,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activities':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppendVariableActivity>,
            List<Map<String, dynamic>>
          >(
            activities,
            (value) =>
                pulumi.Input.encodeList<
                  AppendVariableActivity,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'annotations': ?annotations,
      'concurrency': ?concurrency,
      'description': ?description,
      'factoryName': factoryName,
      'folder':
          ?pulumi.Input.mapOptionalInputValue<
            PipelineFolder,
            Map<String, dynamic>
          >(folder, (value) => value.toMap()),
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ParameterSpecification>,
            Map<String, Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterSpecification,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'pipelineName': ?pipelineName,
      'policy':
          ?pulumi.Input.mapOptionalInputValue<
            PipelinePolicy,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'runDimensions': ?runDimensions,
      'variables':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, VariableSpecification>,
            Map<String, Map<String, dynamic>>
          >(
            variables,
            (value) =>
                pulumi.Input.encodeMapValues<
                  VariableSpecification,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      activities: (() {
        final guardedValue = map['activities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppendVariableActivity>(
            guardedValue,
            (value) => AppendVariableActivity.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      concurrency: (() {
        final guardedValue = map['concurrency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      folder: (() {
        final guardedValue = map['folder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PipelineFolder.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ParameterSpecification>(
            guardedValue,
            (value) => ParameterSpecification.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      pipelineName: (() {
        final guardedValue = map['pipelineName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PipelinePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      runDimensions: (() {
        final guardedValue = map['runDimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      variables: (() {
        final guardedValue = map['variables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<VariableSpecification>(
            guardedValue,
            (value) => VariableSpecification.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
