import 'package:pulumi/pulumi.dart';
import '../agentcore_memory_timeouts/agentcore_memory_timeouts.dart';
import 'agentcore_memory_args.dart';

/// Manages an AWS Bedrock AgentCore Memory. Memory provides persistent storage for AI agent interactions, allowing agents to retain context across conversations and sessions.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Memory with Custom Encryption and Role
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Memory using the memory ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreMemory:AgentcoreMemory example MEMORY1234567890
/// ```
class AgentcoreMemory extends CustomResource {
  /// ARN of the Memory.
  late final Output<String> arn;

  /// Description of the memory.
  late final Output<String?> description;

  /// ARN of the KMS key used to encrypt the memory. If not provided, AWS managed encryption is used.
  late final Output<String?> encryptionKeyArn;

  /// Number of days after which memory events expire. Must be a positive integer in the range of 7 to 365.
  ///
  /// The following arguments are optional:
  late final Output<int> eventExpiryDuration;

  /// ARN of the IAM role that the memory service assumes to perform operations. Required when using custom memory strategies with model processing.
  late final Output<String?> memoryExecutionRoleArn;

  /// Name of the memory.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<AgentcoreMemoryTimeouts?> timeouts;

  AgentcoreMemory(
    String name, {
    AgentcoreMemoryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreMemory:AgentcoreMemory',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.encryptionKeyArn = registerOutput<String?>('encryptionKeyArn');
    this.eventExpiryDuration = registerOutput<int>('eventExpiryDuration');
    this.memoryExecutionRoleArn =
        registerOutput<String?>('memoryExecutionRoleArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<AgentcoreMemoryTimeouts?>('timeouts');
  }
}
