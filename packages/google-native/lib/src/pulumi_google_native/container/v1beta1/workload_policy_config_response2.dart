// ignore_for_file: unused_element, unnecessary_cast

/// WorkloadPolicyConfig is the configuration of workload policy for autopilot clusters.
class WorkloadPolicyConfigResponse2 {
  /// If true, workloads can use NET_ADMIN capability.
  final bool allowNetAdmin;

  WorkloadPolicyConfigResponse2({
    required this.allowNetAdmin,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowNetAdmin'] = allowNetAdmin;
    return map;
  }

  factory WorkloadPolicyConfigResponse2.fromMap(Map<String, dynamic> map) {
    return WorkloadPolicyConfigResponse2(
      allowNetAdmin: map['allowNetAdmin'] as bool,
    );
  }
}
