// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_strategy_configuration.dart';
import 'agentcore_memory_strategy_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_memory_strategy_agentcore_memory_strategy_args_doc}
/// The set of arguments for AgentcoreMemoryStrategy.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_memory_strategy_agentcore_memory_strategy_args_doc}
class AgentcoreMemoryStrategyArgs {
  /// Custom configuration block. Required when `type` is `CUSTOM`, must be omitted for other types. See `configuration` below.
  final pulumi.Input<AgentcoreMemoryStrategyConfiguration>? configuration;

  /// Description of the memory strategy.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? memoryExecutionRoleArn;

  /// ID of the memory to associate with this strategy. Changing this forces a new resource.
  final pulumi.Input<String> memoryId;

  /// Name of the memory strategy.
  final pulumi.Input<String>? name;

  /// Set of namespace identifiers where this strategy applies. Namespaces help organize and scope memory content.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>> namespaces;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<AgentcoreMemoryStrategyTimeouts>? timeouts;

  /// Type of memory strategy. Valid values: `SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`, `CUSTOM`. Changing this forces a new resource. Note that only one strategy of each built-in type (`SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`) can exist per memory.
  final pulumi.Input<String> type;

  /// Creates a new [AgentcoreMemoryStrategyArgs].
  /// [configuration] Custom configuration block. Required when `type` is `CUSTOM`, must be omitted for other types. See `configuration` below.
  /// [description] Description of the memory strategy.
  /// [memoryExecutionRoleArn] Optional.
  /// [memoryId] ID of the memory to associate with this strategy. Changing this forces a new resource.
  /// [name] Name of the memory strategy.
  /// [namespaces] Set of namespace identifiers where this strategy applies. Namespaces help organize and scope memory content.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [type] Type of memory strategy. Valid values: `SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`, `CUSTOM`. Changing this forces a new resource. Note that only one strategy of each built-in type (`SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`) can exist per memory.
  AgentcoreMemoryStrategyArgs({
    this.configuration,
    this.description,
    this.memoryExecutionRoleArn,
    required this.memoryId,
    this.name,
    required this.namespaces,
    this.region,
    this.timeouts,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration':
          ?pulumi.Input.mapOptionalInputValue<
            AgentcoreMemoryStrategyConfiguration,
            Map<String, dynamic>
          >(configuration, (value) => value.toMap()),
      'description': ?description,
      'memoryExecutionRoleArn': ?memoryExecutionRoleArn,
      'memoryId': memoryId,
      'name': ?name,
      'namespaces': namespaces,
      'region': ?region,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            AgentcoreMemoryStrategyTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AgentcoreMemoryStrategyArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyArgs(
      configuration: (() {
        final guardedValue = map['configuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentcoreMemoryStrategyConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memoryExecutionRoleArn: (() {
        final guardedValue = map['memoryExecutionRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memoryId: pulumi.Input.fromValue(map['memoryId'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaces: pulumi.Input.fromValue(
        (map['namespaces'] as List).cast<String>(),
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentcoreMemoryStrategyTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
