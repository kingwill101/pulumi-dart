// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTokenBasedTrigger {
  /// Number of tokens that trigger memory processing. Accepts values from `100` to `500000`.
  final pulumi.Input<int> tokenCount;

  /// Creates a new [AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTokenBasedTrigger].
  /// [tokenCount] Number of tokens that trigger memory processing. Accepts values from `100` to `500000`.
  const AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTokenBasedTrigger({
    required this.tokenCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenCount': tokenCount,
    };
  }

  factory AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTokenBasedTrigger.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTokenBasedTrigger(
      tokenCount: pulumi.Input.fromValue((map['tokenCount'] as num).toInt()),
    );
  }
}
