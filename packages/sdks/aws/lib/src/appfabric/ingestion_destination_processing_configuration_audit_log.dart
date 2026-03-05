// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IngestionDestinationProcessingConfigurationAuditLog {
  /// The format in which the audit logs need to be formatted. Valid values: `json`, `parquet`.
  final pulumi.Input<String> format;
  /// The event schema in which the audit logs need to be formatted. Valid values: `ocsf`, `raw`.
  final pulumi.Input<String> schema;

  /// Creates a new [IngestionDestinationProcessingConfigurationAuditLog].
  /// [format] The format in which the audit logs need to be formatted. Valid values: `json`, `parquet`.
  /// [schema] The event schema in which the audit logs need to be formatted. Valid values: `ocsf`, `raw`.
  IngestionDestinationProcessingConfigurationAuditLog({
    required this.format,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': format,
      'schema': schema,
    };
  }

  factory IngestionDestinationProcessingConfigurationAuditLog.fromMap(Map<String, dynamic> map) {
    return IngestionDestinationProcessingConfigurationAuditLog(
      format: pulumi.Input.fromValue(map['format'] as String),
      schema: pulumi.Input.fromValue(map['schema'] as String),
    );
  }
}

