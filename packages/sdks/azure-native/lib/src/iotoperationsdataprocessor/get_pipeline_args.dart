// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperationsdataprocessor_get_pipeline_args_doc}
/// Arguments for getPipeline.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsdataprocessor_get_pipeline_args_doc}
class GetPipelineArgs {
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// Name of pipeline
  final pulumi.Input<String> pipelineName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPipelineArgs].
  /// [instanceName] Name of instance.
  /// [pipelineName] Name of pipeline
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPipelineArgs({
    required pulumi.Output<String> instanceName,
    required pulumi.Output<String> pipelineName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      instanceName = pulumi.Input.asInput<String>(instanceName),
      pipelineName = pulumi.Input.asInput<String>(pipelineName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'pipelineName': pipelineName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineArgs(
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      pipelineName: pulumi.Output.create<String>(map['pipelineName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

