// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_runtime_environment_args_doc}
/// Arguments for getRuntimeEnvironment.
/// {@endtemplate}
/// {@macro pulumi_automation_get_runtime_environment_args_doc}
class GetRuntimeEnvironmentArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Runtime Environment.
  final pulumi.Input<String> runtimeEnvironmentName;

  /// Creates a new [GetRuntimeEnvironmentArgs].
  /// [automationAccountName] The name of the automation account.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [runtimeEnvironmentName] The name of the Runtime Environment.
  const GetRuntimeEnvironmentArgs({
    required this.automationAccountName,
    required this.resourceGroupName,
    required this.runtimeEnvironmentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
      'runtimeEnvironmentName': runtimeEnvironmentName,
    };
  }

  factory GetRuntimeEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetRuntimeEnvironmentArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      runtimeEnvironmentName: pulumi.Input.fromValue(map['runtimeEnvironmentName'] as String),
    );
  }
}
