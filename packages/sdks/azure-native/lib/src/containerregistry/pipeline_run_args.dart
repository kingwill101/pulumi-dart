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
    this.forceUpdateTag,
    this.pipelineRunName,
    required this.registryName,
    this.request,
    required this.resourceGroupName,
  });

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
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineRunName: (() { final guardedValue = map['pipelineRunName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineRunRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

