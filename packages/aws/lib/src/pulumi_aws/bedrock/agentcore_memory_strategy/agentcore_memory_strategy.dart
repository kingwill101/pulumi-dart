import 'package:pulumi/pulumi.dart' as pulumi;
import '../agentcore_memory_strategy_configuration/agentcore_memory_strategy_configuration.dart';
import '../agentcore_memory_strategy_timeouts/agentcore_memory_strategy_timeouts.dart';
import 'agentcore_memory_strategy_args.dart';

/// Manages an AWS Bedrock AgentCore Memory Strategy. Memory strategies define how the agent processes and organizes information within a memory, such as semantic understanding, summarization, or custom processing logic.
///
/// **Important Limitations:**
///
/// - Each memory can have a maximum of 6 strategies total
/// - Only one strategy of each built-in type (`SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`) can exist per memory
/// - Multiple `CUSTOM` strategies are allowed (subject to the total limit of 6)
///
/// ## Example Usage
///
/// ### Semantic Strategy
///
///
///
/// ### Summarization Strategy
///
///
///
/// ### User Preference Strategy
///
///
///
/// ### Custom Strategy with Semantic Override
///
///
///
/// ### Custom Strategy with Summary Override
///
///
///
/// ### Custom Strategy with User Preference Override
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Memory Strategy using the `memory_id,strategy_id`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreMemoryStrategy:AgentcoreMemoryStrategy example MEMORY1234567890,STRATEGY0987654321
/// ```
class AgentcoreMemoryStrategy extends pulumi.CustomResource {
  /// Custom configuration block. Required when `type` is `CUSTOM`, must be omitted for other types. See `configuration` below.
  late final pulumi.Output<AgentcoreMemoryStrategyConfiguration?> configuration;

  /// Description of the memory strategy.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String?> memoryExecutionRoleArn;

  /// ID of the memory to associate with this strategy. Changing this forces a new resource.
  late final pulumi.Output<String> memoryId;

  /// Unique identifier of the Memory Strategy. This corresponds to the service `strategyId` identifier (AWS API / CloudFormation terminology).
  late final pulumi.Output<String> memoryStrategyId;

  /// Name of the memory strategy.
  late final pulumi.Output<String> name;

  /// Set of namespace identifiers where this strategy applies. Namespaces help organize and scope memory content.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> namespaces;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<AgentcoreMemoryStrategyTimeouts?> timeouts;

  /// Type of memory strategy. Valid values: `SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`, `CUSTOM`. Changing this forces a new resource. Note that only one strategy of each built-in type (`SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`) can exist per memory.
  late final pulumi.Output<String> type;

  AgentcoreMemoryStrategy(
    String name, {
    AgentcoreMemoryStrategyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreMemoryStrategy:AgentcoreMemoryStrategy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configuration =
        registerOutput<AgentcoreMemoryStrategyConfiguration?>('configuration');
    this.description = registerOutput<String?>('description');
    this.memoryExecutionRoleArn =
        registerOutput<String?>('memoryExecutionRoleArn');
    this.memoryId = registerOutput<String>('memoryId');
    this.memoryStrategyId = registerOutput<String>('memoryStrategyId');
    this.name = registerOutput<String>('name');
    this.namespaces = registerOutput<List<String>>('namespaces');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<AgentcoreMemoryStrategyTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
  }
}
