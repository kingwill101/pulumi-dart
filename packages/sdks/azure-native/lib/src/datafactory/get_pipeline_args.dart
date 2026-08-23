// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_pipeline_args_doc}
/// Arguments for getPipeline.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_pipeline_args_doc}
class GetPipelineArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The pipeline name.
  final pulumi.Input<String> pipelineName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPipelineArgs].
  /// [factoryName] The factory name.
  /// [pipelineName] The pipeline name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetPipelineArgs({
    required this.factoryName,
    required this.pipelineName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'pipelineName': pipelineName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineArgs(
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      pipelineName: pulumi.Input.fromValue(map['pipelineName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
