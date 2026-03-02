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
    this.description,
    this.encryptionKeyArn,
    required this.eventExpiryDuration,
    this.memoryExecutionRoleArn,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
  });

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
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      encryptionKeyArn: map['encryptionKeyArn'] == null ? null : ((map['encryptionKeyArn'] as String).input()).input(),
      eventExpiryDuration: (map['eventExpiryDuration'] as int).input(),
      memoryExecutionRoleArn: map['memoryExecutionRoleArn'] == null ? null : ((map['memoryExecutionRoleArn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((AgentcoreMemoryTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

