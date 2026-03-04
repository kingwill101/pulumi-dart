// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout {
  final pulumi.Input<int> tcpIdleTimeoutSeconds;

  /// Creates a new [GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout].
  /// [tcpIdleTimeoutSeconds] Required.
  GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout({
    required this.tcpIdleTimeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tcpIdleTimeoutSeconds': tcpIdleTimeoutSeconds};
  }

  factory GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout(
      tcpIdleTimeoutSeconds: pulumi.Input.fromValue(
        map['tcpIdleTimeoutSeconds'] as int,
      ),
    );
  }
}
