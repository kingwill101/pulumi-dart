// ignore_for_file: unused_element, unnecessary_cast

/// WorkloadPolicyConfig is the configuration of workload policy for autopilot clusters.
class WorkloadPolicyConfigResponseContainerV1beta1 {
  /// If true, workloads can use NET_ADMIN capability.
  final bool allowNetAdmin;

  WorkloadPolicyConfigResponseContainerV1beta1({
    required this.allowNetAdmin,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowNetAdmin'] = allowNetAdmin;
    return map;
  }

  factory WorkloadPolicyConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return WorkloadPolicyConfigResponseContainerV1beta1(
      allowNetAdmin: map['allowNetAdmin'] as bool,
    );
  }
}
