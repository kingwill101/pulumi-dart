// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_status_stateful_per_instance_configs_response_compute_v1.dart';

class InstanceGroupManagerStatusStatefulResponseComputeV1 {
  /// A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful configuration even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions.
  final bool hasStatefulConfig;

  /// Status of per-instance configurations on the instance.
  final InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeV1
      perInstanceConfigs;

  InstanceGroupManagerStatusStatefulResponseComputeV1({
    required this.hasStatefulConfig,
    required this.perInstanceConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hasStatefulConfig'] = hasStatefulConfig;
    map['perInstanceConfigs'] = perInstanceConfigs.toMap();
    return map;
  }

  factory InstanceGroupManagerStatusStatefulResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerStatusStatefulResponseComputeV1(
      hasStatefulConfig: map['hasStatefulConfig'] as bool,
      perInstanceConfigs:
          InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeV1
              .fromMap(
                  (map['perInstanceConfigs'] as Map).cast<String, dynamic>()),
    );
  }
}
