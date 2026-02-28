// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerResourcePolicies {
  /// The URL of the workload policy that is specified for this managed instance group. It can be a full or partial URL.
  final String? workloadPolicy;

  /// Creates a new [InstanceGroupManagerResourcePolicies].
  /// [workloadPolicy] The URL of the workload policy that is specified for this managed instance group. It can be a full or partial URL.
  InstanceGroupManagerResourcePolicies({
    this.workloadPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final workloadPolicyValue = workloadPolicy;
    if (workloadPolicyValue != null) {
      map['workloadPolicy'] = workloadPolicyValue;
    }
    return map;
  }

  factory InstanceGroupManagerResourcePolicies.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerResourcePolicies(
      workloadPolicy: map['workloadPolicy'] == null
          ? null
          : map['workloadPolicy'] as String,
    );
  }
}
