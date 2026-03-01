// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_update_configuration_linux.dart';
import 'software_update_configuration_post_task.dart';
import 'software_update_configuration_pre_task.dart';
import 'software_update_configuration_schedule.dart';
import 'software_update_configuration_target.dart';
import 'software_update_configuration_windows.dart';

/// {@template pulumi_automation_software_update_configuration_software_update_configuration_args_doc}
/// The set of arguments for SoftwareUpdateConfiguration.
/// {@endtemplate}
/// {@macro pulumi_automation_software_update_configuration_software_update_configuration_args_doc}
class SoftwareUpdateConfigurationArgs {
  /// The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created.
  final pulumi.Input<String> automationAccountId;
  /// Maximum time allowed for the software update configuration run. using format `PT[n]H[n]M[n]S` as per ISO8601. Defaults to `PT2H`.
  final pulumi.Input<String>? duration;
  /// A `linux` block as defined below.
  final pulumi.Input<SoftwareUpdateConfigurationLinux>? linux;
  /// The name which should be used for this Automation. Changing this forces a new Automation to be created.
  final pulumi.Input<String>? name;
  /// Specifies a list of names of non-Azure machines for the software update configuration.
  final pulumi.Input<List<String>>? nonAzureComputerNames;
  /// A `post_task` blocks as defined below.
  final pulumi.Input<SoftwareUpdateConfigurationPostTask>? postTask;
  /// A `pre_task` blocks as defined below.
  final pulumi.Input<SoftwareUpdateConfigurationPreTask>? preTask;
  /// A `schedule` blocks as defined below.
  final pulumi.Input<SoftwareUpdateConfigurationSchedule> schedule;
  /// A `target` blocks as defined below.
  final pulumi.Input<SoftwareUpdateConfigurationTarget>? target;
  /// Specifies a list of Azure Resource IDs of azure virtual machines.
  final pulumi.Input<List<String>>? virtualMachineIds;
  /// A `windows` block as defined below.
  ///
  /// > **Note:** One of `linux` or `windows` must be specified.
  final pulumi.Input<SoftwareUpdateConfigurationWindows>? windows;

  /// Creates a new [SoftwareUpdateConfigurationArgs].
  /// [automationAccountId] The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created.
  /// [duration] Maximum time allowed for the software update configuration run. using format `PT[n]H[n]M[n]S` as per ISO8601. Defaults to `PT2H`.
  /// [linux] A `linux` block as defined below.
  /// [name] The name which should be used for this Automation. Changing this forces a new Automation to be created.
  /// [nonAzureComputerNames] Specifies a list of names of non-Azure machines for the software update configuration.
  /// [postTask] A `post_task` blocks as defined below.
  /// [preTask] A `pre_task` blocks as defined below.
  /// [schedule] A `schedule` blocks as defined below.
  /// [target] A `target` blocks as defined below.
  /// [virtualMachineIds] Specifies a list of Azure Resource IDs of azure virtual machines.
  /// [windows] A `windows` block as defined below.
  SoftwareUpdateConfigurationArgs({
    required String automationAccountId,
    String? duration,
    SoftwareUpdateConfigurationLinux? linux,
    String? name,
    List<String>? nonAzureComputerNames,
    SoftwareUpdateConfigurationPostTask? postTask,
    SoftwareUpdateConfigurationPreTask? preTask,
    required SoftwareUpdateConfigurationSchedule schedule,
    SoftwareUpdateConfigurationTarget? target,
    List<String>? virtualMachineIds,
    SoftwareUpdateConfigurationWindows? windows,
  }) :
      automationAccountId = pulumi.Input.asInput<String>(automationAccountId),
      duration = pulumi.Input.asOptionalInput<String>(duration),
      linux = pulumi.Input.asOptionalInput<SoftwareUpdateConfigurationLinux>(linux),
      name = pulumi.Input.asOptionalInput<String>(name),
      nonAzureComputerNames = pulumi.Input.asOptionalInput<List<String>>(nonAzureComputerNames),
      postTask = pulumi.Input.asOptionalInput<SoftwareUpdateConfigurationPostTask>(postTask),
      preTask = pulumi.Input.asOptionalInput<SoftwareUpdateConfigurationPreTask>(preTask),
      schedule = pulumi.Input.asInput<SoftwareUpdateConfigurationSchedule>(schedule),
      target = pulumi.Input.asOptionalInput<SoftwareUpdateConfigurationTarget>(target),
      virtualMachineIds = pulumi.Input.asOptionalInput<List<String>>(virtualMachineIds),
      windows = pulumi.Input.asOptionalInput<SoftwareUpdateConfigurationWindows>(windows);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountId': automationAccountId,
      'duration': ?duration,
      'linux': ?pulumi.Input.mapOptionalInputValue<SoftwareUpdateConfigurationLinux, Map<String, dynamic>>(linux, (value) => value.toMap()),
      'name': ?name,
      'nonAzureComputerNames': ?nonAzureComputerNames,
      'postTask': ?pulumi.Input.mapOptionalInputValue<SoftwareUpdateConfigurationPostTask, Map<String, dynamic>>(postTask, (value) => value.toMap()),
      'preTask': ?pulumi.Input.mapOptionalInputValue<SoftwareUpdateConfigurationPreTask, Map<String, dynamic>>(preTask, (value) => value.toMap()),
      'schedule': pulumi.Input.mapInputValue<SoftwareUpdateConfigurationSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<SoftwareUpdateConfigurationTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
      'virtualMachineIds': ?virtualMachineIds,
      'windows': ?pulumi.Input.mapOptionalInputValue<SoftwareUpdateConfigurationWindows, Map<String, dynamic>>(windows, (value) => value.toMap()),
    };
  }

  factory SoftwareUpdateConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationArgs(
      automationAccountId: map['automationAccountId'] as String,
      duration: map['duration'] == null ? null : map['duration'] as String,
      linux: map['linux'] == null ? null : SoftwareUpdateConfigurationLinux.fromMap((map['linux'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      nonAzureComputerNames: map['nonAzureComputerNames'] == null ? null : (map['nonAzureComputerNames'] as List).cast<String>(),
      postTask: map['postTask'] == null ? null : SoftwareUpdateConfigurationPostTask.fromMap((map['postTask'] as Map).cast<String, dynamic>()),
      preTask: map['preTask'] == null ? null : SoftwareUpdateConfigurationPreTask.fromMap((map['preTask'] as Map).cast<String, dynamic>()),
      schedule: SoftwareUpdateConfigurationSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : SoftwareUpdateConfigurationTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
      virtualMachineIds: map['virtualMachineIds'] == null ? null : (map['virtualMachineIds'] as List).cast<String>(),
      windows: map['windows'] == null ? null : SoftwareUpdateConfigurationWindows.fromMap((map['windows'] as Map).cast<String, dynamic>()),
    );
  }
}

