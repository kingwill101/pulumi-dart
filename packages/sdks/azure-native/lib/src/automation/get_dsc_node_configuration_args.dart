// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_dsc_node_configuration_args_doc}
/// Arguments for getDscNodeConfiguration.
/// {@endtemplate}
/// {@macro pulumi_automation_get_dsc_node_configuration_args_doc}
class GetDscNodeConfigurationArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;

  /// The Dsc node configuration name.
  final pulumi.Input<String> nodeConfigurationName;

  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDscNodeConfigurationArgs].
  /// [automationAccountName] The name of the automation account.
  /// [nodeConfigurationName] The Dsc node configuration name.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetDscNodeConfigurationArgs({
    required this.automationAccountName,
    required this.nodeConfigurationName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'nodeConfigurationName': nodeConfigurationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDscNodeConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetDscNodeConfigurationArgs(
      automationAccountName: pulumi.Input.fromValue(
        map['automationAccountName'] as String,
      ),
      nodeConfigurationName: pulumi.Input.fromValue(
        map['nodeConfigurationName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
