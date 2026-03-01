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
    required pulumi.Output<String> pipelineName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<String>>? value,
  }) :
      pipelineName = pulumi.Input.asInput<String>(pipelineName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      value = pulumi.Input.asOptionalInput<List<String>>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineName': pipelineName,
      'resourceGroupName': resourceGroupName,
      'value': ?value,
    };
  }

  factory ListListFlowsByPipelineArgs.fromMap(Map<String, dynamic> map) {
    return ListListFlowsByPipelineArgs(
      pipelineName: pulumi.Output.create<String>(map['pipelineName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<List<String>>((map['value'] as List).cast<String>()),
    );
  }
}

