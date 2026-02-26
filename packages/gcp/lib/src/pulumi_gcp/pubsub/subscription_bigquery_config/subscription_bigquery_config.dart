// ignore_for_file: unused_element, unnecessary_cast

class SubscriptionBigqueryConfig {
  /// When true and<span pulumi-lang-nodejs=" useTopicSchema " pulumi-lang-dotnet=" UseTopicSchema " pulumi-lang-go=" useTopicSchema " pulumi-lang-python=" use_topic_schema " pulumi-lang-yaml=" useTopicSchema " pulumi-lang-java=" useTopicSchema "> use_topic_schema </span>or<span pulumi-lang-nodejs=" useTableSchema " pulumi-lang-dotnet=" UseTableSchema " pulumi-lang-go=" useTableSchema " pulumi-lang-python=" use_table_schema " pulumi-lang-yaml=" useTableSchema " pulumi-lang-java=" useTableSchema "> use_table_schema </span>is true, any fields that are a part of the topic schema or message schema that
  /// are not part of the BigQuery table schema are dropped when writing to BigQuery. Otherwise, the schemas must be kept in sync
  /// and any messages with extra fields are not written and remain in the subscription's backlog.
  final bool? dropUnknownFields;

  /// The service account to use to write to BigQuery. If not specified, the Pub/Sub
  /// [service agent](https://cloud.google.com/iam/docs/service-agents),
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
  final String? serviceAccountEmail;

  /// The name of the table to which to write data, of the form {projectId}.{datasetId}.{tableId}
  final String table;

  /// When true, use the BigQuery table's schema as the columns to write to in BigQuery. Messages
  /// must be published in JSON format. Only one of<span pulumi-lang-nodejs=" useTopicSchema " pulumi-lang-dotnet=" UseTopicSchema " pulumi-lang-go=" useTopicSchema " pulumi-lang-python=" use_topic_schema " pulumi-lang-yaml=" useTopicSchema " pulumi-lang-java=" useTopicSchema "> use_topic_schema </span>and<span pulumi-lang-nodejs=" useTableSchema " pulumi-lang-dotnet=" UseTableSchema " pulumi-lang-go=" useTableSchema " pulumi-lang-python=" use_table_schema " pulumi-lang-yaml=" useTableSchema " pulumi-lang-java=" useTableSchema "> use_table_schema </span>can be set.
  final bool? useTableSchema;

  /// When true, use the topic's schema as the columns to write to in BigQuery, if it exists.
  /// Only one of<span pulumi-lang-nodejs=" useTopicSchema " pulumi-lang-dotnet=" UseTopicSchema " pulumi-lang-go=" useTopicSchema " pulumi-lang-python=" use_topic_schema " pulumi-lang-yaml=" useTopicSchema " pulumi-lang-java=" useTopicSchema "> use_topic_schema </span>and<span pulumi-lang-nodejs=" useTableSchema " pulumi-lang-dotnet=" UseTableSchema " pulumi-lang-go=" useTableSchema " pulumi-lang-python=" use_table_schema " pulumi-lang-yaml=" useTableSchema " pulumi-lang-java=" useTableSchema "> use_table_schema </span>can be set.
  final bool? useTopicSchema;

  /// When true, write the subscription name, messageId, publishTime, attributes, and orderingKey to additional columns in the table.
  /// The subscription name, messageId, and publishTime fields are put in their own columns while all other message properties (other than data) are written to a JSON object in the attributes column.
  final bool? writeMetadata;

  SubscriptionBigqueryConfig({
    this.dropUnknownFields,
    this.serviceAccountEmail,
    required this.table,
    this.useTableSchema,
    this.useTopicSchema,
    this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dropUnknownFieldsValue = dropUnknownFields;
    if (dropUnknownFieldsValue != null) {
      map['dropUnknownFields'] = dropUnknownFieldsValue;
    }
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    map['table'] = table;
    final useTableSchemaValue = useTableSchema;
    if (useTableSchemaValue != null) {
      map['useTableSchema'] = useTableSchemaValue;
    }
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

  factory SubscriptionBigqueryConfig.fromMap(Map<String, dynamic> map) {
    return SubscriptionBigqueryConfig(
      dropUnknownFields: map['dropUnknownFields'] == null
          ? null
          : map['dropUnknownFields'] as bool,
      serviceAccountEmail: map['serviceAccountEmail'] == null
          ? null
          : map['serviceAccountEmail'] as String,
      table: map['table'] as String,
      useTableSchema:
          map['useTableSchema'] == null ? null : map['useTableSchema'] as bool,
      useTopicSchema:
          map['useTopicSchema'] == null ? null : map['useTopicSchema'] as bool,
      writeMetadata:
          map['writeMetadata'] == null ? null : map['writeMetadata'] as bool,
    );
  }
}
