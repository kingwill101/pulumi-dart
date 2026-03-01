// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_import_pipeline_args_doc}
/// Arguments for getImportPipeline.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_import_pipeline_args_doc}
class GetImportPipelineArgs {
  /// The name of the import pipeline.
  final pulumi.Input<String> importPipelineName;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetImportPipelineArgs].
  /// [importPipelineName] The name of the import pipeline.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetImportPipelineArgs({
    required pulumi.Output<String> importPipelineName,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      importPipelineName = pulumi.Input.asInput<String>(importPipelineName),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importPipelineName': importPipelineName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetImportPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetImportPipelineArgs(
      importPipelineName: pulumi.Output.create<String>(map['importPipelineName'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

