// ignore_for_file: unused_element, unnecessary_cast

import '../region_instance_group_manager_instance_lifecycle_policy_on_repair/region_instance_group_manager_instance_lifecycle_policy_on_repair.dart';

class RegionInstanceGroupManagerInstanceLifecyclePolicy {
  /// , Specifies the action that a MIG performs on a failed VM. If the value of the <span pulumi-lang-nodejs="`onFailedHealthCheck`" pulumi-lang-dotnet="`OnFailedHealthCheck`" pulumi-lang-go="`onFailedHealthCheck`" pulumi-lang-python="`on_failed_health_check`" pulumi-lang-yaml="`onFailedHealthCheck`" pulumi-lang-java="`onFailedHealthCheck`">`on_failed_health_check`</span> field is `DEFAULT_ACTION`, then the same action also applies to the VMs on which your application fails a health check. Valid options are: `DO_NOTHING`, `REPAIR`. If `DO_NOTHING`, then MIG does not repair a failed VM. If `REPAIR` (default), then MIG automatically repairs a failed VM by recreating it. For more information, see about repairing VMs in a MIG.
  final String? defaultActionOnFailure;

  /// , Specifies whether to apply the group's latest configuration when repairing a VM. Valid options are: `YES`, `NO`. If `YES` and you updated the group's instance template or per-instance configurations after the VM was created, then these changes are applied when VM is repaired. If `NO` (default), then updates are applied in accordance with the group's update policy type.
  final String? forceUpdateOnRepair;

  /// , Specifies the action that a MIG performs on an unhealthy VM. A VM is marked as unhealthy when the application running on that VM fails a health check. Valid options are: `DEFAULT_ACTION`, `DO_NOTHING`, `REPAIR`. If `DEFAULT_ACTION` (default), then MIG uses the same action configured for the  <span pulumi-lang-nodejs="`defaultActionOnFailure`" pulumi-lang-dotnet="`DefaultActionOnFailure`" pulumi-lang-go="`defaultActionOnFailure`" pulumi-lang-python="`default_action_on_failure`" pulumi-lang-yaml="`defaultActionOnFailure`" pulumi-lang-java="`defaultActionOnFailure`">`default_action_on_failure`</span> field. If `DO_NOTHING`, then MIG does not repair unhealthy VM. If `REPAIR`, then MIG automatically repairs an unhealthy VM by recreating it. For more information, see about repairing VMs in a MIG.
  final String? onFailedHealthCheck;

  /// , Configuration for VM repairs in the MIG. Structure is documented below.
  /// - - -
  final RegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair? onRepair;

  RegionInstanceGroupManagerInstanceLifecyclePolicy({
    this.defaultActionOnFailure,
    this.forceUpdateOnRepair,
    this.onFailedHealthCheck,
    this.onRepair,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultActionOnFailureValue = defaultActionOnFailure;
    if (defaultActionOnFailureValue != null) {
      map['defaultActionOnFailure'] = defaultActionOnFailureValue;
    }
    final forceUpdateOnRepairValue = forceUpdateOnRepair;
    if (forceUpdateOnRepairValue != null) {
      map['forceUpdateOnRepair'] = forceUpdateOnRepairValue;
    }
    final onFailedHealthCheckValue = onFailedHealthCheck;
    if (onFailedHealthCheckValue != null) {
      map['onFailedHealthCheck'] = onFailedHealthCheckValue;
    }
    final onRepairValue = onRepair;
    if (onRepairValue != null) {
      map['onRepair'] = onRepairValue.toMap();
    }
    return map;
  }

  factory RegionInstanceGroupManagerInstanceLifecyclePolicy.fromMap(
      Map<String, dynamic> map) {
    return RegionInstanceGroupManagerInstanceLifecyclePolicy(
      defaultActionOnFailure: map['defaultActionOnFailure'] == null
          ? null
          : map['defaultActionOnFailure'] as String,
      forceUpdateOnRepair: map['forceUpdateOnRepair'] == null
          ? null
          : map['forceUpdateOnRepair'] as String,
      onFailedHealthCheck: map['onFailedHealthCheck'] == null
          ? null
          : map['onFailedHealthCheck'] as String,
      onRepair: map['onRepair'] == null
          ? null
          : RegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair.fromMap(
              (map['onRepair'] as Map).cast<String, dynamic>()),
    );
  }
}
