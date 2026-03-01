// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_run_request.dart';

/// {@template pulumi_containerregistry_pipeline_run_args_doc}
/// The set of arguments for PipelineRun.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_pipeline_run_args_doc}
class PipelineRunArgs {
  /// How the pipeline run should be forced to recreate even if the pipeline run configuration has not changed.
  final pulumi.Input<String>? forceUpdateTag;
  /// The name of the pipeline run.
  final pulumi.Input<String>? pipelineRunName;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The request parameters for a pipeline run.
  final pulumi.Input<PipelineRunRequest>? request;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PipelineRunArgs].
  /// [forceUpdateTag] How the pipeline run should be forced to recreate even if the pipeline run configuration has not changed.
  /// [pipelineRunName] The name of the pipeline run.
  /// [registryName] The name of the container registry.
  /// [request] The request parameters for a pipeline run.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  PipelineRunArgs({
    pulumi.Output<String>? forceUpdateTag,
    pulumi.Output<String>? pipelineRunName,
    required pulumi.Output<String> registryName,
    pulumi.Output<PipelineRunRequest>? request,
    required pulumi.Output<String> resourceGroupName,
  }) :
      forceUpdateTag = pulumi.Input.asOptionalInput<String>(forceUpdateTag),
      pipelineRunName = pulumi.Input.asOptionalInput<String>(pipelineRunName),
      registryName = pulumi.Input.asInput<String>(registryName),
      request = pulumi.Input.asOptionalInput<PipelineRunRequest>(request),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceUpdateTag': ?forceUpdateTag,
      'pipelineRunName': ?pipelineRunName,
      'registryName': registryName,
      'request': ?pulumi.Input.mapOptionalInputValue<PipelineRunRequest, Map<String, dynamic>>(request, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PipelineRunArgs.fromMap(Map<String, dynamic> map) {
    return PipelineRunArgs(
      forceUpdateTag: map['forceUpdateTag'] == null ? null : pulumi.Output.create<String>(map['forceUpdateTag'] as String),
      pipelineRunName: map['pipelineRunName'] == null ? null : pulumi.Output.create<String>(map['pipelineRunName'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      request: map['request'] == null ? null : pulumi.Output.create<PipelineRunRequest>(PipelineRunRequest.fromMap((map['request'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

