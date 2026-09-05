// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_strategy_configuration_self_managed_configuration_invocation_configuration.dart';
import 'agentcore_memory_strategy_configuration_self_managed_configuration_trigger_conditions.dart';
import 'agentcore_memory_strategy_configuration_self_managed_configuration_trigger_conditions_actual.dart';

class AgentcoreMemoryStrategyConfigurationSelfManagedConfiguration {
  /// Number of historical messages to include in processing context. Valid range: `0` to `50`. Defaults to `4`.
  final pulumi.Input<int?>? historicalContextWindowSize;
  /// Configuration used to invoke the self-managed memory processing pipeline. See `invocationConfiguration` Block below.
  final pulumi.Input<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationInvocationConfiguration> invocationConfiguration;
  /// Conditions that trigger memory processing. See `triggerConditions` Block below. When omitted, the service supplies the documented defaults for all three trigger types.
  final pulumi.Input<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditions?>? triggerConditions;
  /// Actual deployed trigger conditions.
  final pulumi.Input<List<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActual>?>? triggerConditionsActuals;

  /// Creates a new [AgentcoreMemoryStrategyConfigurationSelfManagedConfiguration].
  /// [historicalContextWindowSize] Number of historical messages to include in processing context. Valid range: `0` to `50`. Defaults to `4`.
  /// [invocationConfiguration] Configuration used to invoke the self-managed memory processing pipeline. See `invocationConfiguration` Block below.
  /// [triggerConditions] Conditions that trigger memory processing. See `triggerConditions` Block below. When omitted, the service supplies the documented defaults for all three trigger types.
  /// [triggerConditionsActuals] Actual deployed trigger conditions.
  const AgentcoreMemoryStrategyConfigurationSelfManagedConfiguration({
    this.historicalContextWindowSize,
    required this.invocationConfiguration,
    this.triggerConditions,
    this.triggerConditionsActuals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'historicalContextWindowSize': ?historicalContextWindowSize,
      'invocationConfiguration': pulumi.Input.mapInputValue<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationInvocationConfiguration, Map<String, dynamic>>(invocationConfiguration, (value) => value.toMap()),
      'triggerConditions': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditions, Map<String, dynamic>>(triggerConditions, (value) => value.toMap()),
      'triggerConditionsActuals': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActual>, List<Map<String, dynamic>>>(triggerConditionsActuals, (value) => pulumi.Input.encodeList<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActual, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreMemoryStrategyConfigurationSelfManagedConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyConfigurationSelfManagedConfiguration(
      historicalContextWindowSize: (() { final guardedValue = map['historicalContextWindowSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      invocationConfiguration: pulumi.Input.fromValue(AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationInvocationConfiguration.fromMap((map['invocationConfiguration']! as Map).cast<String, dynamic>())),
      triggerConditions: (() { final guardedValue = map['triggerConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      triggerConditionsActuals: (() { final guardedValue = map['triggerConditionsActuals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActual>(guardedValue, (value) => AgentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsActual.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
