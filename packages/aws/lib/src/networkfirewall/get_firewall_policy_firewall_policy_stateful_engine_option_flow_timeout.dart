// ignore_for_file: unused_element, unnecessary_cast


class GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout {
  final int tcpIdleTimeoutSeconds;

  /// Creates a new [GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout].
  /// [tcpIdleTimeoutSeconds] Required.
  GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout({
    required this.tcpIdleTimeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tcpIdleTimeoutSeconds': tcpIdleTimeoutSeconds,
    };
  }

  factory GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout(
      tcpIdleTimeoutSeconds: map['tcpIdleTimeoutSeconds'] as int,
    );
  }
}

