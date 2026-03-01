// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreGatewayWorkloadIdentityDetail {
  /// ARN of the workload identity.
  final String workloadIdentityArn;

  /// Creates a new [AgentcoreGatewayWorkloadIdentityDetail].
  /// [workloadIdentityArn] ARN of the workload identity.
  AgentcoreGatewayWorkloadIdentityDetail({required this.workloadIdentityArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'workloadIdentityArn': workloadIdentityArn};
  }

  factory AgentcoreGatewayWorkloadIdentityDetail.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreGatewayWorkloadIdentityDetail(
      workloadIdentityArn: map['workloadIdentityArn'] as String,
    );
  }
}
