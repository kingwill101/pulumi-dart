// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyFirewallPolicyStatefulEngineOptionsFlowTimeouts {
  /// Number of seconds that can pass without any TCP traffic sent through the firewall before the firewall determines that the connection is idle. After the idle timeout passes, data packets are dropped, however, the next TCP SYN packet is considered a new flow and is processed by the firewall. Clients or targets can use TCP keepalive packets to reset the idle timeout. Default value: `350`.
  final pulumi.Input<int>? tcpIdleTimeoutSeconds;

  /// Creates a new [FirewallPolicyFirewallPolicyStatefulEngineOptionsFlowTimeouts].
  /// [tcpIdleTimeoutSeconds] Number of seconds that can pass without any TCP traffic sent through the firewall before the firewall determines that the connection is idle. After the idle timeout passes, data packets are dropped, however, the next TCP SYN packet is considered a new flow and is processed by the firewall. Clients or targets can use TCP keepalive packets to reset the idle timeout. Default value: `350`.
  FirewallPolicyFirewallPolicyStatefulEngineOptionsFlowTimeouts({
    this.tcpIdleTimeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tcpIdleTimeoutSeconds': ?tcpIdleTimeoutSeconds,
    };
  }

  factory FirewallPolicyFirewallPolicyStatefulEngineOptionsFlowTimeouts.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyStatefulEngineOptionsFlowTimeouts(
      tcpIdleTimeoutSeconds: map['tcpIdleTimeoutSeconds'] == null ? null : ((map['tcpIdleTimeoutSeconds'] as int).input()).input(),
    );
  }
}

