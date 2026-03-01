// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_software_update_configuration_by_name_args_doc}
/// Arguments for getSoftwareUpdateConfigurationByName.
/// {@endtemplate}
/// {@macro pulumi_automation_get_software_update_configuration_by_name_args_doc}
class GetSoftwareUpdateConfigurationByNameArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the software update configuration to be created.
  final pulumi.Input<String> softwareUpdateConfigurationName;

  /// Creates a new [GetSoftwareUpdateConfigurationByNameArgs].
  /// [automationAccountName] The name of the automation account.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [softwareUpdateConfigurationName] The name of the software update configuration to be created.
  GetSoftwareUpdateConfigurationByNameArgs({
    required String automationAccountName,
    required String resourceGroupName,
    required String softwareUpdateConfigurationName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      softwareUpdateConfigurationName = pulumi.Input.asInput<String>(softwareUpdateConfigurationName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
      'softwareUpdateConfigurationName': softwareUpdateConfigurationName,
    };
  }

  factory GetSoftwareUpdateConfigurationByNameArgs.fromMap(Map<String, dynamic> map) {
    return GetSoftwareUpdateConfigurationByNameArgs(
      automationAccountName: map['automationAccountName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      softwareUpdateConfigurationName: map['softwareUpdateConfigurationName'] as String,
    );
  }
}

