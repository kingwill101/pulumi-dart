// ignore_for_file: unused_element, unnecessary_cast

import 'avro_options_response.dart';
import 'bigtable_options_response.dart';
import 'csv_options_response.dart';
import 'google_sheets_options_response.dart';
import 'hive_partitioning_options_response.dart';
import 'json_options_response.dart';
import 'parquet_options_response.dart';
import 'table_schema_response.dart';

class ExternalDataConfigurationResponse {
  /// Try to detect schema and format options automatically. Any option specified explicitly will be honored.
  final bool autodetect;

  /// Additional properties to set if sourceFormat is set to Avro.
  final AvroOptionsResponse avroOptions;

  /// [Optional] Additional options if sourceFormat is set to BIGTABLE.
  final BigtableOptionsResponse bigtableOptions;

  /// [Optional] The compression type of the data source. Possible values include GZIP and NONE. The default value is NONE. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
  final String compression;

  /// [Optional, Trusted Tester] Connection for external data source.
  final String connectionId;

  /// Additional properties to set if sourceFormat is set to CSV.
  final CsvOptionsResponse csvOptions;

  /// [Optional] Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is ["NUMERIC", "BIGNUMERIC"]. If (precision,scale) is: (38,9) -> NUMERIC; (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); (76,38) -> BIGNUMERIC; (77,38) -> BIGNUMERIC (error if value exeeds supported range). This field cannot contain duplicate types. The order of the types in this field is ignored. For example, ["BIGNUMERIC", "NUMERIC"] is the same as ["NUMERIC", "BIGNUMERIC"] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to ["NUMERIC", "STRING"] for ORC and ["NUMERIC"] for the other file formats.
  final List<String> decimalTargetTypes;

  /// [Optional] Specifies how source URIs are interpreted for constructing the file set to load. By default source URIs are expanded against the underlying storage. Other options include specifying manifest files. Only applicable to object storage systems.
  final String fileSetSpecType;

  /// [Optional] Additional options if sourceFormat is set to GOOGLE_SHEETS.
  final GoogleSheetsOptionsResponse googleSheetsOptions;

  /// [Optional] Options to configure hive partitioning support.
  final HivePartitioningOptionsResponse hivePartitioningOptions;

  /// [Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names Google Cloud Bigtable: This setting is ignored. Google Cloud Datastore backups: This setting is ignored. Avro: This setting is ignored.
  final bool ignoreUnknownValues;

  /// Additional properties to set if `sourceFormat` is set to `NEWLINE_DELIMITED_JSON`.
  final JsonOptionsResponse jsonOptions;

  /// [Optional] The maximum number of bad records that BigQuery can ignore when reading data. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV, JSON, and Google Sheets. The default value is 0, which requires that all records are valid. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
  final int maxBadRecords;

  /// [Optional] Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source.
  final String metadataCacheMode;

  /// ObjectMetadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the source_uris. If ObjectMetadata is set, source_format should be omitted. Currently SIMPLE is the only supported Object Metadata type.
  final String objectMetadata;

  /// Additional properties to set if sourceFormat is set to Parquet.
  final ParquetOptionsResponse parquetOptions;

  /// [Optional] Provide a referencing file with the expected table schema. Enabled for the format: AVRO, PARQUET, ORC.
  final String referenceFileSchemaUri;

  /// [Optional] The schema for the data. Schema is required for CSV and JSON formats. Schema is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats.
  final TableSchemaResponse schema;

  /// [Required] The data format. For CSV files, specify "CSV". For Google sheets, specify "GOOGLE_SHEETS". For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro files, specify "AVRO". For Google Cloud Datastore backups, specify "DATASTORE_BACKUP". [Beta] For Google Cloud Bigtable, specify "BIGTABLE".
  final String sourceFormat;

  /// [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups, exactly one URI can be specified. Also, the '*' wildcard character is not allowed.
  final List<String> sourceUris;

  /// Creates a new [ExternalDataConfigurationResponse].
  /// [autodetect] Try to detect schema and format options automatically. Any option specified explicitly will be honored.
  /// [avroOptions] Additional properties to set if sourceFormat is set to Avro.
  /// [bigtableOptions] [Optional] Additional options if sourceFormat is set to BIGTABLE.
  /// [compression] [Optional] The compression type of the data source. Possible values include GZIP and NONE. The default value is NONE. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
  /// [connectionId] [Optional, Trusted Tester] Connection for external data source.
  /// [csvOptions] Additional properties to set if sourceFormat is set to CSV.
  /// [decimalTargetTypes] [Optional] Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is ["NUMERIC", "BIGNUMERIC"]. If (precision,scale) is: (38,9) -> NUMERIC; (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); (76,38) -> BIGNUMERIC; (77,38) -> BIGNUMERIC (error if value exeeds supported range). This field cannot contain duplicate types. The order of the types in this field is ignored. For example, ["BIGNUMERIC", "NUMERIC"] is the same as ["NUMERIC", "BIGNUMERIC"] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to ["NUMERIC", "STRING"] for ORC and ["NUMERIC"] for the other file formats.
  /// [fileSetSpecType] [Optional] Specifies how source URIs are interpreted for constructing the file set to load. By default source URIs are expanded against the underlying storage. Other options include specifying manifest files. Only applicable to object storage systems.
  /// [googleSheetsOptions] [Optional] Additional options if sourceFormat is set to GOOGLE_SHEETS.
  /// [hivePartitioningOptions] [Optional] Options to configure hive partitioning support.
  /// [ignoreUnknownValues] [Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names Google Cloud Bigtable: This setting is ignored. Google Cloud Datastore backups: This setting is ignored. Avro: This setting is ignored.
  /// [jsonOptions] Additional properties to set if `sourceFormat` is set to `NEWLINE_DELIMITED_JSON`.
  /// [maxBadRecords] [Optional] The maximum number of bad records that BigQuery can ignore when reading data. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV, JSON, and Google Sheets. The default value is 0, which requires that all records are valid. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
  /// [metadataCacheMode] [Optional] Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source.
  /// [objectMetadata] ObjectMetadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the source_uris. If ObjectMetadata is set, source_format should be omitted. Currently SIMPLE is the only supported Object Metadata type.
  /// [parquetOptions] Additional properties to set if sourceFormat is set to Parquet.
  /// [referenceFileSchemaUri] [Optional] Provide a referencing file with the expected table schema. Enabled for the format: AVRO, PARQUET, ORC.
  /// [schema] [Optional] The schema for the data. Schema is required for CSV and JSON formats. Schema is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats.
  /// [sourceFormat] [Required] The data format. For CSV files, specify "CSV". For Google sheets, specify "GOOGLE_SHEETS". For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro files, specify "AVRO". For Google Cloud Datastore backups, specify "DATASTORE_BACKUP". [Beta] For Google Cloud Bigtable, specify "BIGTABLE".
  /// [sourceUris] [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups, exactly one URI can be specified. Also, the '*' wildcard character is not allowed.
  ExternalDataConfigurationResponse({
    required this.autodetect,
    required this.avroOptions,
    required this.bigtableOptions,
    required this.compression,
    required this.connectionId,
    required this.csvOptions,
    required this.decimalTargetTypes,
    required this.fileSetSpecType,
    required this.googleSheetsOptions,
    required this.hivePartitioningOptions,
    required this.ignoreUnknownValues,
    required this.jsonOptions,
    required this.maxBadRecords,
    required this.metadataCacheMode,
    required this.objectMetadata,
    required this.parquetOptions,
    required this.referenceFileSchemaUri,
    required this.schema,
    required this.sourceFormat,
    required this.sourceUris,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autodetect'] = autodetect;
    map['avroOptions'] = avroOptions.toMap();
    map['bigtableOptions'] = bigtableOptions.toMap();
    map['compression'] = compression;
    map['connectionId'] = connectionId;
    map['csvOptions'] = csvOptions.toMap();
    map['decimalTargetTypes'] = decimalTargetTypes;
    map['fileSetSpecType'] = fileSetSpecType;
    map['googleSheetsOptions'] = googleSheetsOptions.toMap();
    map['hivePartitioningOptions'] = hivePartitioningOptions.toMap();
    map['ignoreUnknownValues'] = ignoreUnknownValues;
    map['jsonOptions'] = jsonOptions.toMap();
    map['maxBadRecords'] = maxBadRecords;
    map['metadataCacheMode'] = metadataCacheMode;
    map['objectMetadata'] = objectMetadata;
    map['parquetOptions'] = parquetOptions.toMap();
    map['referenceFileSchemaUri'] = referenceFileSchemaUri;
    map['schema'] = schema.toMap();
    map['sourceFormat'] = sourceFormat;
    map['sourceUris'] = sourceUris;
    return map;
  }

  factory ExternalDataConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ExternalDataConfigurationResponse(
      autodetect: map['autodetect'] as bool,
      avroOptions: AvroOptionsResponse.fromMap(
          (map['avroOptions'] as Map).cast<String, dynamic>()),
      bigtableOptions: BigtableOptionsResponse.fromMap(
          (map['bigtableOptions'] as Map).cast<String, dynamic>()),
      compression: map['compression'] as String,
      connectionId: map['connectionId'] as String,
      csvOptions: CsvOptionsResponse.fromMap(
          (map['csvOptions'] as Map).cast<String, dynamic>()),
      decimalTargetTypes: (map['decimalTargetTypes'] as List).cast<String>(),
      fileSetSpecType: map['fileSetSpecType'] as String,
      googleSheetsOptions: GoogleSheetsOptionsResponse.fromMap(
          (map['googleSheetsOptions'] as Map).cast<String, dynamic>()),
      hivePartitioningOptions: HivePartitioningOptionsResponse.fromMap(
          (map['hivePartitioningOptions'] as Map).cast<String, dynamic>()),
      ignoreUnknownValues: map['ignoreUnknownValues'] as bool,
      jsonOptions: JsonOptionsResponse.fromMap(
          (map['jsonOptions'] as Map).cast<String, dynamic>()),
      maxBadRecords: map['maxBadRecords'] as int,
      metadataCacheMode: map['metadataCacheMode'] as String,
      objectMetadata: map['objectMetadata'] as String,
      parquetOptions: ParquetOptionsResponse.fromMap(
          (map['parquetOptions'] as Map).cast<String, dynamic>()),
      referenceFileSchemaUri: map['referenceFileSchemaUri'] as String,
      schema: TableSchemaResponse.fromMap(
          (map['schema'] as Map).cast<String, dynamic>()),
      sourceFormat: map['sourceFormat'] as String,
      sourceUris: (map['sourceUris'] as List).cast<String>(),
    );
  }
}
