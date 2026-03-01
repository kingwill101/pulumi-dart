// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_strategy_configuration.dart';
import 'agentcore_memory_strategy_timeouts.dart';

/// Input properties used for looking up and filtering AgentcoreMemoryStrategy resources.
class AgentcoreMemoryStrategyState {
  /// Custom configuration block. Required when `type` is `CUSTOM`, must be omitted for other types. See `configuration` below.
  final pulumi.Input<AgentcoreMemoryStrategyConfiguration>? configuration;
  /// Description of the memory strategy.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? memoryExecutionRoleArn;
  /// ID of the memory to associate with this strategy. Changing this forces a new resource.
  final pulumi.Input<String>? memoryId;
  /// Unique identifier of the Memory Strategy. This corresponds to the service `strategyId` identifier (AWS API / CloudFormation terminology).
  final pulumi.Input<String>? memoryStrategyId;
  /// Name of the memory strategy.
  final pulumi.Input<String>? name;
  /// Set of namespace identifiers where this strategy applies. Namespaces help organize and scope memory content.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>>? namespaces;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<AgentcoreMemoryStrategyTimeouts>? timeouts;
  /// Type of memory strategy. Valid values: `SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`, `CUSTOM`. Changing this forces a new resource. Note that only one strategy of each built-in type (`SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`) can exist per memory.
  final pulumi.Input<String>? type;

  /// Creates a new [AgentcoreMemoryStrategyState].
  /// [configuration] Custom configuration block. Required when `type` is `CUSTOM`, must be omitted for other types. See `configuration` below.
  /// [description] Description of the memory strategy.
  /// [memoryExecutionRoleArn] Optional.
  /// [memoryId] ID of the memory to associate with this strategy. Changing this forces a new resource.
  /// [memoryStrategyId] Unique identifier of the Memory Strategy. This corresponds to the service `strategyId` identifier (AWS API / CloudFormation terminology).
  /// [name] Name of the memory strategy.
  /// [namespaces] Set of namespace identifiers where this strategy applies. Namespaces help organize and scope memory content.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [type] Type of memory strategy. Valid values: `SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`, `CUSTOM`. Changing this forces a new resource. Note that only one strategy of each built-in type (`SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`) can exist per memory.
  AgentcoreMemoryStrategyState({
    pulumi.Output<AgentcoreMemoryStrategyConfiguration>? configuration,
    pulumi.Output<String>? description,
    pulumi.Output<String>? memoryExecutionRoleArn,
    pulumi.Output<String>? memoryId,
    pulumi.Output<String>? memoryStrategyId,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? namespaces,
    pulumi.Output<String>? region,
    pulumi.Output<AgentcoreMemoryStrategyTimeouts>? timeouts,
    pulumi.Output<String>? type,
  }) :
      configuration = pulumi.Input.asOptionalInput<AgentcoreMemoryStrategyConfiguration>(configuration),
      description = pulumi.Input.asOptionalInput<String>(description),
      memoryExecutionRoleArn = pulumi.Input.asOptionalInput<String>(memoryExecutionRoleArn),
      memoryId = pulumi.Input.asOptionalInput<String>(memoryId),
      memoryStrategyId = pulumi.Input.asOptionalInput<String>(memoryStrategyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaces = pulumi.Input.asOptionalInput<List<String>>(namespaces),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<AgentcoreMemoryStrategyTimeouts>(timeouts),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'description': ?description,
      'memoryExecutionRoleArn': ?memoryExecutionRoleArn,
      'memoryId': ?memoryId,
      'memoryStrategyId': ?memoryStrategyId,
      'name': ?name,
      'namespaces': ?namespaces,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory AgentcoreMemoryStrategyState.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyState(
      configuration: map['configuration'] == null ? null : pulumi.Output.create<AgentcoreMemoryStrategyConfiguration>(AgentcoreMemoryStrategyConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      memoryExecutionRoleArn: map['memoryExecutionRoleArn'] == null ? null : pulumi.Output.create<String>(map['memoryExecutionRoleArn'] as String),
      memoryId: map['memoryId'] == null ? null : pulumi.Output.create<String>(map['memoryId'] as String),
      memoryStrategyId: map['memoryStrategyId'] == null ? null : pulumi.Output.create<String>(map['memoryStrategyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaces: map['namespaces'] == null ? null : pulumi.Output.create<List<String>>((map['namespaces'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentcoreMemoryStrategyTimeouts>(AgentcoreMemoryStrategyTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

