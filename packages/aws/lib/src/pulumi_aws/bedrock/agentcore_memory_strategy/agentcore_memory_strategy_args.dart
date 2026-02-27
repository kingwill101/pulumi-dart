// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agentcore_memory_strategy_configuration/agentcore_memory_strategy_configuration.dart';
import '../agentcore_memory_strategy_timeouts/agentcore_memory_strategy_timeouts.dart';

/// The set of arguments for AgentcoreMemoryStrategy.
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
    final map = <String, dynamic>{};
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] = pulumi.Input.mapOptionalInputValue<
          AgentcoreMemoryStrategyConfiguration,
          Map<String, dynamic>>(configurationValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final memoryExecutionRoleArnValue = memoryExecutionRoleArn;
    if (memoryExecutionRoleArnValue != null) {
      map['memoryExecutionRoleArn'] = memoryExecutionRoleArnValue;
    }
    map['memoryId'] = memoryId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['namespaces'] = namespaces;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AgentcoreMemoryStrategyTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory AgentcoreMemoryStrategyArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyArgs(
      configuration:
          pulumi.Input.asOptionalInput<AgentcoreMemoryStrategyConfiguration>(
              map['configuration']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      memoryExecutionRoleArn:
          pulumi.Input.asOptionalInput<String>(map['memoryExecutionRoleArn']),
      memoryId: pulumi.Input.asInput<String>(map['memoryId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namespaces: pulumi.Input.asInput<List<String>>(map['namespaces']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts: pulumi.Input.asOptionalInput<AgentcoreMemoryStrategyTimeouts>(
          map['timeouts']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
