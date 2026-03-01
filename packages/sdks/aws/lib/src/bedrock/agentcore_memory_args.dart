// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_memory_agentcore_memory_args_doc}
/// The set of arguments for AgentcoreMemory.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_memory_agentcore_memory_args_doc}
class AgentcoreMemoryArgs {
  /// Description of the memory.
  final pulumi.Input<String>? description;
  /// ARN of the KMS key used to encrypt the memory. If not provided, AWS managed encryption is used.
  final pulumi.Input<String>? encryptionKeyArn;
  /// Number of days after which memory events expire. Must be a positive integer in the range of 7 to 365.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> eventExpiryDuration;
  /// ARN of the IAM role that the memory service assumes to perform operations. Required when using custom memory strategies with model processing.
  final pulumi.Input<String>? memoryExecutionRoleArn;
  /// Name of the memory.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<AgentcoreMemoryTimeouts>? timeouts;

  /// Creates a new [AgentcoreMemoryArgs].
  /// [description] Description of the memory.
  /// [encryptionKeyArn] ARN of the KMS key used to encrypt the memory. If not provided, AWS managed encryption is used.
  /// [eventExpiryDuration] Number of days after which memory events expire. Must be a positive integer in the range of 7 to 365.
  /// [memoryExecutionRoleArn] ARN of the IAM role that the memory service assumes to perform operations. Required when using custom memory strategies with model processing.
  /// [name] Name of the memory.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  AgentcoreMemoryArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? encryptionKeyArn,
    required pulumi.Output<int> eventExpiryDuration,
    pulumi.Output<String>? memoryExecutionRoleArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<AgentcoreMemoryTimeouts>? timeouts,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptionKeyArn = pulumi.Input.asOptionalInput<String>(encryptionKeyArn),
      eventExpiryDuration = pulumi.Input.asInput<int>(eventExpiryDuration),
      memoryExecutionRoleArn = pulumi.Input.asOptionalInput<String>(memoryExecutionRoleArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<AgentcoreMemoryTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'encryptionKeyArn': ?encryptionKeyArn,
      'eventExpiryDuration': eventExpiryDuration,
      'memoryExecutionRoleArn': ?memoryExecutionRoleArn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreMemoryArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryptionKeyArn: map['encryptionKeyArn'] == null ? null : pulumi.Output.create<String>(map['encryptionKeyArn'] as String),
      eventExpiryDuration: pulumi.Output.create<int>(map['eventExpiryDuration'] as int),
      memoryExecutionRoleArn: map['memoryExecutionRoleArn'] == null ? null : pulumi.Output.create<String>(map['memoryExecutionRoleArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentcoreMemoryTimeouts>(AgentcoreMemoryTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

