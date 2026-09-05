// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_instance_refresh_preferences_alarm_specification.dart';

class GroupInstanceRefreshPreferences {
  /// Alarm Specification for Instance Refresh.
  final pulumi.Input<GroupInstanceRefreshPreferencesAlarmSpecification?>? alarmSpecification;
  /// Automatically rollback if instance refresh fails. Defaults to `false`. This option may only be set to `true` when specifying a `launchTemplate` or `mixedInstancesPolicy`.
  final pulumi.Input<bool?>? autoRollback;
  /// Number of seconds to wait after a checkpoint. Defaults to `3600`.
  final pulumi.Input<String?>? checkpointDelay;
  /// List of percentages for each checkpoint. Values must be unique and in ascending order. To replace all instances, the final number must be `100`.
  final pulumi.Input<List<int>?>? checkpointPercentages;
  /// Number of seconds until a newly launched instance is configured and ready to use. Default behavior is to use the Auto Scaling Group's health check grace period.
  final pulumi.Input<String?>? instanceWarmup;
  /// Amount of capacity in the Auto Scaling group that can be in service and healthy, or pending, to support your workload when an instance refresh is in place, as a percentage of the desired capacity of the Auto Scaling group. Values must be between `100` and `200`, defaults to `100`.
  final pulumi.Input<int?>? maxHealthyPercentage;
  /// Amount of capacity in the Auto Scaling group that must remain healthy during an instance refresh to allow the operation to continue, as a percentage of the desired capacity of the Auto Scaling group. Defaults to `90`.
  final pulumi.Input<int?>? minHealthyPercentage;
  /// Behavior when encountering instances protected from scale in are found. Available behaviors are `Refresh`, `Ignore`, and `Wait`. Default is `Ignore`.
  final pulumi.Input<String?>? scaleInProtectedInstances;
  /// Skip replacing instances that already have your desired configuration. Defaults to `false`.
  final pulumi.Input<bool?>? skipMatching;
  /// Behavior when encountering instances in the `Standby` state in are found. Available behaviors are `Terminate`, `Ignore`, and `Wait`. Default is `Ignore`.
  final pulumi.Input<String?>? standbyInstances;

  /// Creates a new [GroupInstanceRefreshPreferences].
  /// [alarmSpecification] Alarm Specification for Instance Refresh.
  /// [autoRollback] Automatically rollback if instance refresh fails. Defaults to `false`. This option may only be set to `true` when specifying a `launchTemplate` or `mixedInstancesPolicy`.
  /// [checkpointDelay] Number of seconds to wait after a checkpoint. Defaults to `3600`.
  /// [checkpointPercentages] List of percentages for each checkpoint. Values must be unique and in ascending order. To replace all instances, the final number must be `100`.
  /// [instanceWarmup] Number of seconds until a newly launched instance is configured and ready to use. Default behavior is to use the Auto Scaling Group's health check grace period.
  /// [maxHealthyPercentage] Amount of capacity in the Auto Scaling group that can be in service and healthy, or pending, to support your workload when an instance refresh is in place, as a percentage of the desired capacity of the Auto Scaling group. Values must be between `100` and `200`, defaults to `100`.
  /// [minHealthyPercentage] Amount of capacity in the Auto Scaling group that must remain healthy during an instance refresh to allow the operation to continue, as a percentage of the desired capacity of the Auto Scaling group. Defaults to `90`.
  /// [scaleInProtectedInstances] Behavior when encountering instances protected from scale in are found. Available behaviors are `Refresh`, `Ignore`, and `Wait`. Default is `Ignore`.
  /// [skipMatching] Skip replacing instances that already have your desired configuration. Defaults to `false`.
  /// [standbyInstances] Behavior when encountering instances in the `Standby` state in are found. Available behaviors are `Terminate`, `Ignore`, and `Wait`. Default is `Ignore`.
  const GroupInstanceRefreshPreferences({
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
      alarmSpecification: (() { final guardedValue = map['alarmSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupInstanceRefreshPreferencesAlarmSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoRollback: (() { final guardedValue = map['autoRollback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      checkpointDelay: (() { final guardedValue = map['checkpointDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      checkpointPercentages: (() { final guardedValue = map['checkpointPercentages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      instanceWarmup: (() { final guardedValue = map['instanceWarmup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxHealthyPercentage: (() { final guardedValue = map['maxHealthyPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      minHealthyPercentage: (() { final guardedValue = map['minHealthyPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      scaleInProtectedInstances: (() { final guardedValue = map['scaleInProtectedInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipMatching: (() { final guardedValue = map['skipMatching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      standbyInstances: (() { final guardedValue = map['standbyInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
