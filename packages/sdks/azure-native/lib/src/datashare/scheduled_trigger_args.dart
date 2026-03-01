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
  ScheduledTriggerArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> recurrenceInterval,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareSubscriptionName,
    pulumi.Output<String>? synchronizationMode,
    required pulumi.Output<String> synchronizationTime,
    pulumi.Output<String>? triggerName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      kind = pulumi.Input.asInput<String>(kind),
      recurrenceInterval = pulumi.Input.asInput<String>(recurrenceInterval),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareSubscriptionName = pulumi.Input.asInput<String>(shareSubscriptionName),
      synchronizationMode = pulumi.Input.asOptionalInput<String>(synchronizationMode),
      synchronizationTime = pulumi.Input.asInput<String>(synchronizationTime),
      triggerName = pulumi.Input.asOptionalInput<String>(triggerName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      recurrenceInterval: pulumi.Output.create<String>(map['recurrenceInterval'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareSubscriptionName: pulumi.Output.create<String>(map['shareSubscriptionName'] as String),
      synchronizationMode: map['synchronizationMode'] == null ? null : pulumi.Output.create<String>(map['synchronizationMode'] as String),
      synchronizationTime: pulumi.Output.create<String>(map['synchronizationTime'] as String),
      triggerName: map['triggerName'] == null ? null : pulumi.Output.create<String>(map['triggerName'] as String),
    );
  }
}

