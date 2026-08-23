// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_indexed_key.dart';
import 'agentcore_memory_stream_delivery_resources.dart';
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
  final pulumi.Input<int>? eventExpiryDuration;
  /// Metadata keys to index for filtering. Up to 10 entries. Changing this forces a new resource to be created. See `indexedKey` below.
  final pulumi.Input<List<AgentcoreMemoryIndexedKey>>? indexedKeys;
  /// ARN of the IAM role that the memory service assumes to perform operations. Required when using custom memory strategies with model processing.
  final pulumi.Input<String>? memoryExecutionRoleArn;
  /// Name of the memory.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration for streaming memory record data to external resources. See `streamDeliveryResources` below.
  final pulumi.Input<AgentcoreMemoryStreamDeliveryResources>? streamDeliveryResources;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<AgentcoreMemoryTimeouts>? timeouts;

  /// Creates a new [AgentcoreMemoryState].
  /// [arn] ARN of the Memory.
  /// [description] Description of the memory.
  /// [encryptionKeyArn] ARN of the KMS key used to encrypt the memory. If not provided, AWS managed encryption is used.
  /// [eventExpiryDuration] Number of days after which memory events expire. Must be a positive integer in the range of 7 to 365.
  /// [indexedKeys] Metadata keys to index for filtering. Up to 10 entries. Changing this forces a new resource to be created. See `indexedKey` below.
  /// [memoryExecutionRoleArn] ARN of the IAM role that the memory service assumes to perform operations. Required when using custom memory strategies with model processing.
  /// [name] Name of the memory.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [streamDeliveryResources] Configuration for streaming memory record data to external resources. See `streamDeliveryResources` below.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const AgentcoreMemoryState({
    this.arn,
    this.description,
    this.encryptionKeyArn,
    this.eventExpiryDuration,
    this.indexedKeys,
    this.memoryExecutionRoleArn,
    this.name,
    this.region,
    this.streamDeliveryResources,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'encryptionKeyArn': ?encryptionKeyArn,
      'eventExpiryDuration': ?eventExpiryDuration,
      'indexedKeys': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreMemoryIndexedKey>, List<Map<String, dynamic>>>(indexedKeys, (value) => pulumi.Input.encodeList<AgentcoreMemoryIndexedKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memoryExecutionRoleArn': ?memoryExecutionRoleArn,
      'name': ?name,
      'region': ?region,
      'streamDeliveryResources': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStreamDeliveryResources, Map<String, dynamic>>(streamDeliveryResources, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreMemoryState.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKeyArn: (() { final guardedValue = map['encryptionKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventExpiryDuration: (() { final guardedValue = map['eventExpiryDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      indexedKeys: (() { final guardedValue = map['indexedKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreMemoryIndexedKey>(guardedValue, (value) => AgentcoreMemoryIndexedKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      memoryExecutionRoleArn: (() { final guardedValue = map['memoryExecutionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamDeliveryResources: (() { final guardedValue = map['streamDeliveryResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStreamDeliveryResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
