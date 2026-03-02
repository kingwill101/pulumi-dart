// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_module_args_doc}
/// Arguments for getModule.
/// {@endtemplate}
/// {@macro pulumi_automation_get_module_args_doc}
class GetModuleArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The module name.
  final pulumi.Input<String> moduleName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetModuleArgs].
  /// [automationAccountName] The name of the automation account.
  /// [moduleName] The module name.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetModuleArgs({
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

  factory GetModuleArgs.fromMap(Map<String, dynamic> map) {
    return GetModuleArgs(
      automationAccountName: (map['automationAccountName'] as String).input(),
      moduleName: (map['moduleName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

