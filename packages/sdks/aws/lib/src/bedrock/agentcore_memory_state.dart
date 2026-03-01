// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_timeouts.dart';

/// Input properties used for looking up and filtering AgentcoreMemory resources.
class AgentcoreMemoryState {
  /// ARN of the Memory.
  final pulumi.Input<String>? arn;
  /// Description of the memory.
  final pulumi.Input<String>? description;
  /// ARN of the KMS key used to encrypt the memory. If not provided, AWS managed encryption is used.
  final pulumi.Input<String>? encryptionKeyArn;
  /// Number of days after which memory events expire. Must be a positive integer in the range of 7 to 365.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int>? eventExpiryDuration;
  /// ARN of the IAM role that the memory service assumes to perform operations. Required when using custom memory strategies with model processing.
  final pulumi.Input<String>? memoryExecutionRoleArn;
  /// Name of the memory.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<AgentcoreMemoryTimeouts>? timeouts;

  /// Creates a new [AgentcoreMemoryState].
  /// [arn] ARN of the Memory.
  /// [description] Description of the memory.
  /// [encryptionKeyArn] ARN of the KMS key used to encrypt the memory. If not provided, AWS managed encryption is used.
  /// [eventExpiryDuration] Number of days after which memory events expire. Must be a positive integer in the range of 7 to 365.
  /// [memoryExecutionRoleArn] ARN of the IAM role that the memory service assumes to perform operations. Required when using custom memory strategies with model processing.
  /// [name] Name of the memory.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  AgentcoreMemoryState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? encryptionKeyArn,
    pulumi.Output<int>? eventExpiryDuration,
    pulumi.Output<String>? memoryExecutionRoleArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<AgentcoreMemoryTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptionKeyArn = pulumi.Input.asOptionalInput<String>(encryptionKeyArn),
      eventExpiryDuration = pulumi.Input.asOptionalInput<int>(eventExpiryDuration),
      memoryExecutionRoleArn = pulumi.Input.asOptionalInput<String>(memoryExecutionRoleArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<AgentcoreMemoryTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'encryptionKeyArn': ?encryptionKeyArn,
      'eventExpiryDuration': ?eventExpiryDuration,
      'memoryExecutionRoleArn': ?memoryExecutionRoleArn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreMemoryState.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryptionKeyArn: map['encryptionKeyArn'] == null ? null : pulumi.Output.create<String>(map['encryptionKeyArn'] as String),
      eventExpiryDuration: map['eventExpiryDuration'] == null ? null : pulumi.Output.create<int>(map['eventExpiryDuration'] as int),
      memoryExecutionRoleArn: map['memoryExecutionRoleArn'] == null ? null : pulumi.Output.create<String>(map['memoryExecutionRoleArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentcoreMemoryTimeouts>(AgentcoreMemoryTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

