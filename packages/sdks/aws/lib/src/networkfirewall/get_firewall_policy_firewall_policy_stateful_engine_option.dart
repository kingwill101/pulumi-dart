// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_firewall_policy_stateful_engine_option_flow_timeout.dart';

class GetFirewallPolicyFirewallPolicyStatefulEngineOption {
  final List<GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout> flowTimeouts;
  final String ruleOrder;
  final String streamExceptionPolicy;

  /// Creates a new [GetFirewallPolicyFirewallPolicyStatefulEngineOption].
  /// [flowTimeouts] Required.
  /// [ruleOrder] Required.
  /// [streamExceptionPolicy] Required.
  GetFirewallPolicyFirewallPolicyStatefulEngineOption({
    required this.flowTimeouts,
    required this.ruleOrder,
    required this.streamExceptionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flowTimeouts': pulumi.Input.encodeList<GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout, Map<String, dynamic>>(flowTimeouts, (value) => value.toMap()),
      'ruleOrder': ruleOrder,
      'streamExceptionPolicy': streamExceptionPolicy,
    };
  }

  factory GetFirewallPolicyFirewallPolicyStatefulEngineOption.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyStatefulEngineOption(
      flowTimeouts: pulumi.Input.decodeList<GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout>(map['flowTimeouts'], (value) => GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout.fromMap((value as Map).cast<String, dynamic>())),
      ruleOrder: map['ruleOrder'] as String,
      streamExceptionPolicy: map['streamExceptionPolicy'] as String,
    );
  }
}

