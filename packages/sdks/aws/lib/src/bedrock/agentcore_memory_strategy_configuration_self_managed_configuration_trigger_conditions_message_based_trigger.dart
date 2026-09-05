// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsMessageBasedTrigger {
  /// Number of messages that trigger memory processing. Accepts values from `1` to `50`.
  final pulumi.Input<int> messageCount;

  /// Creates a new [AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsMessageBasedTrigger].
  /// [messageCount] Number of messages that trigger memory processing. Accepts values from `1` to `50`.
  const AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsMessageBasedTrigger({
    required this.messageCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageCount': messageCount,
    };
  }

  factory AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsMessageBasedTrigger.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsMessageBasedTrigger(
      messageCount: pulumi.Input.fromValue((map['messageCount'] as num).toInt()),
    );
  }
}
