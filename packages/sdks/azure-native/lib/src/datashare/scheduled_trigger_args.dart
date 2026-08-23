// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_scheduled_trigger_args_doc}
/// The set of arguments for ScheduledTrigger.
/// {@endtemplate}
/// {@macro pulumi_datashare_scheduled_trigger_args_doc}
class ScheduledTriggerArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// Kind of synchronization on trigger.
  /// Expected value is 'ScheduleBased'.
  final pulumi.Input<String> kind;
  /// Recurrence Interval
  final pulumi.Input<String> recurrenceInterval;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share subscription which will hold the data set sink.
  final pulumi.Input<String> shareSubscriptionName;
  /// Synchronization mode
  final pulumi.Input<String>? synchronizationMode;
  /// Synchronization time
  final pulumi.Input<String> synchronizationTime;
  /// The name of the trigger.
  final pulumi.Input<String>? triggerName;

  /// Creates a new [ScheduledTriggerArgs].
  /// [accountName] The name of the share account.
  /// [kind] Kind of synchronization on trigger.
  /// [recurrenceInterval] Recurrence Interval
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the share subscription which will hold the data set sink.
  /// [synchronizationMode] Synchronization mode
  /// [synchronizationTime] Synchronization time
  /// [triggerName] The name of the trigger.
  const ScheduledTriggerArgs({
    required this.accountName,
    required this.kind,
    required this.recurrenceInterval,
    required this.resourceGroupName,
    required this.shareSubscriptionName,
    this.synchronizationMode,
    required this.synchronizationTime,
    this.triggerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'kind': kind,
      'recurrenceInterval': recurrenceInterval,
      'resourceGroupName': resourceGroupName,
      'shareSubscriptionName': shareSubscriptionName,
      'synchronizationMode': ?synchronizationMode,
      'synchronizationTime': synchronizationTime,
      'triggerName': ?triggerName,
    };
  }

  factory ScheduledTriggerArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledTriggerArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      recurrenceInterval: pulumi.Input.fromValue(map['recurrenceInterval'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      shareSubscriptionName: pulumi.Input.fromValue(map['shareSubscriptionName'] as String),
      synchronizationMode: (() { final guardedValue = map['synchronizationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synchronizationTime: pulumi.Input.fromValue(map['synchronizationTime'] as String),
      triggerName: (() { final guardedValue = map['triggerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
