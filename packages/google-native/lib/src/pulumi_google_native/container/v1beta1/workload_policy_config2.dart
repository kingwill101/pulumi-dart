// ignore_for_file: unused_element, unnecessary_cast

/// WorkloadPolicyConfig is the configuration of workload policy for autopilot clusters.
class WorkloadPolicyConfig2 {
  /// If true, workloads can use NET_ADMIN capability.
  final bool? allowNetAdmin;

  WorkloadPolicyConfig2({
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

  factory WorkloadPolicyConfig2.fromMap(Map<String, dynamic> map) {
    return WorkloadPolicyConfig2(
      allowNetAdmin:
          map['allowNetAdmin'] == null ? null : map['allowNetAdmin'] as bool,
    );
  }
}
