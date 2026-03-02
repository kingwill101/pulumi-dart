// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_instance_refresh_preferences_alarm_specification.dart';

class GroupInstanceRefreshPreferences {
  /// Alarm Specification for Instance Refresh.
  final pulumi.Input<GroupInstanceRefreshPreferencesAlarmSpecification>? alarmSpecification;
  /// Automatically rollback if instance refresh fails. Defaults to `false`. This option may only be set to `true` when specifying a `launch_template` or `mixed_instances_policy`.
  final pulumi.Input<bool>? autoRollback;
  /// Number of seconds to wait after a checkpoint. Defaults to `3600`.
  final pulumi.Input<String>? checkpointDelay;
  /// List of percentages for each checkpoint. Values must be unique and in ascending order. To replace all instances, the final number must be `100`.
  final pulumi.Input<List<int>>? checkpointPercentages;
  /// Number of seconds until a newly launched instance is configured and ready to use. Default behavior is to use the Auto Scaling Group's health check grace period.
  final pulumi.Input<String>? instanceWarmup;
  /// Amount of capacity in the Auto Scaling group that can be in service and healthy, or pending, to support your workload when an instance refresh is in place, as a percentage of the desired capacity of the Auto Scaling group. Values must be between `100` and `200`, defaults to `100`.
  final pulumi.Input<int>? maxHealthyPercentage;
  /// Amount of capacity in the Auto Scaling group that must remain healthy during an instance refresh to allow the operation to continue, as a percentage of the desired capacity of the Auto Scaling group. Defaults to `90`.
  final pulumi.Input<int>? minHealthyPercentage;
  /// Behavior when encountering instances protected from scale in are found. Available behaviors are `Refresh`, `Ignore`, and `Wait`. Default is `Ignore`.
  final pulumi.Input<String>? scaleInProtectedInstances;
  /// Skip replacing instances that already have your desired configuration. Defaults to `false`.
  final pulumi.Input<bool>? skipMatching;
  /// Behavior when encountering instances in the `Standby` state in are found. Available behaviors are `Terminate`, `Ignore`, and `Wait`. Default is `Ignore`.
  final pulumi.Input<String>? standbyInstances;

  /// Creates a new [GroupInstanceRefreshPreferences].
  /// [alarmSpecification] Alarm Specification for Instance Refresh.
  /// [autoRollback] Automatically rollback if instance refresh fails. Defaults to `false`. This option may only be set to `true` when specifying a `launch_template` or `mixed_instances_policy`.
  /// [checkpointDelay] Number of seconds to wait after a checkpoint. Defaults to `3600`.
  /// [checkpointPercentages] List of percentages for each checkpoint. Values must be unique and in ascending order. To replace all instances, the final number must be `100`.
  /// [instanceWarmup] Number of seconds until a newly launched instance is configured and ready to use. Default behavior is to use the Auto Scaling Group's health check grace period.
  /// [maxHealthyPercentage] Amount of capacity in the Auto Scaling group that can be in service and healthy, or pending, to support your workload when an instance refresh is in place, as a percentage of the desired capacity of the Auto Scaling group. Values must be between `100` and `200`, defaults to `100`.
  /// [minHealthyPercentage] Amount of capacity in the Auto Scaling group that must remain healthy during an instance refresh to allow the operation to continue, as a percentage of the desired capacity of the Auto Scaling group. Defaults to `90`.
  /// [scaleInProtectedInstances] Behavior when encountering instances protected from scale in are found. Available behaviors are `Refresh`, `Ignore`, and `Wait`. Default is `Ignore`.
  /// [skipMatching] Skip replacing instances that already have your desired configuration. Defaults to `false`.
  /// [standbyInstances] Behavior when encountering instances in the `Standby` state in are found. Available behaviors are `Terminate`, `Ignore`, and `Wait`. Default is `Ignore`.
  GroupInstanceRefreshPreferences({
    this.alarmSpecification,
    this.autoRollback,
    this.checkpointDelay,
    this.checkpointPercentages,
    this.instanceWarmup,
    this.maxHealthyPercentage,
    this.minHealthyPercentage,
    this.scaleInProtectedInstances,
    this.skipMatching,
    this.standbyInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmSpecification': ?pulumi.Input.mapOptionalInputValue<GroupInstanceRefreshPreferencesAlarmSpecification, Map<String, dynamic>>(alarmSpecification, (value) => value.toMap()),
      'autoRollback': ?autoRollback,
      'checkpointDelay': ?checkpointDelay,
      'checkpointPercentages': ?checkpointPercentages,
      'instanceWarmup': ?instanceWarmup,
      'maxHealthyPercentage': ?maxHealthyPercentage,
      'minHealthyPercentage': ?minHealthyPercentage,
      'scaleInProtectedInstances': ?scaleInProtectedInstances,
      'skipMatching': ?skipMatching,
      'standbyInstances': ?standbyInstances,
    };
  }

  factory GroupInstanceRefreshPreferences.fromMap(Map<String, dynamic> map) {
    return GroupInstanceRefreshPreferences(
      alarmSpecification: map['alarmSpecification'] == null ? null : (GroupInstanceRefreshPreferencesAlarmSpecification.fromMap((map['alarmSpecification'] as Map).cast<String, dynamic>())).input(),
      autoRollback: map['autoRollback'] == null ? null : (map['autoRollback'] as bool).input(),
      checkpointDelay: map['checkpointDelay'] == null ? null : (map['checkpointDelay'] as String).input(),
      checkpointPercentages: map['checkpointPercentages'] == null ? null : ((map['checkpointPercentages'] as List).cast<int>()).input(),
      instanceWarmup: map['instanceWarmup'] == null ? null : (map['instanceWarmup'] as String).input(),
      maxHealthyPercentage: map['maxHealthyPercentage'] == null ? null : (map['maxHealthyPercentage'] as int).input(),
      minHealthyPercentage: map['minHealthyPercentage'] == null ? null : (map['minHealthyPercentage'] as int).input(),
      scaleInProtectedInstances: map['scaleInProtectedInstances'] == null ? null : (map['scaleInProtectedInstances'] as String).input(),
      skipMatching: map['skipMatching'] == null ? null : (map['skipMatching'] as bool).input(),
      standbyInstances: map['standbyInstances'] == null ? null : (map['standbyInstances'] as String).input(),
    );
  }
}

