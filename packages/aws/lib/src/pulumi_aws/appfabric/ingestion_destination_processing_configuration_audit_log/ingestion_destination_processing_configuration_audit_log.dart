// ignore_for_file: unused_element, unnecessary_cast

class IngestionDestinationProcessingConfigurationAuditLog {
  /// The format in which the audit logs need to be formatted. Valid values: <span pulumi-lang-nodejs="`json`" pulumi-lang-dotnet="`Json`" pulumi-lang-go="`json`" pulumi-lang-python="`json`" pulumi-lang-yaml="`json`" pulumi-lang-java="`json`">`json`</span>, <span pulumi-lang-nodejs="`parquet`" pulumi-lang-dotnet="`Parquet`" pulumi-lang-go="`parquet`" pulumi-lang-python="`parquet`" pulumi-lang-yaml="`parquet`" pulumi-lang-java="`parquet`">`parquet`</span>.
  final String format;

  /// The event schema in which the audit logs need to be formatted. Valid values: <span pulumi-lang-nodejs="`ocsf`" pulumi-lang-dotnet="`Ocsf`" pulumi-lang-go="`ocsf`" pulumi-lang-python="`ocsf`" pulumi-lang-yaml="`ocsf`" pulumi-lang-java="`ocsf`">`ocsf`</span>, <span pulumi-lang-nodejs="`raw`" pulumi-lang-dotnet="`Raw`" pulumi-lang-go="`raw`" pulumi-lang-python="`raw`" pulumi-lang-yaml="`raw`" pulumi-lang-java="`raw`">`raw`</span>.
  final String schema;

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
