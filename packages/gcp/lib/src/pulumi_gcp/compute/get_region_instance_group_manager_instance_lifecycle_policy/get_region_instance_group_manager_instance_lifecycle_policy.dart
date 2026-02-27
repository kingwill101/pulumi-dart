// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_region_instance_group_manager_instance_lifecycle_policy_on_repair/get_region_instance_group_manager_instance_lifecycle_policy_on_repair.dart';

class GetRegionInstanceGroupManagerInstanceLifecyclePolicy {
  /// Specifies the action that a MIG performs on a failed VM. If the value of the "on_failed_health_check" field is DEFAULT_ACTION, then the same action also applies to the VMs on which your application fails a health check. Valid values are: REPAIR, DO_NOTHING. If REPAIR (default), then MIG automatically repairs a failed VM by recreating it. For more information, see about repairing VMs in a MIG. If DO_NOTHING, then MIG does not repair a failed VM.
  final String defaultActionOnFailure;

  /// Specifies whether to apply the group's latest configuration when repairing a VM. Valid options are: YES, NO. If YES and you updated the group's instance template or per-instance configurations after the VM was created, then these changes are applied when VM is repaired. If NO (default), then updates are applied in accordance with the group's update policy type.
  final String forceUpdateOnRepair;

  /// Specifies the action that a MIG performs on an unhealthy VM. A VM is marked as unhealthy when the application running on that VM fails a health check. Valid values are: DEFAULT_ACTION, DO_NOTHING, REPAIR. If DEFAULT_ACTION (default), then MIG uses the same action configured for the  "default_action_on_failure" field. If DO_NOTHING, then MIG does not repair unhealthy VM. If REPAIR, then MIG automatically repairs an unhealthy VM by recreating it.
  final String onFailedHealthCheck;

  /// Configuration for VM repairs in the MIG.
  final List<GetRegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair>
      onRepairs;

  GetRegionInstanceGroupManagerInstanceLifecyclePolicy({
    required this.defaultActionOnFailure,
    required this.forceUpdateOnRepair,
    required this.onFailedHealthCheck,
    required this.onRepairs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultActionOnFailure'] = defaultActionOnFailure;
    map['forceUpdateOnRepair'] = forceUpdateOnRepair;
    map['onFailedHealthCheck'] = onFailedHealthCheck;
    map['onRepairs'] = pulumi.Input.encodeList<
        GetRegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair,
        Map<String, dynamic>>(onRepairs, (value) => value.toMap());
    return map;
  }

  factory GetRegionInstanceGroupManagerInstanceLifecyclePolicy.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerInstanceLifecyclePolicy(
      defaultActionOnFailure: map['defaultActionOnFailure'] as String,
      forceUpdateOnRepair: map['forceUpdateOnRepair'] as String,
      onFailedHealthCheck: map['onFailedHealthCheck'] as String,
      onRepairs: pulumi.Input.decodeList<
              GetRegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair>(
          map['onRepairs'],
          (value) =>
              GetRegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
