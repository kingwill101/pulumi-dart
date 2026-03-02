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
    required this.instanceName,
    required this.pipelineName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'pipelineName': pipelineName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineArgs(
      instanceName: (map['instanceName'] as String).input(),
      pipelineName: (map['pipelineName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

