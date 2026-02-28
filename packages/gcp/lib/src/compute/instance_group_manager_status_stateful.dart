// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_status_stateful_per_instance_config.dart';

class InstanceGroupManagerStatusStateful {
  /// A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful config even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions.
  final bool? hasStatefulConfig;

  /// Status of per-instance configs on the instances.
  final List<InstanceGroupManagerStatusStatefulPerInstanceConfig>?
      perInstanceConfigs;

  /// Creates a new [InstanceGroupManagerStatusStateful].
  /// [hasStatefulConfig] A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful config even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions.
  /// [perInstanceConfigs] Status of per-instance configs on the instances.
  InstanceGroupManagerStatusStateful({
    this.hasStatefulConfig,
    this.perInstanceConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hasStatefulConfigValue = hasStatefulConfig;
    if (hasStatefulConfigValue != null) {
      map['hasStatefulConfig'] = hasStatefulConfigValue;
    }
    final perInstanceConfigsValue = perInstanceConfigs;
    if (perInstanceConfigsValue != null) {
      map['perInstanceConfigs'] = pulumi.Input.encodeList<
              InstanceGroupManagerStatusStatefulPerInstanceConfig,
              Map<String, dynamic>>(
          perInstanceConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceGroupManagerStatusStateful.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStatusStateful(
      hasStatefulConfig: map['hasStatefulConfig'] == null
          ? null
          : map['hasStatefulConfig'] as bool,
      perInstanceConfigs: map['perInstanceConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  InstanceGroupManagerStatusStatefulPerInstanceConfig>(
              map['perInstanceConfigs'],
              (value) =>
                  InstanceGroupManagerStatusStatefulPerInstanceConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
