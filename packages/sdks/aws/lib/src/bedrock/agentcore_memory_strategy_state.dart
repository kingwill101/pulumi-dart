// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_strategy_configuration.dart';
import 'agentcore_memory_strategy_reflection_configuration.dart';
import 'agentcore_memory_strategy_timeouts.dart';

/// Input properties used for looking up and filtering AgentcoreMemoryStrategy resources.
class AgentcoreMemoryStrategyState {
  /// Custom configuration block. Required when `type` is `CUSTOM`, must be omitted for other types. See `configuration` Block below.
  final pulumi.Input<AgentcoreMemoryStrategyConfiguration>? configuration;
  /// Description of the memory strategy.
  final pulumi.Input<String>? description;
  /// ARN of the IAM role that the memory service assumes to perform operations.
  final pulumi.Input<String>? memoryExecutionRoleArn;
  /// ID of the memory to associate with this strategy. Changing this forces a new resource.
  final pulumi.Input<String>? memoryId;
  /// Unique identifier of the Memory Strategy. This corresponds to the service `strategyId` identifier (AWS API / CloudFormation terminology).
  final pulumi.Input<String>? memoryStrategyId;
  /// Name of the memory strategy.
  final pulumi.Input<String>? name;
  /// Set containing exactly one namespace template where this strategy applies (for example `/strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}`). Namespace templates help organize and scope memory content. Exactly one of `namespaceTemplates` or `namespaces` must be configured.
  final pulumi.Input<List<String>>? namespaceTemplates;
  /// Set of namespace identifiers where this strategy applies. Exactly one of `namespaces` or `namespaceTemplates` must be configured. The API treats this as a legacy parameter; prefer `namespaceTemplates`. Since the API mirrors the two fields, switching an existing configuration from `namespaces` to `namespaceTemplates` with the same value is an in-place no-op.
  final pulumi.Input<List<String>>? namespaces;
  /// Configuration for the reflections created with the episodic memory strategy. Valid when `type` is `EPISODIC`, must be omitted for other types. See `reflectionConfiguration` Block below.
  final pulumi.Input<AgentcoreMemoryStrategyReflectionConfiguration>? reflectionConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<AgentcoreMemoryStrategyTimeouts>? timeouts;
  /// Type of memory strategy. Valid values: `SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`, `EPISODIC`, `CUSTOM`. Changing this forces a new resource. Note that only one strategy of each built-in type (`SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`, `EPISODIC`) can exist per memory.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? type;

  /// Creates a new [AgentcoreMemoryStrategyState].
  /// [configuration] Custom configuration block. Required when `type` is `CUSTOM`, must be omitted for other types. See `configuration` Block below.
  /// [description] Description of the memory strategy.
  /// [memoryExecutionRoleArn] ARN of the IAM role that the memory service assumes to perform operations.
  /// [memoryId] ID of the memory to associate with this strategy. Changing this forces a new resource.
  /// [memoryStrategyId] Unique identifier of the Memory Strategy. This corresponds to the service `strategyId` identifier (AWS API / CloudFormation terminology).
  /// [name] Name of the memory strategy.
  /// [namespaceTemplates] Set containing exactly one namespace template where this strategy applies (for example `/strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}`). Namespace templates help organize and scope memory content. Exactly one of `namespaceTemplates` or `namespaces` must be configured.
  /// [namespaces] Set of namespace identifiers where this strategy applies. Exactly one of `namespaces` or `namespaceTemplates` must be configured. The API treats this as a legacy parameter; prefer `namespaceTemplates`. Since the API mirrors the two fields, switching an existing configuration from `namespaces` to `namespaceTemplates` with the same value is an in-place no-op.
  /// [reflectionConfiguration] Configuration for the reflections created with the episodic memory strategy. Valid when `type` is `EPISODIC`, must be omitted for other types. See `reflectionConfiguration` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [type] Type of memory strategy. Valid values: `SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`, `EPISODIC`, `CUSTOM`. Changing this forces a new resource. Note that only one strategy of each built-in type (`SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`, `EPISODIC`) can exist per memory.
  const AgentcoreMemoryStrategyState({
    this.configuration,
    this.description,
    this.memoryExecutionRoleArn,
    this.memoryId,
    this.memoryStrategyId,
    this.name,
    this.namespaceTemplates,
    this.namespaces,
    this.reflectionConfiguration,
    this.region,
    this.timeouts,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'description': ?description,
      'memoryExecutionRoleArn': ?memoryExecutionRoleArn,
      'memoryId': ?memoryId,
      'memoryStrategyId': ?memoryStrategyId,
      'name': ?name,
      'namespaceTemplates': ?namespaceTemplates,
      'namespaces': ?namespaces,
      'reflectionConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyReflectionConfiguration, Map<String, dynamic>>(reflectionConfiguration, (value) => value.toMap()),
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory AgentcoreMemoryStrategyState.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyState(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStrategyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryExecutionRoleArn: (() { final guardedValue = map['memoryExecutionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryId: (() { final guardedValue = map['memoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryStrategyId: (() { final guardedValue = map['memoryStrategyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceTemplates: (() { final guardedValue = map['namespaceTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      namespaces: (() { final guardedValue = map['namespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      reflectionConfiguration: (() { final guardedValue = map['reflectionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStrategyReflectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStrategyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
