// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_scheduled_synchronization_setting_args_doc}
/// The set of arguments for ScheduledSynchronizationSetting.
/// {@endtemplate}
/// {@macro pulumi_datashare_scheduled_synchronization_setting_args_doc}
class ScheduledSynchronizationSettingArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// Kind of synchronization setting.
  /// Expected value is 'ScheduleBased'.
  final pulumi.Input<String> kind;
  /// Recurrence Interval
  final pulumi.Input<String> recurrenceInterval;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share to add the synchronization setting to.
  final pulumi.Input<String> shareName;
  /// The name of the synchronizationSetting.
  final pulumi.Input<String>? synchronizationSettingName;
  /// Synchronization time
  final pulumi.Input<String> synchronizationTime;

  /// Creates a new [ScheduledSynchronizationSettingArgs].
  /// [accountName] The name of the share account.
  /// [kind] Kind of synchronization setting.
  /// [recurrenceInterval] Recurrence Interval
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share to add the synchronization setting to.
  /// [synchronizationSettingName] The name of the synchronizationSetting.
  /// [synchronizationTime] Synchronization time
  ScheduledSynchronizationSettingArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> recurrenceInterval,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareName,
    pulumi.Output<String>? synchronizationSettingName,
    required pulumi.Output<String> synchronizationTime,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      kind = pulumi.Input.asInput<String>(kind),
      recurrenceInterval = pulumi.Input.asInput<String>(recurrenceInterval),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareName = pulumi.Input.asInput<String>(shareName),
      synchronizationSettingName = pulumi.Input.asOptionalInput<String>(synchronizationSettingName),
      synchronizationTime = pulumi.Input.asInput<String>(synchronizationTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'kind': kind,
      'recurrenceInterval': recurrenceInterval,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
      'synchronizationSettingName': ?synchronizationSettingName,
      'synchronizationTime': synchronizationTime,
    };
  }

  factory ScheduledSynchronizationSettingArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledSynchronizationSettingArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      recurrenceInterval: pulumi.Output.create<String>(map['recurrenceInterval'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareName: pulumi.Output.create<String>(map['shareName'] as String),
      synchronizationSettingName: map['synchronizationSettingName'] == null ? null : pulumi.Output.create<String>(map['synchronizationSettingName'] as String),
      synchronizationTime: pulumi.Output.create<String>(map['synchronizationTime'] as String),
    );
  }
}

