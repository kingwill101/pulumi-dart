// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_dsc_node_configuration_dsc_node_configuration_args_doc}
/// The set of arguments for DscNodeConfiguration.
/// {@endtemplate}
/// {@macro pulumi_automation_dsc_node_configuration_dsc_node_configuration_args_doc}
class DscNodeConfigurationArgs {
  /// The name of the automation account in which the DSC Node Configuration is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// The PowerShell DSC Node Configuration (mof content).
  final pulumi.Input<String> contentEmbedded;
  /// Specifies the name of the DSC Node Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the DSC Node Configuration is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DscNodeConfigurationArgs].
  /// [automationAccountName] The name of the automation account in which the DSC Node Configuration is created. Changing this forces a new resource to be created.
  /// [contentEmbedded] The PowerShell DSC Node Configuration (mof content).
  /// [name] Specifies the name of the DSC Node Configuration. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the DSC Node Configuration is created. Changing this forces a new resource to be created.
  DscNodeConfigurationArgs({
    required String automationAccountName,
    required String contentEmbedded,
    String? name,
    required String resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      contentEmbedded = pulumi.Input.asInput<String>(contentEmbedded),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'contentEmbedded': contentEmbedded,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DscNodeConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return DscNodeConfigurationArgs(
      automationAccountName: map['automationAccountName'] as String,
      contentEmbedded: map['contentEmbedded'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

