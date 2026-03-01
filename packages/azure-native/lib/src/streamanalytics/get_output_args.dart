// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_get_output_args_doc}
/// Arguments for getOutput.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_get_output_args_doc}
class GetOutputArgs {
  /// The name of the streaming job.
  final pulumi.Input<String> jobName;
  /// The name of the output.
  final pulumi.Input<String> outputName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOutputArgs].
  /// [jobName] The name of the streaming job.
  /// [outputName] The name of the output.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetOutputArgs({
    required String jobName,
    required String outputName,
    required String resourceGroupName,
  }) :
      jobName = pulumi.Input.asInput<String>(jobName),
      outputName = pulumi.Input.asInput<String>(outputName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobName': jobName,
      'outputName': outputName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOutputArgs.fromMap(Map<String, dynamic> map) {
    return GetOutputArgs(
      jobName: map['jobName'] as String,
      outputName: map['outputName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

