// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agentcore_memory_strategy_configuration/agentcore_memory_strategy_configuration.dart';
import '../agentcore_memory_strategy_timeouts/agentcore_memory_strategy_timeouts.dart';

/// The set of arguments for AgentcoreMemoryStrategy.
class AgentcoreMemoryStrategyArgs {
  /// Custom configuration block. Required when <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `CUSTOM`, must be omitted for other types. See <span pulumi-lang-nodejs="`configuration`" pulumi-lang-dotnet="`Configuration`" pulumi-lang-go="`configuration`" pulumi-lang-python="`configuration`" pulumi-lang-yaml="`configuration`" pulumi-lang-java="`configuration`">`configuration`</span> below.
  final Input<AgentcoreMemoryStrategyConfiguration>? configuration;

  /// Description of the memory strategy.
  final Input<String>? description;
  final Input<String>? memoryExecutionRoleArn;

  /// ID of the memory to associate with this strategy. Changing this forces a new resource.
  final Input<String> memoryId;

  /// Name of the memory strategy.
  final Input<String>? name;

  /// Set of namespace identifiers where this strategy applies. Namespaces help organize and scope memory content.
  ///
  /// The following arguments are optional:
  final Input<List<String>> namespaces;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<AgentcoreMemoryStrategyTimeouts>? timeouts;

  /// Type of memory strategy. Valid values: `SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`, `CUSTOM`. Changing this forces a new resource. Note that only one strategy of each built-in type (`SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`) can exist per memory.
  final Input<String> type;

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
      map['configuration'] = Input.mapOptionalInputValue<
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
      map['timeouts'] = Input.mapOptionalInputValue<
          AgentcoreMemoryStrategyTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory AgentcoreMemoryStrategyArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyArgs(
      configuration:
          Input.asOptionalInput<AgentcoreMemoryStrategyConfiguration>(
              map['configuration']),
      description: Input.asOptionalInput<String>(map['description']),
      memoryExecutionRoleArn:
          Input.asOptionalInput<String>(map['memoryExecutionRoleArn']),
      memoryId: Input.asInput<String>(map['memoryId']),
      name: Input.asOptionalInput<String>(map['name']),
      namespaces: Input.asInput<List<String>>(map['namespaces']),
      region: Input.asOptionalInput<String>(map['region']),
      timeouts: Input.asOptionalInput<AgentcoreMemoryStrategyTimeouts>(
          map['timeouts']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
