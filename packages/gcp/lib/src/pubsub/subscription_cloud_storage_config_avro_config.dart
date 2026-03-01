// ignore_for_file: unused_element, unnecessary_cast


class SubscriptionCloudStorageConfigAvroConfig {
  /// When true, the output Cloud Storage file will be serialized using the topic schema, if it exists.
  final bool? useTopicSchema;
  /// When true, write the subscription name, messageId, publishTime, attributes, and orderingKey as additional fields in the output.
  final bool? writeMetadata;

  /// Creates a new [SubscriptionCloudStorageConfigAvroConfig].
  /// [useTopicSchema] When true, the output Cloud Storage file will be serialized using the topic schema, if it exists.
  /// [writeMetadata] When true, write the subscription name, messageId, publishTime, attributes, and orderingKey as additional fields in the output.
  SubscriptionCloudStorageConfigAvroConfig({
    this.useTopicSchema,
    this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useTopicSchema': ?useTopicSchema,
      'writeMetadata': ?writeMetadata,
    };
  }

  factory SubscriptionCloudStorageConfigAvroConfig.fromMap(Map<String, dynamic> map) {
    return SubscriptionCloudStorageConfigAvroConfig(
      useTopicSchema: map['useTopicSchema'] == null ? null : map['useTopicSchema'] as bool,
      writeMetadata: map['writeMetadata'] == null ? null : map['writeMetadata'] as bool,
    );
  }
}

