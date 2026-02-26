// ignore_for_file: unused_element, unnecessary_cast

class GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout {
  final int tcpIdleTimeoutSeconds;

  GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout({
    required this.tcpIdleTimeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tcpIdleTimeoutSeconds'] = tcpIdleTimeoutSeconds;
    return map;
  }

  factory GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout(
      tcpIdleTimeoutSeconds: map['tcpIdleTimeoutSeconds'] as int,
    );
  }
}
