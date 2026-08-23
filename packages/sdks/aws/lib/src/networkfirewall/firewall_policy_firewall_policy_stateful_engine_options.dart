// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_firewall_policy_stateful_engine_options_flow_timeouts.dart';

class FirewallPolicyFirewallPolicyStatefulEngineOptions {
  /// Amount of time that can pass without any traffic sent through the firewall before the firewall determines that the connection is idle.
  final pulumi.Input<FirewallPolicyFirewallPolicyStatefulEngineOptionsFlowTimeouts>? flowTimeouts;
  /// Indicates how to manage the order of stateful rule evaluation for the policy. Default value: `DEFAULT_ACTION_ORDER`. Valid values: `DEFAULT_ACTION_ORDER`, `STRICT_ORDER`.
  final pulumi.Input<String>? ruleOrder;
  /// Describes how to treat traffic which has broken midstream. Default value: `DROP`. Valid values: `DROP`, `CONTINUE`, `REJECT`.
  final pulumi.Input<String>? streamExceptionPolicy;

  /// Creates a new [FirewallPolicyFirewallPolicyStatefulEngineOptions].
  /// [flowTimeouts] Amount of time that can pass without any traffic sent through the firewall before the firewall determines that the connection is idle.
  /// [ruleOrder] Indicates how to manage the order of stateful rule evaluation for the policy. Default value: `DEFAULT_ACTION_ORDER`. Valid values: `DEFAULT_ACTION_ORDER`, `STRICT_ORDER`.
  /// [streamExceptionPolicy] Describes how to treat traffic which has broken midstream. Default value: `DROP`. Valid values: `DROP`, `CONTINUE`, `REJECT`.
  const FirewallPolicyFirewallPolicyStatefulEngineOptions({
    this.flowTimeouts,
    this.ruleOrder,
    this.streamExceptionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flowTimeouts': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyFirewallPolicyStatefulEngineOptionsFlowTimeouts, Map<String, dynamic>>(flowTimeouts, (value) => value.toMap()),
      'ruleOrder': ?ruleOrder,
      'streamExceptionPolicy': ?streamExceptionPolicy,
    };
  }

  factory FirewallPolicyFirewallPolicyStatefulEngineOptions.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyStatefulEngineOptions(
      flowTimeouts: (() { final guardedValue = map['flowTimeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyFirewallPolicyStatefulEngineOptionsFlowTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleOrder: (() { final guardedValue = map['ruleOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamExceptionPolicy: (() { final guardedValue = map['streamExceptionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
