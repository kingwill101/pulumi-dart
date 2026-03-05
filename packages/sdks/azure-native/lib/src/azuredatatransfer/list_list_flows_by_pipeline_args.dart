// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredatatransfer_list_list_flows_by_pipeline_args_doc}
/// Arguments for listListFlowsByPipeline.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_list_list_flows_by_pipeline_args_doc}
class ListListFlowsByPipelineArgs {
  /// The name of the pipeline on which to operate.
  final pulumi.Input<String> pipelineName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Connection ID to target
  final pulumi.Input<List<String>>? value;

  /// Creates a new [ListListFlowsByPipelineArgs].
  /// [pipelineName] The name of the pipeline on which to operate.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [value] Connection ID to target
  ListListFlowsByPipelineArgs({
    required this.pipelineName,
    required this.resourceGroupName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineName': pipelineName,
      'resourceGroupName': resourceGroupName,
      'value': ?value,
    };
  }

  factory ListListFlowsByPipelineArgs.fromMap(Map<String, dynamic> map) {
    return ListListFlowsByPipelineArgs(
      pipelineName: pulumi.Input.fromValue(map['pipelineName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

