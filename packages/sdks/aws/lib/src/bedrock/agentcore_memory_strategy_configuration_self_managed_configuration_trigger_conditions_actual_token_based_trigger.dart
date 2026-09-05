// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualTokenBasedTrigger {
  /// Number of tokens that trigger memory processing. Accepts values from `100` to `500000`.
  final pulumi.Input<int> tokenCount;

  /// Creates a new [AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualTokenBasedTrigger].
  /// [tokenCount] Number of tokens that trigger memory processing. Accepts values from `100` to `500000`.
  const AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualTokenBasedTrigger({
    required this.tokenCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenCount': tokenCount,
    };
  }

  factory AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualTokenBasedTrigger.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualTokenBasedTrigger(
      tokenCount: pulumi.Input.fromValue((map['tokenCount'] as num).toInt()),
    );
  }
}
