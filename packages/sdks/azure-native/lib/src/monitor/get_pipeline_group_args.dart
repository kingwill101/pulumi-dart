// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_pipeline_group_args_doc}
/// Arguments for getPipelineGroup.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_pipeline_group_args_doc}
class GetPipelineGroupArgs {
  /// The name of pipeline group. The name is case insensitive.
  final pulumi.Input<String> pipelineGroupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPipelineGroupArgs].
  /// [pipelineGroupName] The name of pipeline group. The name is case insensitive.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPipelineGroupArgs({
    required pulumi.Output<String> pipelineGroupName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      pipelineGroupName = pulumi.Input.asInput<String>(pipelineGroupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineGroupName': pipelineGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPipelineGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineGroupArgs(
      pipelineGroupName: pulumi.Output.create<String>(map['pipelineGroupName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

