// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayPolicyEngineConfiguration {
  /// ARN of the policy engine. The policy engine contains Cedar policies that define fine-grained authorization rules specifying who can perform what actions on which resources as agents interact through the gateway.
  final pulumi.Input<String> arn;
  /// Enforcement mode for the policy engine. Valid values: `LOG_ONLY`, `ENFORCE`. In `LOG_ONLY` mode, the policy engine evaluates actions and records traces but does not enforce decisions. In `ENFORCE` mode, the policy engine evaluates actions and enforces allow/deny decisions.
  final pulumi.Input<String> mode;

  /// Creates a new [AgentcoreGatewayPolicyEngineConfiguration].
  /// [arn] ARN of the policy engine. The policy engine contains Cedar policies that define fine-grained authorization rules specifying who can perform what actions on which resources as agents interact through the gateway.
  /// [mode] Enforcement mode for the policy engine. Valid values: `LOG_ONLY`, `ENFORCE`. In `LOG_ONLY` mode, the policy engine evaluates actions and records traces but does not enforce decisions. In `ENFORCE` mode, the policy engine evaluates actions and enforces allow/deny decisions.
  const AgentcoreGatewayPolicyEngineConfiguration({
    required this.arn,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'mode': mode,
    };
  }

  factory AgentcoreGatewayPolicyEngineConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayPolicyEngineConfiguration(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
