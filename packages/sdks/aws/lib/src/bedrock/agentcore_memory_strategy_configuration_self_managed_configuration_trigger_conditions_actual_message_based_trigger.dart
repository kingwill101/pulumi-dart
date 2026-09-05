// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualMessageBasedTrigger {
  /// Number of messages that trigger memory processing. Accepts values from `1` to `50`.
  final pulumi.Input<int> messageCount;

  /// Creates a new [AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualMessageBasedTrigger].
  /// [messageCount] Number of messages that trigger memory processing. Accepts values from `1` to `50`.
  const AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualMessageBasedTrigger({
    required this.messageCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageCount': messageCount,
    };
  }

  factory AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualMessageBasedTrigger.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualMessageBasedTrigger(
      messageCount: pulumi.Input.fromValue((map['messageCount'] as num).toInt()),
    );
  }
}
