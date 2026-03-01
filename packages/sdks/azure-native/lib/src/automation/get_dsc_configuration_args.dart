// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_dsc_configuration_args_doc}
/// Arguments for getDscConfiguration.
/// {@endtemplate}
/// {@macro pulumi_automation_get_dsc_configuration_args_doc}
class GetDscConfigurationArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The configuration name.
  final pulumi.Input<String> configurationName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDscConfigurationArgs].
  /// [automationAccountName] The name of the automation account.
  /// [configurationName] The configuration name.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetDscConfigurationArgs({
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<String> configurationName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      configurationName = pulumi.Input.asInput<String>(configurationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'configurationName': configurationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDscConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetDscConfigurationArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      configurationName: pulumi.Output.create<String>(map['configurationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

