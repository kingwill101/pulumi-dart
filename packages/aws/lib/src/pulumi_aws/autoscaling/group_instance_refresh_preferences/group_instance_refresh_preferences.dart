// ignore_for_file: unused_element, unnecessary_cast

import '../group_instance_refresh_preferences_alarm_specification/group_instance_refresh_preferences_alarm_specification.dart';

class GroupInstanceRefreshPreferences {
  /// Alarm Specification for Instance Refresh.
  final GroupInstanceRefreshPreferencesAlarmSpecification? alarmSpecification;

  /// Automatically rollback if instance refresh fails. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. This option may only be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> when specifying a <span pulumi-lang-nodejs="`launchTemplate`" pulumi-lang-dotnet="`LaunchTemplate`" pulumi-lang-go="`launchTemplate`" pulumi-lang-python="`launch_template`" pulumi-lang-yaml="`launchTemplate`" pulumi-lang-java="`launchTemplate`">`launch_template`</span> or <span pulumi-lang-nodejs="`mixedInstancesPolicy`" pulumi-lang-dotnet="`MixedInstancesPolicy`" pulumi-lang-go="`mixedInstancesPolicy`" pulumi-lang-python="`mixed_instances_policy`" pulumi-lang-yaml="`mixedInstancesPolicy`" pulumi-lang-java="`mixedInstancesPolicy`">`mixed_instances_policy`</span>.
  final bool? autoRollback;

  /// Number of seconds to wait after a checkpoint. Defaults to <span pulumi-lang-nodejs="`3600`" pulumi-lang-dotnet="`3600`" pulumi-lang-go="`3600`" pulumi-lang-python="`3600`" pulumi-lang-yaml="`3600`" pulumi-lang-java="`3600`">`3600`</span>.
  final String? checkpointDelay;

  /// List of percentages for each checkpoint. Values must be unique and in ascending order. To replace all instances, the final number must be <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span>.
  final List<int>? checkpointPercentages;

  /// Number of seconds until a newly launched instance is configured and ready to use. Default behavior is to use the Auto Scaling Group's health check grace period.
  final String? instanceWarmup;

  /// Amount of capacity in the Auto Scaling group that can be in service and healthy, or pending, to support your workload when an instance refresh is in place, as a percentage of the desired capacity of the Auto Scaling group. Values must be between <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span> and <span pulumi-lang-nodejs="`200`" pulumi-lang-dotnet="`200`" pulumi-lang-go="`200`" pulumi-lang-python="`200`" pulumi-lang-yaml="`200`" pulumi-lang-java="`200`">`200`</span>, defaults to <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span>.
  final int? maxHealthyPercentage;

  /// Amount of capacity in the Auto Scaling group that must remain healthy during an instance refresh to allow the operation to continue, as a percentage of the desired capacity of the Auto Scaling group. Defaults to <span pulumi-lang-nodejs="`90`" pulumi-lang-dotnet="`90`" pulumi-lang-go="`90`" pulumi-lang-python="`90`" pulumi-lang-yaml="`90`" pulumi-lang-java="`90`">`90`</span>.
  final int? minHealthyPercentage;

  /// Behavior when encountering instances protected from scale in are found. Available behaviors are `Refresh`, `Ignore`, and `Wait`. Default is `Ignore`.
  final String? scaleInProtectedInstances;

  /// Skip replacing instances that already have your desired configuration. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? skipMatching;

  /// Behavior when encountering instances in the `Standby` state in are found. Available behaviors are `Terminate`, `Ignore`, and `Wait`. Default is `Ignore`.
  final String? standbyInstances;

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
    final map = <String, dynamic>{};
    final alarmSpecificationValue = alarmSpecification;
    if (alarmSpecificationValue != null) {
      map['alarmSpecification'] = alarmSpecificationValue.toMap();
    }
    final autoRollbackValue = autoRollback;
    if (autoRollbackValue != null) {
      map['autoRollback'] = autoRollbackValue;
    }
    final checkpointDelayValue = checkpointDelay;
    if (checkpointDelayValue != null) {
      map['checkpointDelay'] = checkpointDelayValue;
    }
    final checkpointPercentagesValue = checkpointPercentages;
    if (checkpointPercentagesValue != null) {
      map['checkpointPercentages'] = checkpointPercentagesValue;
    }
    final instanceWarmupValue = instanceWarmup;
    if (instanceWarmupValue != null) {
      map['instanceWarmup'] = instanceWarmupValue;
    }
    final maxHealthyPercentageValue = maxHealthyPercentage;
    if (maxHealthyPercentageValue != null) {
      map['maxHealthyPercentage'] = maxHealthyPercentageValue;
    }
    final minHealthyPercentageValue = minHealthyPercentage;
    if (minHealthyPercentageValue != null) {
      map['minHealthyPercentage'] = minHealthyPercentageValue;
    }
    final scaleInProtectedInstancesValue = scaleInProtectedInstances;
    if (scaleInProtectedInstancesValue != null) {
      map['scaleInProtectedInstances'] = scaleInProtectedInstancesValue;
    }
    final skipMatchingValue = skipMatching;
    if (skipMatchingValue != null) {
      map['skipMatching'] = skipMatchingValue;
    }
    final standbyInstancesValue = standbyInstances;
    if (standbyInstancesValue != null) {
      map['standbyInstances'] = standbyInstancesValue;
    }
    return map;
  }

  factory GroupInstanceRefreshPreferences.fromMap(Map<String, dynamic> map) {
    return GroupInstanceRefreshPreferences(
      alarmSpecification: map['alarmSpecification'] == null
          ? null
          : GroupInstanceRefreshPreferencesAlarmSpecification.fromMap(
              (map['alarmSpecification'] as Map).cast<String, dynamic>()),
      autoRollback:
          map['autoRollback'] == null ? null : map['autoRollback'] as bool,
      checkpointDelay: map['checkpointDelay'] == null
          ? null
          : map['checkpointDelay'] as String,
      checkpointPercentages: map['checkpointPercentages'] == null
          ? null
          : (map['checkpointPercentages'] as List).cast<int>(),
      instanceWarmup: map['instanceWarmup'] == null
          ? null
          : map['instanceWarmup'] as String,
      maxHealthyPercentage: map['maxHealthyPercentage'] == null
          ? null
          : map['maxHealthyPercentage'] as int,
      minHealthyPercentage: map['minHealthyPercentage'] == null
          ? null
          : map['minHealthyPercentage'] as int,
      scaleInProtectedInstances: map['scaleInProtectedInstances'] == null
          ? null
          : map['scaleInProtectedInstances'] as String,
      skipMatching:
          map['skipMatching'] == null ? null : map['skipMatching'] as bool,
      standbyInstances: map['standbyInstances'] == null
          ? null
          : map['standbyInstances'] as String,
    );
  }
}
