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
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAutomationAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetAutomationAccountArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

