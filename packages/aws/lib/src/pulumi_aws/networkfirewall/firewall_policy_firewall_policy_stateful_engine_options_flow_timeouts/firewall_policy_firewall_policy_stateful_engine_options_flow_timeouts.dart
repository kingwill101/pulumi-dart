// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyFirewallPolicyStatefulEngineOptionsFlowTimeouts {
  /// Number of seconds that can pass without any TCP traffic sent through the firewall before the firewall determines that the connection is idle. After the idle timeout passes, data packets are dropped, however, the next TCP SYN packet is considered a new flow and is processed by the firewall. Clients or targets can use TCP keepalive packets to reset the idle timeout. Default value: <span pulumi-lang-nodejs="`350`" pulumi-lang-dotnet="`350`" pulumi-lang-go="`350`" pulumi-lang-python="`350`" pulumi-lang-yaml="`350`" pulumi-lang-java="`350`">`350`</span>.
  final int? tcpIdleTimeoutSeconds;

  FirewallPolicyFirewallPolicyStatefulEngineOptionsFlowTimeouts({
    this.tcpIdleTimeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tcpIdleTimeoutSecondsValue = tcpIdleTimeoutSeconds;
    if (tcpIdleTimeoutSecondsValue != null) {
      map['tcpIdleTimeoutSeconds'] = tcpIdleTimeoutSecondsValue;
    }
    return map;
  }

  factory FirewallPolicyFirewallPolicyStatefulEngineOptionsFlowTimeouts.fromMap(
      Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyStatefulEngineOptionsFlowTimeouts(
      tcpIdleTimeoutSeconds: map['tcpIdleTimeoutSeconds'] == null
          ? null
          : map['tcpIdleTimeoutSeconds'] as int,
    );
  }
}
