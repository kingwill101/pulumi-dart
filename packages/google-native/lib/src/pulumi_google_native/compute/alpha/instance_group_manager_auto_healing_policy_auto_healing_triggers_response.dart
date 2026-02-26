// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerAutoHealingPolicyAutoHealingTriggersResponse {
  /// If you have configured an application-based health check for the group, this field controls whether to trigger VM autohealing based on a failed health check. Valid values are: - ON (default): The group recreates running VMs that fail the application-based health check. - OFF: When set to OFF, you can still observe instance health state, but the group does not recreate VMs that fail the application-based health check. This is useful for troubleshooting and setting up your health check configuration.
  final String onHealthCheck;

  InstanceGroupManagerAutoHealingPolicyAutoHealingTriggersResponse({
    required this.onHealthCheck,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['onHealthCheck'] = onHealthCheck;
    return map;
  }

  factory InstanceGroupManagerAutoHealingPolicyAutoHealingTriggersResponse.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerAutoHealingPolicyAutoHealingTriggersResponse(
      onHealthCheck: map['onHealthCheck'] as String,
    );
  }
}
