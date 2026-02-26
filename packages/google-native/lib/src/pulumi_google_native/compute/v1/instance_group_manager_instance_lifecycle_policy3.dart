// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_instance_lifecycle_policy_force_update_on_repair3.dart';

class InstanceGroupManagerInstanceLifecyclePolicy3 {
  /// A bit indicating whether to forcefully apply the group's latest configuration when repairing a VM. Valid options are: - NO (default): If configuration updates are available, they are not forcefully applied during repair. Instead, configuration updates are applied according to the group's update policy. - YES: If configuration updates are available, they are applied during repair.
  final InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepair3?
      forceUpdateOnRepair;

  InstanceGroupManagerInstanceLifecyclePolicy3({
    this.forceUpdateOnRepair,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final forceUpdateOnRepairValue = forceUpdateOnRepair;
    if (forceUpdateOnRepairValue != null) {
      map['forceUpdateOnRepair'] = forceUpdateOnRepairValue.value;
    }
    return map;
  }

  factory InstanceGroupManagerInstanceLifecyclePolicy3.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceLifecyclePolicy3(
      forceUpdateOnRepair: map['forceUpdateOnRepair'] == null
          ? null
          : InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepair3
              .fromValue(map['forceUpdateOnRepair'] as String),
    );
  }
}
