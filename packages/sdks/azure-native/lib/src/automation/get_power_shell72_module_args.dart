// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_power_shell72_module_args_doc}
/// Arguments for getPowerShell72Module.
/// {@endtemplate}
/// {@macro pulumi_automation_get_power_shell72_module_args_doc}
class GetPowerShell72ModuleArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;

  /// The name of module.
  final pulumi.Input<String> moduleName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPowerShell72ModuleArgs].
  /// [automationAccountName] The name of the automation account.
  /// [moduleName] The name of module.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPowerShell72ModuleArgs({
    required this.automationAccountName,
    required this.moduleName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'moduleName': moduleName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPowerShell72ModuleArgs.fromMap(Map<String, dynamic> map) {
    return GetPowerShell72ModuleArgs(
      automationAccountName: pulumi.Input.fromValue(
        map['automationAccountName'] as String,
      ),
      moduleName: pulumi.Input.fromValue(map['moduleName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
