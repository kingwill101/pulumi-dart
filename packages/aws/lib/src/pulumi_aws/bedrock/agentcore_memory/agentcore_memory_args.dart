// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agentcore_memory_timeouts/agentcore_memory_timeouts.dart';

/// The set of arguments for AgentcoreMemory.
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
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AgentcoreMemoryTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentcoreMemoryArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      encryptionKeyArn:
          pulumi.Input.asOptionalInput<String>(map['encryptionKeyArn']),
      eventExpiryDuration:
          pulumi.Input.asInput<int>(map['eventExpiryDuration']),
      memoryExecutionRoleArn:
          pulumi.Input.asOptionalInput<String>(map['memoryExecutionRoleArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<AgentcoreMemoryTimeouts>(
          map['timeouts']),
    );
  }
}
