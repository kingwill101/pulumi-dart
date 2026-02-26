// ignore_for_file: unused_element, unnecessary_cast

import 'avro_options.dart';
import 'bigtable_options.dart';
import 'csv_options.dart';
import 'google_sheets_options.dart';
import 'hive_partitioning_options.dart';
import 'json_options.dart';
import 'parquet_options.dart';
import 'table_schema.dart';

class ExternalDataConfiguration {
  /// Try to detect schema and format options automatically. Any option specified explicitly will be honored.
  final bool? autodetect;

  /// Additional properties to set if sourceFormat is set to Avro.
  final AvroOptions? avroOptions;

  /// [Optional] Additional options if sourceFormat is set to BIGTABLE.
  final BigtableOptions? bigtableOptions;

  /// [Optional] The compression type of the data source. Possible values include GZIP and NONE. The default value is NONE. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
  final String? compression;

  /// [Optional, Trusted Tester] Connection for external data source.
  final String? connectionId;

  /// Additional properties to set if sourceFormat is set to CSV.
  final CsvOptions? csvOptions;

  /// [Optional] Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is ["NUMERIC", "BIGNUMERIC"]. If (precision,scale) is: (38,9) -> NUMERIC; (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); (76,38) -> BIGNUMERIC; (77,38) -> BIGNUMERIC (error if value exeeds supported range). This field cannot contain duplicate types. The order of the types in this field is ignored. For example, ["BIGNUMERIC", "NUMERIC"] is the same as ["NUMERIC", "BIGNUMERIC"] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to ["NUMERIC", "STRING"] for ORC and ["NUMERIC"] for the other file formats.
  final List<String>? decimalTargetTypes;

  /// [Optional] Specifies how source URIs are interpreted for constructing the file set to load. By default source URIs are expanded against the underlying storage. Other options include specifying manifest files. Only applicable to object storage systems.
  final String? fileSetSpecType;

  /// [Optional] Additional options if sourceFormat is set to GOOGLE_SHEETS.
  final GoogleSheetsOptions? googleSheetsOptions;

  /// [Optional] Options to configure hive partitioning support.
  final HivePartitioningOptions? hivePartitioningOptions;

  /// [Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names Google Cloud Bigtable: This setting is ignored. Google Cloud Datastore backups: This setting is ignored. Avro: This setting is ignored.
  final bool? ignoreUnknownValues;

  /// Additional properties to set if `sourceFormat` is set to `NEWLINE_DELIMITED_JSON`.
  final JsonOptions? jsonOptions;

  /// [Optional] The maximum number of bad records that BigQuery can ignore when reading data. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV, JSON, and Google Sheets. The default value is 0, which requires that all records are valid. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
  final int? maxBadRecords;

  /// [Optional] Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source.
  final String? metadataCacheMode;

  /// ObjectMetadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the source_uris. If ObjectMetadata is set, source_format should be omitted. Currently SIMPLE is the only supported Object Metadata type.
  final String? objectMetadata;

  /// Additional properties to set if sourceFormat is set to Parquet.
  final ParquetOptions? parquetOptions;

  /// [Optional] Provide a referencing file with the expected table schema. Enabled for the format: AVRO, PARQUET, ORC.
  final String? referenceFileSchemaUri;

  /// [Optional] The schema for the data. Schema is required for CSV and JSON formats. Schema is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats.
  final TableSchema? schema;

  /// [Required] The data format. For CSV files, specify "CSV". For Google sheets, specify "GOOGLE_SHEETS". For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro files, specify "AVRO". For Google Cloud Datastore backups, specify "DATASTORE_BACKUP". [Beta] For Google Cloud Bigtable, specify "BIGTABLE".
  final String? sourceFormat;

  /// [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups, exactly one URI can be specified. Also, the '*' wildcard character is not allowed.
  final List<String>? sourceUris;

  ExternalDataConfiguration({
    this.autodetect,
    this.avroOptions,
    this.bigtableOptions,
    this.compression,
    this.connectionId,
    this.csvOptions,
    this.decimalTargetTypes,
    this.fileSetSpecType,
    this.googleSheetsOptions,
    this.hivePartitioningOptions,
    this.ignoreUnknownValues,
    this.jsonOptions,
    this.maxBadRecords,
    this.metadataCacheMode,
    this.objectMetadata,
    this.parquetOptions,
    this.referenceFileSchemaUri,
    this.schema,
    this.sourceFormat,
    this.sourceUris,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autodetectValue = autodetect;
    if (autodetectValue != null) {
      map['autodetect'] = autodetectValue;
    }
    final avroOptionsValue = avroOptions;
    if (avroOptionsValue != null) {
      map['avroOptions'] = avroOptionsValue.toMap();
    }
    final bigtableOptionsValue = bigtableOptions;
    if (bigtableOptionsValue != null) {
      map['bigtableOptions'] = bigtableOptionsValue.toMap();
    }
    final compressionValue = compression;
    if (compressionValue != null) {
      map['compression'] = compressionValue;
    }
    final connectionIdValue = connectionId;
    if (connectionIdValue != null) {
      map['connectionId'] = connectionIdValue;
    }
    final csvOptionsValue = csvOptions;
    if (csvOptionsValue != null) {
      map['csvOptions'] = csvOptionsValue.toMap();
    }
    final decimalTargetTypesValue = decimalTargetTypes;
    if (decimalTargetTypesValue != null) {
      map['decimalTargetTypes'] = decimalTargetTypesValue;
    }
    final fileSetSpecTypeValue = fileSetSpecType;
    if (fileSetSpecTypeValue != null) {
      map['fileSetSpecType'] = fileSetSpecTypeValue;
    }
    final googleSheetsOptionsValue = googleSheetsOptions;
    if (googleSheetsOptionsValue != null) {
      map['googleSheetsOptions'] = googleSheetsOptionsValue.toMap();
    }
    final hivePartitioningOptionsValue = hivePartitioningOptions;
    if (hivePartitioningOptionsValue != null) {
      map['hivePartitioningOptions'] = hivePartitioningOptionsValue.toMap();
    }
    final ignoreUnknownValuesValue = ignoreUnknownValues;
    if (ignoreUnknownValuesValue != null) {
      map['ignoreUnknownValues'] = ignoreUnknownValuesValue;
    }
    final jsonOptionsValue = jsonOptions;
    if (jsonOptionsValue != null) {
      map['jsonOptions'] = jsonOptionsValue.toMap();
    }
    final maxBadRecordsValue = maxBadRecords;
    if (maxBadRecordsValue != null) {
      map['maxBadRecords'] = maxBadRecordsValue;
    }
    final metadataCacheModeValue = metadataCacheMode;
    if (metadataCacheModeValue != null) {
      map['metadataCacheMode'] = metadataCacheModeValue;
    }
    final objectMetadataValue = objectMetadata;
    if (objectMetadataValue != null) {
      map['objectMetadata'] = objectMetadataValue;
    }
    final parquetOptionsValue = parquetOptions;
    if (parquetOptionsValue != null) {
      map['parquetOptions'] = parquetOptionsValue.toMap();
    }
    final referenceFileSchemaUriValue = referenceFileSchemaUri;
    if (referenceFileSchemaUriValue != null) {
      map['referenceFileSchemaUri'] = referenceFileSchemaUriValue;
    }
    final schemaValue = schema;
    if (schemaValue != null) {
      map['schema'] = schemaValue.toMap();
    }
    final sourceFormatValue = sourceFormat;
    if (sourceFormatValue != null) {
      map['sourceFormat'] = sourceFormatValue;
    }
    final sourceUrisValue = sourceUris;
    if (sourceUrisValue != null) {
      map['sourceUris'] = sourceUrisValue;
    }
    return map;
  }

  factory ExternalDataConfiguration.fromMap(Map<String, dynamic> map) {
    return ExternalDataConfiguration(
      autodetect: map['autodetect'] == null ? null : map['autodetect'] as bool,
      avroOptions: map['avroOptions'] == null
          ? null
          : AvroOptions.fromMap(
              (map['avroOptions'] as Map).cast<String, dynamic>()),
      bigtableOptions: map['bigtableOptions'] == null
          ? null
          : BigtableOptions.fromMap(
              (map['bigtableOptions'] as Map).cast<String, dynamic>()),
      compression:
          map['compression'] == null ? null : map['compression'] as String,
      connectionId:
          map['connectionId'] == null ? null : map['connectionId'] as String,
      csvOptions: map['csvOptions'] == null
          ? null
          : CsvOptions.fromMap(
              (map['csvOptions'] as Map).cast<String, dynamic>()),
      decimalTargetTypes: map['decimalTargetTypes'] == null
          ? null
          : (map['decimalTargetTypes'] as List).cast<String>(),
      fileSetSpecType: map['fileSetSpecType'] == null
          ? null
          : map['fileSetSpecType'] as String,
      googleSheetsOptions: map['googleSheetsOptions'] == null
          ? null
          : GoogleSheetsOptions.fromMap(
              (map['googleSheetsOptions'] as Map).cast<String, dynamic>()),
      hivePartitioningOptions: map['hivePartitioningOptions'] == null
          ? null
          : HivePartitioningOptions.fromMap(
              (map['hivePartitioningOptions'] as Map).cast<String, dynamic>()),
      ignoreUnknownValues: map['ignoreUnknownValues'] == null
          ? null
          : map['ignoreUnknownValues'] as bool,
      jsonOptions: map['jsonOptions'] == null
          ? null
          : JsonOptions.fromMap(
              (map['jsonOptions'] as Map).cast<String, dynamic>()),
      maxBadRecords:
          map['maxBadRecords'] == null ? null : map['maxBadRecords'] as int,
      metadataCacheMode: map['metadataCacheMode'] == null
          ? null
          : map['metadataCacheMode'] as String,
      objectMetadata: map['objectMetadata'] == null
          ? null
          : map['objectMetadata'] as String,
      parquetOptions: map['parquetOptions'] == null
          ? null
          : ParquetOptions.fromMap(
              (map['parquetOptions'] as Map).cast<String, dynamic>()),
      referenceFileSchemaUri: map['referenceFileSchemaUri'] == null
          ? null
          : map['referenceFileSchemaUri'] as String,
      schema: map['schema'] == null
          ? null
          : TableSchema.fromMap((map['schema'] as Map).cast<String, dynamic>()),
      sourceFormat:
          map['sourceFormat'] == null ? null : map['sourceFormat'] as String,
      sourceUris: map['sourceUris'] == null
          ? null
          : (map['sourceUris'] as List).cast<String>(),
    );
  }
}
