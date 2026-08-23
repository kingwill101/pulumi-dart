// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayWorkloadIdentityDetail {
  /// ARN of the workload identity.
  final pulumi.Input<String> workloadIdentityArn;

  /// Creates a new [AgentcoreGatewayWorkloadIdentityDetail].
  /// [workloadIdentityArn] ARN of the workload identity.
  const AgentcoreGatewayWorkloadIdentityDetail({
    required this.workloadIdentityArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workloadIdentityArn': workloadIdentityArn,
    };
  }

  factory AgentcoreGatewayWorkloadIdentityDetail.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayWorkloadIdentityDetail(
      workloadIdentityArn: pulumi.Input.fromValue(map['workloadIdentityArn'] as String),
    );
  }
}
