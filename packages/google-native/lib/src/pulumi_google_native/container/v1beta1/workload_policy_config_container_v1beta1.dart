// ignore_for_file: unused_element, unnecessary_cast

/// WorkloadPolicyConfig is the configuration of workload policy for autopilot clusters.
class WorkloadPolicyConfigContainerV1beta1 {
  /// If true, workloads can use NET_ADMIN capability.
  final bool? allowNetAdmin;

  WorkloadPolicyConfigContainerV1beta1({
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

  factory WorkloadPolicyConfigContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return WorkloadPolicyConfigContainerV1beta1(
      allowNetAdmin:
          map['allowNetAdmin'] == null ? null : map['allowNetAdmin'] as bool,
    );
  }
}
