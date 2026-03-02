// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_response.dart';
import 'software_update_configuration_tasks.dart';
import 'sucschedule_properties.dart';
import 'update_configuration.dart';

/// {@template pulumi_automation_software_update_configuration_by_name_args_doc}
/// The set of arguments for SoftwareUpdateConfigurationByName.
/// {@endtemplate}
/// {@macro pulumi_automation_software_update_configuration_by_name_args_doc}
class SoftwareUpdateConfigurationByNameArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Details of provisioning error
  final pulumi.Input<ErrorResponse>? error;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Schedule information for the Software update configuration
  final pulumi.Input<SUCScheduleProperties> scheduleInfo;
  /// The name of the software update configuration to be created.
  final pulumi.Input<String>? softwareUpdateConfigurationName;
  /// Tasks information for the Software update configuration.
  final pulumi.Input<SoftwareUpdateConfigurationTasks>? tasks;
  /// update specific properties for the Software update configuration
  final pulumi.Input<UpdateConfiguration> updateConfiguration;

  /// Creates a new [SoftwareUpdateConfigurationByNameArgs].
  /// [automationAccountName] The name of the automation account.
  /// [error] Details of provisioning error
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [scheduleInfo] Schedule information for the Software update configuration
  /// [softwareUpdateConfigurationName] The name of the software update configuration to be created.
  /// [tasks] Tasks information for the Software update configuration.
  /// [updateConfiguration] update specific properties for the Software update configuration
  SoftwareUpdateConfigurationByNameArgs({
    required this.automationAccountName,
    this.error,
    required this.resourceGroupName,
    required this.scheduleInfo,
    this.softwareUpdateConfigurationName,
    this.tasks,
    required this.updateConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'error': ?pulumi.Input.mapOptionalInputValue<ErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scheduleInfo': pulumi.Input.mapInputValue<SUCScheduleProperties, Map<String, dynamic>>(scheduleInfo, (value) => value.toMap()),
      'softwareUpdateConfigurationName': ?softwareUpdateConfigurationName,
      'tasks': ?pulumi.Input.mapOptionalInputValue<SoftwareUpdateConfigurationTasks, Map<String, dynamic>>(tasks, (value) => value.toMap()),
      'updateConfiguration': pulumi.Input.mapInputValue<UpdateConfiguration, Map<String, dynamic>>(updateConfiguration, (value) => value.toMap()),
    };
  }

  factory SoftwareUpdateConfigurationByNameArgs.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationByNameArgs(
      automationAccountName: (map['automationAccountName'] as String).input(),
      error: map['error'] == null ? null : (ErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scheduleInfo: (SUCScheduleProperties.fromMap((map['scheduleInfo'] as Map).cast<String, dynamic>())).input(),
      softwareUpdateConfigurationName: map['softwareUpdateConfigurationName'] == null ? null : (map['softwareUpdateConfigurationName'] as String).input(),
      tasks: map['tasks'] == null ? null : (SoftwareUpdateConfigurationTasks.fromMap((map['tasks'] as Map).cast<String, dynamic>())).input(),
      updateConfiguration: (UpdateConfiguration.fromMap((map['updateConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

