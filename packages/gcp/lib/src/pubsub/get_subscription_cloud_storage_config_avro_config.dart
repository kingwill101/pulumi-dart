// ignore_for_file: unused_element, unnecessary_cast

class GetSubscriptionCloudStorageConfigAvroConfig {
  /// When true, the output Cloud Storage file will be serialized using the topic schema, if it exists.
  final bool useTopicSchema;

  /// When true, write the subscription name, messageId, publishTime, attributes, and orderingKey as additional fields in the output.
  final bool writeMetadata;

  /// Creates a new [GetSubscriptionCloudStorageConfigAvroConfig].
  /// [useTopicSchema] When true, the output Cloud Storage file will be serialized using the topic schema, if it exists.
  /// [writeMetadata] When true, write the subscription name, messageId, publishTime, attributes, and orderingKey as additional fields in the output.
  GetSubscriptionCloudStorageConfigAvroConfig({
    required this.useTopicSchema,
    required this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useTopicSchema': useTopicSchema,
      'writeMetadata': writeMetadata,
    };
  }

  factory GetSubscriptionCloudStorageConfigAvroConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSubscriptionCloudStorageConfigAvroConfig(
      useTopicSchema: map['useTopicSchema'] as bool,
      writeMetadata: map['writeMetadata'] as bool,
    );
  }
}
