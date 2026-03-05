// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_export_pipeline_args_doc}
/// Arguments for getExportPipeline.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_export_pipeline_args_doc}
class GetExportPipelineArgs {
  /// The name of the export pipeline.
  final pulumi.Input<String> exportPipelineName;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExportPipelineArgs].
  /// [exportPipelineName] The name of the export pipeline.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetExportPipelineArgs({
    required this.exportPipelineName,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportPipelineName': exportPipelineName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExportPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetExportPipelineArgs(
      exportPipelineName: pulumi.Input.fromValue(map['exportPipelineName'] as String),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

