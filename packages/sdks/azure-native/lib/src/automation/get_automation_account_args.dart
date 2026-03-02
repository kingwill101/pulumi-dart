// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_automation_account_args_doc}
/// Arguments for getAutomationAccount.
/// {@endtemplate}
/// {@macro pulumi_automation_get_automation_account_args_doc}
class GetAutomationAccountArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAutomationAccountArgs].
  /// [automationAccountName] The name of the automation account.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetAutomationAccountArgs({
    required this.automationAccountName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAutomationAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetAutomationAccountArgs(
      automationAccountName: (map['automationAccountName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

