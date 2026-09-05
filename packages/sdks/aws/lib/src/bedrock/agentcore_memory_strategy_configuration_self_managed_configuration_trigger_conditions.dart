// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_strategy_configuration_self_managed_configuration_trigger_conditions_message_based_trigger.dart';
import 'agentcore_memory_strategy_configuration_self_managed_configuration_trigger_conditions_time_based_trigger.dart';
import 'agentcore_memory_strategy_configuration_self_managed_configuration_trigger_conditions_token_based_trigger.dart';

class AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditions {
  /// Message-based condition. See `messageBasedTrigger` Block below.
  final pulumi.Input<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsMessageBasedTrigger?>? messageBasedTrigger;
  /// Idle-time condition. See `timeBasedTrigger` Block below.
  final pulumi.Input<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTimeBasedTrigger?>? timeBasedTrigger;
  /// Token-based condition. See `tokenBasedTrigger` Block below.
  final pulumi.Input<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTokenBasedTrigger?>? tokenBasedTrigger;

  /// Creates a new [AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditions].
  /// [messageBasedTrigger] Message-based condition. See `messageBasedTrigger` Block below.
  /// [timeBasedTrigger] Idle-time condition. See `timeBasedTrigger` Block below.
  /// [tokenBasedTrigger] Token-based condition. See `tokenBasedTrigger` Block below.
  const AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditions({
    this.messageBasedTrigger,
    this.timeBasedTrigger,
    this.tokenBasedTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageBasedTrigger': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsMessageBasedTrigger, Map<String, dynamic>>(messageBasedTrigger, (value) => value.toMap()),
      'timeBasedTrigger': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTimeBasedTrigger, Map<String, dynamic>>(timeBasedTrigger, (value) => value.toMap()),
      'tokenBasedTrigger': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTokenBasedTrigger, Map<String, dynamic>>(tokenBasedTrigger, (value) => value.toMap()),
    };
  }

  factory AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditions.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditions(
      messageBasedTrigger: (() { final guardedValue = map['messageBasedTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsMessageBasedTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeBasedTrigger: (() { final guardedValue = map['timeBasedTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTimeBasedTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tokenBasedTrigger: (() { final guardedValue = map['tokenBasedTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTokenBasedTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
