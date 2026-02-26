// ignore_for_file: unused_element, unnecessary_cast

import '../job_load_destination_encryption_configuration/job_load_destination_encryption_configuration.dart';
import '../job_load_destination_table/job_load_destination_table.dart';
import '../job_load_parquet_options/job_load_parquet_options.dart';
import '../job_load_time_partitioning/job_load_time_partitioning.dart';

class JobLoad {
  /// Accept rows that are missing trailing optional columns. The missing values are treated as nulls.
  /// If false, records with missing trailing columns are treated as bad records, and if there are too many bad records,
  /// an invalid error is returned in the job result. The default value is false. Only applicable to CSV, ignored for other formats.
  final bool? allowJaggedRows;

  /// Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file.
  /// The default value is false.
  final bool? allowQuotedNewlines;

  /// Indicates if we should automatically infer the options and schema for CSV and JSON sources.
  final bool? autodetect;

  /// Specifies whether the job is allowed to create new tables. The following values are supported:
  /// CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table.
  /// CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result.
  /// Creation, truncation and append actions occur as one atomic update upon job completion
  /// Default value is `CREATE_IF_NEEDED`.
  /// Possible values are: `CREATE_IF_NEEDED`, `CREATE_NEVER`.
  final String? createDisposition;

  /// Custom encryption configuration (e.g., Cloud KMS keys)
  /// Structure is documented below.
  final JobLoadDestinationEncryptionConfiguration?
      destinationEncryptionConfiguration;

  /// The destination table to load the data into.
  /// Structure is documented below.
  final JobLoadDestinationTable destinationTable;

  /// The character encoding of the data. The supported values are UTF-8 or ISO-8859-1.
  /// The default value is UTF-8. BigQuery decodes the data after the raw, binary data
  /// has been split using the values of the quote and fieldDelimiter properties.
  final String? encoding;

  /// The separator for fields in a CSV file. The separator can be any ISO-8859-1 single-byte character.
  /// To use a character in the range 128-255, you must encode the character as UTF8. BigQuery converts
  /// the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the
  /// data in its raw, binary state. BigQuery also supports the escape sequence "\t" to specify a tab separator.
  /// The default value is a comma (',').
  final String? fieldDelimiter;

  /// Indicates if BigQuery should allow extra values that are not represented in the table schema.
  /// If true, the extra values are ignored. If false, records with extra columns are treated as bad records,
  /// and if there are too many bad records, an invalid error is returned in the job result.
  /// The default value is false. The sourceFormat property determines what BigQuery treats as an extra value:
  /// CSV: Trailing columns
  /// JSON: Named values that don't match any column names
  final bool? ignoreUnknownValues;

  /// If sourceFormat is set to newline-delimited JSON, indicates whether it should be processed as a JSON variant such as GeoJSON.
  /// For a sourceFormat other than JSON, omit this field. If the sourceFormat is newline-delimited JSON: - for newline-delimited
  /// GeoJSON: set to GEOJSON.
  final String? jsonExtension;

  /// The maximum number of bad records that BigQuery can ignore when running the job. If the number of bad records exceeds this value,
  /// an invalid error is returned in the job result. The default value is 0, which requires that all records are valid.
  final int? maxBadRecords;

  /// Specifies a string that represents a null value in a CSV file. The default value is the empty string. If you set this
  /// property to a custom value, BigQuery throws an error if an
  /// empty string is present for all data types except for STRING and BYTE. For STRING and BYTE columns, BigQuery interprets the empty string as
  /// an empty value.
  final String? nullMarker;

  /// Parquet Options for load and make external tables.
  /// Structure is documented below.
  final JobLoadParquetOptions? parquetOptions;

  /// If sourceFormat is set to "DATASTORE_BACKUP", indicates which entity properties to load into BigQuery from a Cloud Datastore backup.
  /// Property names are case sensitive and must be top-level properties. If no properties are specified, BigQuery loads all properties.
  /// If any named property isn't found in the Cloud Datastore backup, an invalid error is returned in the job result.
  final List<String>? projectionFields;

  /// The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding,
  /// and then uses the first byte of the encoded string to split the data in its raw, binary state.
  /// The default value is a double-quote ('"'). If your data does not contain quoted sections, set the property value to an empty string.
  /// If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true.
  final String? quote;

  /// Allows the schema of the destination table to be updated as a side effect of the load job if a schema is autodetected or
  /// supplied in the job configuration. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND;
  /// when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators.
  /// For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified:
  /// ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema.
  /// ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.
  final List<String>? schemaUpdateOptions;

  /// The number of rows at the top of a CSV file that BigQuery will skip when loading the data.
  /// The default value is 0. This property is useful if you have header rows in the file that should be skipped.
  /// When autodetect is on, the behavior is the following:
  /// skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected,
  /// the row is read as data. Otherwise data is read starting from the second row.
  /// skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row.
  /// skipLeadingRows = N > 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected,
  /// row N is just skipped. Otherwise row N is used to extract column names for the detected schema.
  final int? skipLeadingRows;

  /// The format of the data files. For CSV files, specify "CSV". For datastore backups, specify "DATASTORE_BACKUP".
  /// For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro, specify "AVRO". For parquet, specify "PARQUET".
  /// For orc, specify "ORC". [Beta] For Bigtable, specify "BIGTABLE".
  /// The default value is CSV.
  final String? sourceFormat;

  /// The fully-qualified URIs that point to your data in Google Cloud.
  /// For Google Cloud Storage URIs: Each URI can contain one '\*' wildcard character
  /// and it must come after the 'bucket' name. Size limits related to load jobs apply
  /// to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be
  /// specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table.
  /// For Google Cloud Datastore backups: Exactly one URI can be specified. Also, the '\*' wildcard character is not allowed.
  final List<String> sourceUris;

  /// Time-based partitioning specification for the destination table.
  /// Structure is documented below.
  final JobLoadTimePartitioning? timePartitioning;

  /// Specifies the action that occurs if the destination table already exists. The following values are supported:
  /// WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result.
  /// WRITE_APPEND: If the table already exists, BigQuery appends the data to the table.
  /// WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result.
  /// Each action is atomic and only occurs if BigQuery is able to complete the job successfully.
  /// Creation, truncation and append actions occur as one atomic update upon job completion.
  /// Default value is `WRITE_EMPTY`.
  /// Possible values are: `WRITE_TRUNCATE`, `WRITE_APPEND`, `WRITE_EMPTY`.
  final String? writeDisposition;

  JobLoad({
    this.allowJaggedRows,
    this.allowQuotedNewlines,
    this.autodetect,
    this.createDisposition,
    this.destinationEncryptionConfiguration,
    required this.destinationTable,
    this.encoding,
    this.fieldDelimiter,
    this.ignoreUnknownValues,
    this.jsonExtension,
    this.maxBadRecords,
    this.nullMarker,
    this.parquetOptions,
    this.projectionFields,
    this.quote,
    this.schemaUpdateOptions,
    this.skipLeadingRows,
    this.sourceFormat,
    required this.sourceUris,
    this.timePartitioning,
    this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowJaggedRowsValue = allowJaggedRows;
    if (allowJaggedRowsValue != null) {
      map['allowJaggedRows'] = allowJaggedRowsValue;
    }
    final allowQuotedNewlinesValue = allowQuotedNewlines;
    if (allowQuotedNewlinesValue != null) {
      map['allowQuotedNewlines'] = allowQuotedNewlinesValue;
    }
    final autodetectValue = autodetect;
    if (autodetectValue != null) {
      map['autodetect'] = autodetectValue;
    }
    final createDispositionValue = createDisposition;
    if (createDispositionValue != null) {
      map['createDisposition'] = createDispositionValue;
    }
    final destinationEncryptionConfigurationValue =
        destinationEncryptionConfiguration;
    if (destinationEncryptionConfigurationValue != null) {
      map['destinationEncryptionConfiguration'] =
          destinationEncryptionConfigurationValue.toMap();
    }
    map['destinationTable'] = destinationTable.toMap();
    final encodingValue = encoding;
    if (encodingValue != null) {
      map['encoding'] = encodingValue;
    }
    final fieldDelimiterValue = fieldDelimiter;
    if (fieldDelimiterValue != null) {
      map['fieldDelimiter'] = fieldDelimiterValue;
    }
    final ignoreUnknownValuesValue = ignoreUnknownValues;
    if (ignoreUnknownValuesValue != null) {
      map['ignoreUnknownValues'] = ignoreUnknownValuesValue;
    }
    final jsonExtensionValue = jsonExtension;
    if (jsonExtensionValue != null) {
      map['jsonExtension'] = jsonExtensionValue;
    }
    final maxBadRecordsValue = maxBadRecords;
    if (maxBadRecordsValue != null) {
      map['maxBadRecords'] = maxBadRecordsValue;
    }
    final nullMarkerValue = nullMarker;
    if (nullMarkerValue != null) {
      map['nullMarker'] = nullMarkerValue;
    }
    final parquetOptionsValue = parquetOptions;
    if (parquetOptionsValue != null) {
      map['parquetOptions'] = parquetOptionsValue.toMap();
    }
    final projectionFieldsValue = projectionFields;
    if (projectionFieldsValue != null) {
      map['projectionFields'] = projectionFieldsValue;
    }
    final quoteValue = quote;
    if (quoteValue != null) {
      map['quote'] = quoteValue;
    }
    final schemaUpdateOptionsValue = schemaUpdateOptions;
    if (schemaUpdateOptionsValue != null) {
      map['schemaUpdateOptions'] = schemaUpdateOptionsValue;
    }
    final skipLeadingRowsValue = skipLeadingRows;
    if (skipLeadingRowsValue != null) {
      map['skipLeadingRows'] = skipLeadingRowsValue;
    }
    final sourceFormatValue = sourceFormat;
    if (sourceFormatValue != null) {
      map['sourceFormat'] = sourceFormatValue;
    }
    map['sourceUris'] = sourceUris;
    final timePartitioningValue = timePartitioning;
    if (timePartitioningValue != null) {
      map['timePartitioning'] = timePartitioningValue.toMap();
    }
    final writeDispositionValue = writeDisposition;
    if (writeDispositionValue != null) {
      map['writeDisposition'] = writeDispositionValue;
    }
    return map;
  }

  factory JobLoad.fromMap(Map<String, dynamic> map) {
    return JobLoad(
      allowJaggedRows: map['allowJaggedRows'] == null
          ? null
          : map['allowJaggedRows'] as bool,
      allowQuotedNewlines: map['allowQuotedNewlines'] == null
          ? null
          : map['allowQuotedNewlines'] as bool,
      autodetect: map['autodetect'] == null ? null : map['autodetect'] as bool,
      createDisposition: map['createDisposition'] == null
          ? null
          : map['createDisposition'] as String,
      destinationEncryptionConfiguration:
          map['destinationEncryptionConfiguration'] == null
              ? null
              : JobLoadDestinationEncryptionConfiguration.fromMap(
                  (map['destinationEncryptionConfiguration'] as Map)
                      .cast<String, dynamic>()),
      destinationTable: JobLoadDestinationTable.fromMap(
          (map['destinationTable'] as Map).cast<String, dynamic>()),
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      fieldDelimiter: map['fieldDelimiter'] == null
          ? null
          : map['fieldDelimiter'] as String,
      ignoreUnknownValues: map['ignoreUnknownValues'] == null
          ? null
          : map['ignoreUnknownValues'] as bool,
      jsonExtension:
          map['jsonExtension'] == null ? null : map['jsonExtension'] as String,
      maxBadRecords:
          map['maxBadRecords'] == null ? null : map['maxBadRecords'] as int,
      nullMarker:
          map['nullMarker'] == null ? null : map['nullMarker'] as String,
      parquetOptions: map['parquetOptions'] == null
          ? null
          : JobLoadParquetOptions.fromMap(
              (map['parquetOptions'] as Map).cast<String, dynamic>()),
      projectionFields: map['projectionFields'] == null
          ? null
          : (map['projectionFields'] as List).cast<String>(),
      quote: map['quote'] == null ? null : map['quote'] as String,
      schemaUpdateOptions: map['schemaUpdateOptions'] == null
          ? null
          : (map['schemaUpdateOptions'] as List).cast<String>(),
      skipLeadingRows:
          map['skipLeadingRows'] == null ? null : map['skipLeadingRows'] as int,
      sourceFormat:
          map['sourceFormat'] == null ? null : map['sourceFormat'] as String,
      sourceUris: (map['sourceUris'] as List).cast<String>(),
      timePartitioning: map['timePartitioning'] == null
          ? null
          : JobLoadTimePartitioning.fromMap(
              (map['timePartitioning'] as Map).cast<String, dynamic>()),
      writeDisposition: map['writeDisposition'] == null
          ? null
          : map['writeDisposition'] as String,
    );
  }
}
