// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredatatransfer_get_flow_profile_args_doc}
/// Arguments for getFlowProfile.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_get_flow_profile_args_doc}
class GetFlowProfileArgs {
  /// The name of the FlowProfile resource to operate on. Must be 3 to 64 characters long and contain only alphanumeric characters or hyphens.
  final pulumi.Input<String> flowProfileName;
  /// The name of the pipeline on which to operate.
  final pulumi.Input<String> pipelineName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFlowProfileArgs].
  /// [flowProfileName] The name of the FlowProfile resource to operate on. Must be 3 to 64 characters long and contain only alphanumeric characters or hyphens.
  /// [pipelineName] The name of the pipeline on which to operate.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFlowProfileArgs({
    required pulumi.Output<String> flowProfileName,
    required pulumi.Output<String> pipelineName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      flowProfileName = pulumi.Input.asInput<String>(flowProfileName),
      pipelineName = pulumi.Input.asInput<String>(pipelineName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flowProfileName': flowProfileName,
      'pipelineName': pipelineName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFlowProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetFlowProfileArgs(
      flowProfileName: pulumi.Output.create<String>(map['flowProfileName'] as String),
      pipelineName: pulumi.Output.create<String>(map['pipelineName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

