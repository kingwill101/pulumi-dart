// ignore_for_file: unused_element, unnecessary_cast

class IngestionDestinationProcessingConfigurationAuditLog {
  /// The format in which the audit logs need to be formatted. Valid values: `json`, `parquet`.
  final String format;

  /// The event schema in which the audit logs need to be formatted. Valid values: `ocsf`, `raw`.
  final String schema;

  /// Creates a new [IngestionDestinationProcessingConfigurationAuditLog].
  /// [format] The format in which the audit logs need to be formatted. Valid values: `json`, `parquet`.
  /// [schema] The event schema in which the audit logs need to be formatted. Valid values: `ocsf`, `raw`.
  IngestionDestinationProcessingConfigurationAuditLog({
    required this.format,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['format'] = format;
    map['schema'] = schema;
    return map;
  }

  factory IngestionDestinationProcessingConfigurationAuditLog.fromMap(
      Map<String, dynamic> map) {
    return IngestionDestinationProcessingConfigurationAuditLog(
      format: map['format'] as String,
      schema: map['schema'] as String,
    );
  }
}
