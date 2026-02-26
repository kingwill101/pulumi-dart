// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_status_stateful_per_instance_configs_response2.dart';

class InstanceGroupManagerStatusStatefulResponse2 {
  /// A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful configuration even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions.
  final bool hasStatefulConfig;

  /// A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful configuration even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions. This field is deprecated in favor of has_stateful_config.
  final bool isStateful;

  /// Status of per-instance configurations on the instance.
  final InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse2
      perInstanceConfigs;

  InstanceGroupManagerStatusStatefulResponse2({
    required this.hasStatefulConfig,
    required this.isStateful,
    required this.perInstanceConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hasStatefulConfig'] = hasStatefulConfig;
    map['isStateful'] = isStateful;
    map['perInstanceConfigs'] = perInstanceConfigs.toMap();
    return map;
  }

  factory InstanceGroupManagerStatusStatefulResponse2.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerStatusStatefulResponse2(
      hasStatefulConfig: map['hasStatefulConfig'] as bool,
      isStateful: map['isStateful'] as bool,
      perInstanceConfigs:
          InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse2.fromMap(
              (map['perInstanceConfigs'] as Map).cast<String, dynamic>()),
    );
  }
}
