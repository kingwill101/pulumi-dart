// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfiguration {
  /// Level of detail for streamed content. Valid values are `METADATA_ONLY` and `FULL_CONTENT`. Defaults to `METADATA_ONLY`.
  final pulumi.Input<String?>? level;
  /// Type of content to stream. Valid value is `MEMORY_RECORDS`.
  final pulumi.Input<String> type;

  /// Creates a new [AgentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfiguration].
  /// [level] Level of detail for streamed content. Valid values are `METADATA_ONLY` and `FULL_CONTENT`. Defaults to `METADATA_ONLY`.
  /// [type] Type of content to stream. Valid value is `MEMORY_RECORDS`.
  const AgentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfiguration({
    this.level,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level,
      'type': type,
    };
  }

  factory AgentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfiguration(
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
