// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_get_function_args_doc}
/// Arguments for getFunction.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_get_function_args_doc}
class GetFunctionArgs {
  /// The name of the function.
  final pulumi.Input<String> functionName;
  /// The name of the streaming job.
  final pulumi.Input<String> jobName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFunctionArgs].
  /// [functionName] The name of the function.
  /// [jobName] The name of the streaming job.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFunctionArgs({
    required String functionName,
    required String jobName,
    required String resourceGroupName,
  }) :
      functionName = pulumi.Input.asInput<String>(functionName),
      jobName = pulumi.Input.asInput<String>(jobName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'jobName': jobName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFunctionArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionArgs(
      functionName: map['functionName'] as String,
      jobName: map['jobName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

