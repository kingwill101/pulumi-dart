// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleV2ActionExternalIntegrationConfiguration {
  /// The ARN of the connector.
  final pulumi.Input<String> connectorArn;

  /// Creates a new [AutomationRuleV2ActionExternalIntegrationConfiguration].
  /// [connectorArn] The ARN of the connector.
  const AutomationRuleV2ActionExternalIntegrationConfiguration({
    required this.connectorArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorArn': connectorArn,
    };
  }

  factory AutomationRuleV2ActionExternalIntegrationConfiguration.fromMap(Map<String, dynamic> map) {
    return AutomationRuleV2ActionExternalIntegrationConfiguration(
      connectorArn: pulumi.Input.fromValue(map['connectorArn'] as String),
    );
  }
}
