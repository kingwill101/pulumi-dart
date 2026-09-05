// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_strategy_configuration_self_managed_configuration_trigger_conditions_actual_message_based_trigger.dart';
import 'agentcore_memory_strategy_configuration_self_managed_configuration_trigger_conditions_actual_time_based_trigger.dart';
import 'agentcore_memory_strategy_configuration_self_managed_configuration_trigger_conditions_actual_token_based_trigger.dart';

class AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActual {
  /// Message-based condition.
  final pulumi.Input<List<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualMessageBasedTrigger>> messageBasedTriggers;
  /// Idle-time condition.
  final pulumi.Input<List<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualTimeBasedTrigger>> timeBasedTriggers;
  /// Token-based condition.
  final pulumi.Input<List<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualTokenBasedTrigger>> tokenBasedTriggers;

  /// Creates a new [AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActual].
  /// [messageBasedTriggers] Message-based condition.
  /// [timeBasedTriggers] Idle-time condition.
  /// [tokenBasedTriggers] Token-based condition.
  const AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActual({
    required this.messageBasedTriggers,
    required this.timeBasedTriggers,
    required this.tokenBasedTriggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageBasedTriggers': pulumi.Input.mapInputValue<List<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualMessageBasedTrigger>, List<Map<String, dynamic>>>(messageBasedTriggers, (value) => pulumi.Input.encodeList<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualMessageBasedTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeBasedTriggers': pulumi.Input.mapInputValue<List<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualTimeBasedTrigger>, List<Map<String, dynamic>>>(timeBasedTriggers, (value) => pulumi.Input.encodeList<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualTimeBasedTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tokenBasedTriggers': pulumi.Input.mapInputValue<List<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualTokenBasedTrigger>, List<Map<String, dynamic>>>(tokenBasedTriggers, (value) => pulumi.Input.encodeList<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualTokenBasedTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActual.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActual(
      messageBasedTriggers: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualMessageBasedTrigger>(map['messageBasedTriggers']!, (value) => AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualMessageBasedTrigger.fromMap((value as Map).cast<String, dynamic>()))),
      timeBasedTriggers: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualTimeBasedTrigger>(map['timeBasedTriggers']!, (value) => AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualTimeBasedTrigger.fromMap((value as Map).cast<String, dynamic>()))),
      tokenBasedTriggers: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualTokenBasedTrigger>(map['tokenBasedTriggers']!, (value) => AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActualTokenBasedTrigger.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
