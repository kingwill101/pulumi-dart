// ignore_for_file: unused_element, unnecessary_cast


/// WorkloadPolicyConfig is the configuration of workload policy for autopilot clusters.
class WorkloadPolicyConfigResponse {
  /// If true, workloads can use NET_ADMIN capability.
  final bool allowNetAdmin;

  /// Creates a new [WorkloadPolicyConfigResponse].
  /// [allowNetAdmin] If true, workloads can use NET_ADMIN capability.
  WorkloadPolicyConfigResponse({
    required this.allowNetAdmin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNetAdmin': allowNetAdmin,
    };
  }

  factory WorkloadPolicyConfigResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadPolicyConfigResponse(
      allowNetAdmin: map['allowNetAdmin'] as bool,
    );
  }
}

