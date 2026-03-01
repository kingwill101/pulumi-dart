// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_script_execution_args_doc}
/// Arguments for getScriptExecution.
/// {@endtemplate}
/// {@macro pulumi_avs_get_script_execution_args_doc}
class GetScriptExecutionArgs {
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the script cmdlet.
  final pulumi.Input<String> scriptExecutionName;

  /// Creates a new [GetScriptExecutionArgs].
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scriptExecutionName] Name of the script cmdlet.
  GetScriptExecutionArgs({
    required pulumi.Output<String> privateCloudName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> scriptExecutionName,
  }) :
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scriptExecutionName = pulumi.Input.asInput<String>(scriptExecutionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
      'scriptExecutionName': scriptExecutionName,
    };
  }

  factory GetScriptExecutionArgs.fromMap(Map<String, dynamic> map) {
    return GetScriptExecutionArgs(
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scriptExecutionName: pulumi.Output.create<String>(map['scriptExecutionName'] as String),
    );
  }
}

