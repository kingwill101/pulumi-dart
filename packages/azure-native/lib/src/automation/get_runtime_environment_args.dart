// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_runtime_environment_args_doc}
/// Arguments for getRuntimeEnvironment.
/// {@endtemplate}
/// {@macro pulumi_automation_get_runtime_environment_args_doc}
class GetRuntimeEnvironmentArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Runtime Environment.
  final pulumi.Input<String> runtimeEnvironmentName;

  /// Creates a new [GetRuntimeEnvironmentArgs].
  /// [automationAccountName] The name of the automation account.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [runtimeEnvironmentName] The name of the Runtime Environment.
  GetRuntimeEnvironmentArgs({
    required String automationAccountName,
    required String resourceGroupName,
    required String runtimeEnvironmentName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runtimeEnvironmentName = pulumi.Input.asInput<String>(runtimeEnvironmentName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
      'runtimeEnvironmentName': runtimeEnvironmentName,
    };
  }

  factory GetRuntimeEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetRuntimeEnvironmentArgs(
      automationAccountName: map['automationAccountName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      runtimeEnvironmentName: map['runtimeEnvironmentName'] as String,
    );
  }
}

