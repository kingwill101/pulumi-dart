// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agentcore_memory_timeouts/agentcore_memory_timeouts.dart';

/// The set of arguments for AgentcoreMemory.
class AgentcoreMemoryArgs {
  /// Description of the memory.
  final Input<String>? description;

  /// ARN of the KMS key used to encrypt the memory. If not provided, AWS managed encryption is used.
  final Input<String>? encryptionKeyArn;

  /// Number of days after which memory events expire. Must be a positive integer in the range of 7 to 365.
  ///
  /// The following arguments are optional:
  final Input<int> eventExpiryDuration;

  /// ARN of the IAM role that the memory service assumes to perform operations. Required when using custom memory strategies with model processing.
  final Input<String>? memoryExecutionRoleArn;

  /// Name of the memory.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<AgentcoreMemoryTimeouts>? timeouts;

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
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final encryptionKeyArnValue = encryptionKeyArn;
    if (encryptionKeyArnValue != null) {
      map['encryptionKeyArn'] = encryptionKeyArnValue;
    }
    map['eventExpiryDuration'] = eventExpiryDuration;
    final memoryExecutionRoleArnValue = memoryExecutionRoleArn;
    if (memoryExecutionRoleArnValue != null) {
      map['memoryExecutionRoleArn'] = memoryExecutionRoleArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<AgentcoreMemoryTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentcoreMemoryArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryArgs(
      description: Input.asOptionalInput<String>(map['description']),
      encryptionKeyArn: Input.asOptionalInput<String>(map['encryptionKeyArn']),
      eventExpiryDuration: Input.asInput<int>(map['eventExpiryDuration']),
      memoryExecutionRoleArn:
          Input.asOptionalInput<String>(map['memoryExecutionRoleArn']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<AgentcoreMemoryTimeouts>(map['timeouts']),
    );
  }
}
