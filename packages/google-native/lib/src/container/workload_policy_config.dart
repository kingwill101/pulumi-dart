// ignore_for_file: unused_element, unnecessary_cast

/// WorkloadPolicyConfig is the configuration of workload policy for autopilot clusters.
class WorkloadPolicyConfig {
  /// If true, workloads can use NET_ADMIN capability.
  final bool? allowNetAdmin;

  /// Creates a new [WorkloadPolicyConfig].
  /// [allowNetAdmin] If true, workloads can use NET_ADMIN capability.
  WorkloadPolicyConfig({
    this.allowNetAdmin,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowNetAdminValue = allowNetAdmin;
    if (allowNetAdminValue != null) {
      map['allowNetAdmin'] = allowNetAdminValue;
    }
    return map;
  }

  factory WorkloadPolicyConfig.fromMap(Map<String, dynamic> map) {
    return WorkloadPolicyConfig(
      allowNetAdmin:
          map['allowNetAdmin'] == null ? null : map['allowNetAdmin'] as bool,
    );
  }
}
