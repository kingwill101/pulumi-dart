// ignore_for_file: unused_element, unnecessary_cast

class SubscriptionCloudStorageConfigAvroConfig {
  /// When true, the output Cloud Storage file will be serialized using the topic schema, if it exists.
  final bool? useTopicSchema;

  /// When true, write the subscription name, messageId, publishTime, attributes, and orderingKey as additional fields in the output.
  final bool? writeMetadata;

  SubscriptionCloudStorageConfigAvroConfig({
    this.useTopicSchema,
    this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final useTopicSchemaValue = useTopicSchema;
    if (useTopicSchemaValue != null) {
      map['useTopicSchema'] = useTopicSchemaValue;
    }
    final writeMetadataValue = writeMetadata;
    if (writeMetadataValue != null) {
      map['writeMetadata'] = writeMetadataValue;
    }
    return map;
  }

  factory SubscriptionCloudStorageConfigAvroConfig.fromMap(
      Map<String, dynamic> map) {
    return SubscriptionCloudStorageConfigAvroConfig(
      useTopicSchema:
          map['useTopicSchema'] == null ? null : map['useTopicSchema'] as bool,
      writeMetadata:
          map['writeMetadata'] == null ? null : map['writeMetadata'] as bool,
    );
  }
}
