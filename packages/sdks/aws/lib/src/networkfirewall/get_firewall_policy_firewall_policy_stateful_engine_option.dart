// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_firewall_policy_stateful_engine_option_flow_timeout.dart';

class GetFirewallPolicyFirewallPolicyStatefulEngineOption {
  final pulumi.Input<
    List<GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout>
  >
  flowTimeouts;
  final pulumi.Input<String> ruleOrder;
  final pulumi.Input<String> streamExceptionPolicy;

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
      'flowTimeouts':
          pulumi.Input.mapInputValue<
            List<
              GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout
            >,
            List<Map<String, dynamic>>
          >(
            flowTimeouts,
            (value) =>
                pulumi.Input.encodeList<
                  GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ruleOrder': ruleOrder,
      'streamExceptionPolicy': streamExceptionPolicy,
    };
  }

  factory GetFirewallPolicyFirewallPolicyStatefulEngineOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFirewallPolicyFirewallPolicyStatefulEngineOption(
      flowTimeouts: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout
        >(
          map['flowTimeouts']!,
          (value) =>
              GetFirewallPolicyFirewallPolicyStatefulEngineOptionFlowTimeout.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      ruleOrder: pulumi.Input.fromValue(map['ruleOrder'] as String),
      streamExceptionPolicy: pulumi.Input.fromValue(
        map['streamExceptionPolicy'] as String,
      ),
    );
  }
}
