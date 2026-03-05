// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_source_control_args_doc}
/// Arguments for getSourceControl.
/// {@endtemplate}
/// {@macro pulumi_automation_get_source_control_args_doc}
class GetSourceControlArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of source control.
  final pulumi.Input<String> sourceControlName;

  /// Creates a new [GetSourceControlArgs].
  /// [automationAccountName] The name of the automation account.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [sourceControlName] The name of source control.
  GetSourceControlArgs({
    required this.automationAccountName,
    required this.resourceGroupName,
    required this.sourceControlName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
      'sourceControlName': sourceControlName,
    };
  }

  factory GetSourceControlArgs.fromMap(Map<String, dynamic> map) {
    return GetSourceControlArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceControlName: pulumi.Input.fromValue(map['sourceControlName'] as String),
    );
  }
}

