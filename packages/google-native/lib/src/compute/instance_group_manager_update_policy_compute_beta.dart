// ignore_for_file: unused_element, unnecessary_cast

import 'fixed_or_percent_compute_beta.dart';
import 'instance_group_manager_update_policy_instance_redistribution_type_compute_beta.dart';
import 'instance_group_manager_update_policy_minimal_action_compute_beta.dart';
import 'instance_group_manager_update_policy_most_disruptive_allowed_action_compute_beta.dart';
import 'instance_group_manager_update_policy_replacement_method_compute_beta.dart';
import 'instance_group_manager_update_policy_type_compute_beta.dart';

class InstanceGroupManagerUpdatePolicyComputeBeta {
  /// The instance redistribution policy for regional managed instance groups. Valid values are: - PROACTIVE (default): The group attempts to maintain an even distribution of VM instances across zones in the region. - NONE: For non-autoscaled groups, proactive redistribution is disabled.
  final InstanceGroupManagerUpdatePolicyInstanceRedistributionTypeComputeBeta?
      instanceRedistributionType;

  /// The maximum number of instances that can be created above the specified targetSize during the update process. This value can be either a fixed number or, if the group has 10 or more instances, a percentage. If you set a percentage, the number of instances is rounded if necessary. The default value for maxSurge is a fixed value equal to the number of zones in which the managed instance group operates. At least one of either maxSurge or maxUnavailable must be greater than 0. Learn more about maxSurge.
  final FixedOrPercentComputeBeta? maxSurge;

  /// The maximum number of instances that can be unavailable during the update process. An instance is considered available if all of the following conditions are satisfied: - The instance's status is RUNNING. - If there is a health check on the instance group, the instance's health check status must be HEALTHY at least once. If there is no health check on the group, then the instance only needs to have a status of RUNNING to be considered available. This value can be either a fixed number or, if the group has 10 or more instances, a percentage. If you set a percentage, the number of instances is rounded if necessary. The default value for maxUnavailable is a fixed value equal to the number of zones in which the managed instance group operates. At least one of either maxSurge or maxUnavailable must be greater than 0. Learn more about maxUnavailable.
  final FixedOrPercentComputeBeta? maxUnavailable;

  /// Minimum number of seconds to wait for after a newly created instance becomes available. This value must be from range [0, 3600].
  final int? minReadySec;

  /// Minimal action to be taken on an instance. Use this option to minimize disruption as much as possible or to apply a more disruptive action than is necessary. - To limit disruption as much as possible, set the minimal action to REFRESH. If your update requires a more disruptive action, Compute Engine performs the necessary action to execute the update. - To apply a more disruptive action than is strictly necessary, set the minimal action to RESTART or REPLACE. For example, Compute Engine does not need to restart a VM to change its metadata. But if your application reads instance metadata only when a VM is restarted, you can set the minimal action to RESTART in order to pick up metadata changes.
  final InstanceGroupManagerUpdatePolicyMinimalActionComputeBeta? minimalAction;

  /// Most disruptive action that is allowed to be taken on an instance. You can specify either NONE to forbid any actions, REFRESH to avoid restarting the VM and to limit disruption as much as possible. RESTART to allow actions that can be applied without instance replacing or REPLACE to allow all possible actions. If the Updater determines that the minimal update action needed is more disruptive than most disruptive allowed action you specify it will not perform the update at all.
  final InstanceGroupManagerUpdatePolicyMostDisruptiveAllowedActionComputeBeta?
      mostDisruptiveAllowedAction;

  /// What action should be used to replace instances. See minimal_action.REPLACE
  final InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta?
      replacementMethod;

  /// The type of update process. You can specify either PROACTIVE so that the MIG automatically updates VMs to the latest configurations or OPPORTUNISTIC so that you can select the VMs that you want to update.
  final InstanceGroupManagerUpdatePolicyTypeComputeBeta? type;

  /// Creates a new [InstanceGroupManagerUpdatePolicyComputeBeta].
  /// [instanceRedistributionType] The instance redistribution policy for regional managed instance groups. Valid values are: - PROACTIVE (default): The group attempts to maintain an even distribution of VM instances across zones in the region. - NONE: For non-autoscaled groups, proactive redistribution is disabled.
  /// [maxSurge] The maximum number of instances that can be created above the specified targetSize during the update process. This value can be either a fixed number or, if the group has 10 or more instances, a percentage. If you set a percentage, the number of instances is rounded if necessary. The default value for maxSurge is a fixed value equal to the number of zones in which the managed instance group operates. At least one of either maxSurge or maxUnavailable must be greater than 0. Learn more about maxSurge.
  /// [maxUnavailable] The maximum number of instances that can be unavailable during the update process. An instance is considered available if all of the following conditions are satisfied: - The instance's status is RUNNING. - If there is a health check on the instance group, the instance's health check status must be HEALTHY at least once. If there is no health check on the group, then the instance only needs to have a status of RUNNING to be considered available. This value can be either a fixed number or, if the group has 10 or more instances, a percentage. If you set a percentage, the number of instances is rounded if necessary. The default value for maxUnavailable is a fixed value equal to the number of zones in which the managed instance group operates. At least one of either maxSurge or maxUnavailable must be greater than 0. Learn more about maxUnavailable.
  /// [minReadySec] Minimum number of seconds to wait for after a newly created instance becomes available. This value must be from range [0, 3600].
  /// [minimalAction] Minimal action to be taken on an instance. Use this option to minimize disruption as much as possible or to apply a more disruptive action than is necessary. - To limit disruption as much as possible, set the minimal action to REFRESH. If your update requires a more disruptive action, Compute Engine performs the necessary action to execute the update. - To apply a more disruptive action than is strictly necessary, set the minimal action to RESTART or REPLACE. For example, Compute Engine does not need to restart a VM to change its metadata. But if your application reads instance metadata only when a VM is restarted, you can set the minimal action to RESTART in order to pick up metadata changes.
  /// [mostDisruptiveAllowedAction] Most disruptive action that is allowed to be taken on an instance. You can specify either NONE to forbid any actions, REFRESH to avoid restarting the VM and to limit disruption as much as possible. RESTART to allow actions that can be applied without instance replacing or REPLACE to allow all possible actions. If the Updater determines that the minimal update action needed is more disruptive than most disruptive allowed action you specify it will not perform the update at all.
  /// [replacementMethod] What action should be used to replace instances. See minimal_action.REPLACE
  /// [type] The type of update process. You can specify either PROACTIVE so that the MIG automatically updates VMs to the latest configurations or OPPORTUNISTIC so that you can select the VMs that you want to update.
  InstanceGroupManagerUpdatePolicyComputeBeta({
    this.instanceRedistributionType,
    this.maxSurge,
    this.maxUnavailable,
    this.minReadySec,
    this.minimalAction,
    this.mostDisruptiveAllowedAction,
    this.replacementMethod,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceRedistributionTypeValue = instanceRedistributionType;
    if (instanceRedistributionTypeValue != null) {
      map['instanceRedistributionType'] = instanceRedistributionTypeValue.value;
    }
    final maxSurgeValue = maxSurge;
    if (maxSurgeValue != null) {
      map['maxSurge'] = maxSurgeValue.toMap();
    }
    final maxUnavailableValue = maxUnavailable;
    if (maxUnavailableValue != null) {
      map['maxUnavailable'] = maxUnavailableValue.toMap();
    }
    final minReadySecValue = minReadySec;
    if (minReadySecValue != null) {
      map['minReadySec'] = minReadySecValue;
    }
    final minimalActionValue = minimalAction;
    if (minimalActionValue != null) {
      map['minimalAction'] = minimalActionValue.value;
    }
    final mostDisruptiveAllowedActionValue = mostDisruptiveAllowedAction;
    if (mostDisruptiveAllowedActionValue != null) {
      map['mostDisruptiveAllowedAction'] =
          mostDisruptiveAllowedActionValue.value;
    }
    final replacementMethodValue = replacementMethod;
    if (replacementMethodValue != null) {
      map['replacementMethod'] = replacementMethodValue.value;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory InstanceGroupManagerUpdatePolicyComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerUpdatePolicyComputeBeta(
      instanceRedistributionType: map['instanceRedistributionType'] == null
          ? null
          : InstanceGroupManagerUpdatePolicyInstanceRedistributionTypeComputeBeta
              .fromValue(map['instanceRedistributionType'] as String),
      maxSurge: map['maxSurge'] == null
          ? null
          : FixedOrPercentComputeBeta.fromMap(
              (map['maxSurge'] as Map).cast<String, dynamic>()),
      maxUnavailable: map['maxUnavailable'] == null
          ? null
          : FixedOrPercentComputeBeta.fromMap(
              (map['maxUnavailable'] as Map).cast<String, dynamic>()),
      minReadySec:
          map['minReadySec'] == null ? null : map['minReadySec'] as int,
      minimalAction: map['minimalAction'] == null
          ? null
          : InstanceGroupManagerUpdatePolicyMinimalActionComputeBeta.fromValue(
              map['minimalAction'] as String),
      mostDisruptiveAllowedAction: map['mostDisruptiveAllowedAction'] == null
          ? null
          : InstanceGroupManagerUpdatePolicyMostDisruptiveAllowedActionComputeBeta
              .fromValue(map['mostDisruptiveAllowedAction'] as String),
      replacementMethod: map['replacementMethod'] == null
          ? null
          : InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta
              .fromValue(map['replacementMethod'] as String),
      type: map['type'] == null
          ? null
          : InstanceGroupManagerUpdatePolicyTypeComputeBeta.fromValue(
              map['type'] as String),
    );
  }
}
