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
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPipelineArgs].
  /// [factoryName] The factory name.
  /// [pipelineName] The pipeline name.
  /// [resourceGroupName] The resource group name.
  GetPipelineArgs({
    required String factoryName,
    required String pipelineName,
    required String resourceGroupName,
  }) :
      factoryName = pulumi.Input.asInput<String>(factoryName),
      pipelineName = pulumi.Input.asInput<String>(pipelineName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'pipelineName': pipelineName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineArgs(
      factoryName: map['factoryName'] as String,
      pipelineName: map['pipelineName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

