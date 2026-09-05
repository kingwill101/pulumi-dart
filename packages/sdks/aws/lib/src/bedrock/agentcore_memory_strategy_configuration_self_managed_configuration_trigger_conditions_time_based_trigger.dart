// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTimeBasedTrigger {
  /// Idle session timeout (seconds) that triggers memory processing. Accepts values from `10` to `3000`.
  final pulumi.Input<int> idleSessionTimeout;

  /// Creates a new [AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTimeBasedTrigger].
  /// [idleSessionTimeout] Idle session timeout (seconds) that triggers memory processing. Accepts values from `10` to `3000`.
  const AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTimeBasedTrigger({
    required this.idleSessionTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleSessionTimeout': idleSessionTimeout,
    };
  }

  factory AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTimeBasedTrigger.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTimeBasedTrigger(
      idleSessionTimeout: pulumi.Input.fromValue((map['idleSessionTimeout'] as num).toInt()),
    );
  }
}
