// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_pipeline_run_args_doc}
/// Arguments for getPipelineRun.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_pipeline_run_args_doc}
class GetPipelineRunArgs {
  /// The name of the pipeline run.
  final pulumi.Input<String> pipelineRunName;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPipelineRunArgs].
  /// [pipelineRunName] The name of the pipeline run.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPipelineRunArgs({
    required this.pipelineRunName,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineRunName': pipelineRunName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPipelineRunArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineRunArgs(
      pipelineRunName: (map['pipelineRunName'] as String).input(),
      registryName: (map['registryName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

