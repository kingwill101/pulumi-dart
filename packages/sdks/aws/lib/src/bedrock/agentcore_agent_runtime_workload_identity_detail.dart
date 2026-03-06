// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreAgentRuntimeWorkloadIdentityDetail {
  /// ARN of the workload identity.
  final pulumi.Input<String> workloadIdentityArn;

  /// Creates a new [AgentcoreAgentRuntimeWorkloadIdentityDetail].
  /// [workloadIdentityArn] ARN of the workload identity.
  const AgentcoreAgentRuntimeWorkloadIdentityDetail({
    required this.workloadIdentityArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workloadIdentityArn': workloadIdentityArn,
    };
  }

  factory AgentcoreAgentRuntimeWorkloadIdentityDetail.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeWorkloadIdentityDetail(
      workloadIdentityArn: pulumi.Input.fromValue(map['workloadIdentityArn'] as String),
    );
  }
}

