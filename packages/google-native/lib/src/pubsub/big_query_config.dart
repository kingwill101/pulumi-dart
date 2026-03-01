// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a BigQuery subscription.
class BigQueryConfig {
  /// Optional. When true and use_topic_schema is true, any fields that are a part of the topic schema that are not part of the BigQuery table schema are dropped when writing to BigQuery. Otherwise, the schemas must be kept in sync and any messages with extra fields are not written and remain in the subscription's backlog.
  final bool? dropUnknownFields;

  /// Optional. The name of the table to which to write data, of the form {projectId}.{datasetId}.{tableId}
  final String? table;

  /// Optional. When true, use the topic's schema as the columns to write to in BigQuery, if it exists.
  final bool? useTopicSchema;

  /// Optional. When true, write the subscription name, message_id, publish_time, attributes, and ordering_key to additional columns in the table. The subscription name, message_id, and publish_time fields are put in their own columns while all other message properties (other than data) are written to a JSON object in the attributes column.
  final bool? writeMetadata;

  /// Creates a new [BigQueryConfig].
  /// [dropUnknownFields] Optional. When true and use_topic_schema is true, any fields that are a part of the topic schema that are not part of the BigQuery table schema are dropped when writing to BigQuery. Otherwise, the schemas must be kept in sync and any messages with extra fields are not written and remain in the subscription's backlog.
  /// [table] Optional. The name of the table to which to write data, of the form {projectId}.{datasetId}.{tableId}
  /// [useTopicSchema] Optional. When true, use the topic's schema as the columns to write to in BigQuery, if it exists.
  /// [writeMetadata] Optional. When true, write the subscription name, message_id, publish_time, attributes, and ordering_key to additional columns in the table. The subscription name, message_id, and publish_time fields are put in their own columns while all other message properties (other than data) are written to a JSON object in the attributes column.
  BigQueryConfig({
    this.dropUnknownFields,
    this.table,
    this.useTopicSchema,
    this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropUnknownFields': ?dropUnknownFields,
      'table': ?table,
      'useTopicSchema': ?useTopicSchema,
      'writeMetadata': ?writeMetadata,
    };
  }

  factory BigQueryConfig.fromMap(Map<String, dynamic> map) {
    return BigQueryConfig(
      dropUnknownFields: map['dropUnknownFields'] == null
          ? null
          : map['dropUnknownFields'] as bool,
      table: map['table'] == null ? null : map['table'] as String,
      useTopicSchema: map['useTopicSchema'] == null
          ? null
          : map['useTopicSchema'] as bool,
      writeMetadata: map['writeMetadata'] == null
          ? null
          : map['writeMetadata'] as bool,
    );
  }
}
