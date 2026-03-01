// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_auto_healing_policy_auto_healing_triggers_on_health_check.dart';

class InstanceGroupManagerAutoHealingPolicyAutoHealingTriggers {
  /// If you have configured an application-based health check for the group, this field controls whether to trigger VM autohealing based on a failed health check. Valid values are: - ON (default): The group recreates running VMs that fail the application-based health check. - OFF: When set to OFF, you can still observe instance health state, but the group does not recreate VMs that fail the application-based health check. This is useful for troubleshooting and setting up your health check configuration.
  final InstanceGroupManagerAutoHealingPolicyAutoHealingTriggersOnHealthCheck?
  onHealthCheck;

  /// Creates a new [InstanceGroupManagerAutoHealingPolicyAutoHealingTriggers].
  /// [onHealthCheck] If you have configured an application-based health check for the group, this field controls whether to trigger VM autohealing based on a failed health check. Valid values are: - ON (default): The group recreates running VMs that fail the application-based health check. - OFF: When set to OFF, you can still observe instance health state, but the group does not recreate VMs that fail the application-based health check. This is useful for troubleshooting and setting up your health check configuration.
  InstanceGroupManagerAutoHealingPolicyAutoHealingTriggers({
    this.onHealthCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onHealthCheck': ?onHealthCheck == null ? null : onHealthCheck!.value,
    };
  }

  factory InstanceGroupManagerAutoHealingPolicyAutoHealingTriggers.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceGroupManagerAutoHealingPolicyAutoHealingTriggers(
      onHealthCheck: map['onHealthCheck'] == null
          ? null
          : InstanceGroupManagerAutoHealingPolicyAutoHealingTriggersOnHealthCheck.fromValue(
              map['onHealthCheck'] as String,
            ),
    );
  }
}
