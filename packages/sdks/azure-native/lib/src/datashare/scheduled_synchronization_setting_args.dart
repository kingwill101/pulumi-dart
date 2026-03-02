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
    required this.accountName,
    required this.kind,
    required this.recurrenceInterval,
    required this.resourceGroupName,
    required this.shareName,
    this.synchronizationSettingName,
    required this.synchronizationTime,
  });

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
      accountName: (map['accountName'] as String).input(),
      kind: (map['kind'] as String).input(),
      recurrenceInterval: (map['recurrenceInterval'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareName: (map['shareName'] as String).input(),
      synchronizationSettingName: map['synchronizationSettingName'] == null ? null : (map['synchronizationSettingName'] as String).input(),
      synchronizationTime: (map['synchronizationTime'] as String).input(),
    );
  }
}

