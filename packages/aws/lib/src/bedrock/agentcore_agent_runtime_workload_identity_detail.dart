// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreAgentRuntimeWorkloadIdentityDetail {
  /// ARN of the workload identity.
  final String workloadIdentityArn;

  /// Creates a new [AgentcoreAgentRuntimeWorkloadIdentityDetail].
  /// [workloadIdentityArn] ARN of the workload identity.
  AgentcoreAgentRuntimeWorkloadIdentityDetail({
    required this.workloadIdentityArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'workloadIdentityArn': workloadIdentityArn};
  }

  factory AgentcoreAgentRuntimeWorkloadIdentityDetail.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreAgentRuntimeWorkloadIdentityDetail(
      workloadIdentityArn: map['workloadIdentityArn'] as String,
    );
  }
}
