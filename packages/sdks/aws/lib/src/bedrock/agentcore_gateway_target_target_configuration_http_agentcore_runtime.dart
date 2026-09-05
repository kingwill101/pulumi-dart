// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime {
  /// ARN of the AgentCore Runtime agent that the gateway routes requests to.
  final pulumi.Input<String> arn;
  /// Runtime qualifier identifying a specific endpoint version. Defaults to `DEFAULT` when not set.
  final pulumi.Input<String?>? qualifier;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime].
  /// [arn] ARN of the AgentCore Runtime agent that the gateway routes requests to.
  /// [qualifier] Runtime qualifier identifying a specific endpoint version. Defaults to `DEFAULT` when not set.
  const AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime({
    required this.arn,
    this.qualifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'qualifier': ?qualifier,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
