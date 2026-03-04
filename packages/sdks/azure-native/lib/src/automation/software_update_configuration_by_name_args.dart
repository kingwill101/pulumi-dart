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
      'error':
          ?pulumi.Input.mapOptionalInputValue<
            ErrorResponse,
            Map<String, dynamic>
          >(error, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scheduleInfo':
          pulumi.Input.mapInputValue<
            SUCScheduleProperties,
            Map<String, dynamic>
          >(scheduleInfo, (value) => value.toMap()),
      'softwareUpdateConfigurationName': ?softwareUpdateConfigurationName,
      'tasks':
          ?pulumi.Input.mapOptionalInputValue<
            SoftwareUpdateConfigurationTasks,
            Map<String, dynamic>
          >(tasks, (value) => value.toMap()),
      'updateConfiguration':
          pulumi.Input.mapInputValue<UpdateConfiguration, Map<String, dynamic>>(
            updateConfiguration,
            (value) => value.toMap(),
          ),
    };
  }

  factory SoftwareUpdateConfigurationByNameArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return SoftwareUpdateConfigurationByNameArgs(
      automationAccountName: pulumi.Input.fromValue(
        map['automationAccountName'] as String,
      ),
      error: (() {
        final guardedValue = map['error'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      scheduleInfo: pulumi.Input.fromValue(
        SUCScheduleProperties.fromMap(
          (map['scheduleInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      softwareUpdateConfigurationName: (() {
        final guardedValue = map['softwareUpdateConfigurationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tasks: (() {
        final guardedValue = map['tasks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SoftwareUpdateConfigurationTasks.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      updateConfiguration: pulumi.Input.fromValue(
        UpdateConfiguration.fromMap(
          (map['updateConfiguration']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
