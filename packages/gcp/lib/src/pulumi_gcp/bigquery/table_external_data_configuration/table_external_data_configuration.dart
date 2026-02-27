// ignore_for_file: unused_element, unnecessary_cast

import '../table_external_data_configuration_avro_options/table_external_data_configuration_avro_options.dart';
import '../table_external_data_configuration_bigtable_options/table_external_data_configuration_bigtable_options.dart';
import '../table_external_data_configuration_csv_options/table_external_data_configuration_csv_options.dart';
import '../table_external_data_configuration_google_sheets_options/table_external_data_configuration_google_sheets_options.dart';
import '../table_external_data_configuration_hive_partitioning_options/table_external_data_configuration_hive_partitioning_options.dart';
import '../table_external_data_configuration_json_options/table_external_data_configuration_json_options.dart';
import '../table_external_data_configuration_parquet_options/table_external_data_configuration_parquet_options.dart';

class TableExternalDataConfiguration {
  /// Let BigQuery try to autodetect the schema
  /// and format of the table.
  final bool autodetect;

  /// Additional options if `source_format` is set to
  /// "AVRO".  Structure is documented below.
  final TableExternalDataConfigurationAvroOptions? avroOptions;

  /// Additional properties to set if
  /// `source_format` is set to "BIGTABLE". Structure is documented below.
  final TableExternalDataConfigurationBigtableOptions? bigtableOptions;

  /// The compression type of the data source.
  /// Valid values are "NONE" or "GZIP".
  final String? compression;

  /// The connection specifying the credentials to be used to read
  /// external storage, such as Azure Blob, Cloud Storage, or S3. The `connection_id` can have
  /// the form `{{project}}.{{location}}.{{connection_id}}`
  /// or `projects/{{project}}/locations/{{location}}/connections/{{connection_id}}`.
  ///
  /// ~>**NOTE:** If you set `external_data_configuration.connection_id`, the
  /// table schema must be specified using the top-level `schema` field
  /// documented above.
  final String? connectionId;

  /// Additional properties to set if
  /// `source_format` is set to "CSV". Structure is documented below.
  final TableExternalDataConfigurationCsvOptions? csvOptions;

  /// Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown.
  ///
  /// Example: Suppose the value of this field is ["NUMERIC", "BIGNUMERIC"]. If (precision,scale) is:
  ///
  /// (38,9) > NUMERIC;
  /// (39,9) > BIGNUMERIC (NUMERIC cannot hold 30 integer digits);
  /// (38,10) > BIGNUMERIC (NUMERIC cannot hold 10 fractional digits);
  /// (76,38) > BIGNUMERIC;
  /// (77,38) > BIGNUMERIC (error if value exceeds supported range).
  ///
  /// This field cannot contain duplicate types. The order of the types in this field is ignored. For example, ["BIGNUMERIC", "NUMERIC"] is the same as ["NUMERIC", "BIGNUMERIC"] and NUMERIC always takes precedence over BIGNUMERIC.
  ///
  /// Defaults to ["NUMERIC", "STRING"] for ORC and ["NUMERIC"] for the other file formats.
  final List<String>? decimalTargetTypes;

  /// Specifies how source URIs are interpreted for constructing the file set to load.
  /// By default source URIs are expanded against the underlying storage.
  /// Other options include specifying manifest files. Only applicable to object storage systems. Docs
  final String? fileSetSpecType;

  /// Additional options if
  /// `source_format` is set to "GOOGLE_SHEETS". Structure is
  /// documented below.
  final TableExternalDataConfigurationGoogleSheetsOptions? googleSheetsOptions;

  /// When set, configures hive partitioning
  /// support. Not all storage formats support hive partitioning -- requesting hive
  /// partitioning on an unsupported format will lead to an error, as will providing
  /// an invalid specification. Structure is documented below.
  final TableExternalDataConfigurationHivePartitioningOptions?
      hivePartitioningOptions;

  /// Indicates if BigQuery should
  /// allow extra values that are not represented in the table schema.
  /// If true, the extra values are ignored. If false, records with
  /// extra columns are treated as bad records, and if there are too
  /// many bad records, an invalid error is returned in the job result.
  /// The default value is false.
  final bool? ignoreUnknownValues;

  /// Used to indicate that a JSON variant, rather than normal JSON, is being used as the sourceFormat. This should only be used in combination with the `JSON` source format. Valid values are: `GEOJSON`.
  final String? jsonExtension;

  /// Additional properties to set if
  /// `source_format` is set to "JSON". Structure is documented below.
  final TableExternalDataConfigurationJsonOptions? jsonOptions;

  /// The maximum number of bad records that
  /// BigQuery can ignore when reading data.
  final int? maxBadRecords;

  /// Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source. Valid values are `AUTOMATIC` and `MANUAL`.
  final String? metadataCacheMode;

  /// Object Metadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the sourceUris. If `object_metadata` is set, `source_format` should be omitted.
  final String? objectMetadata;

  /// Additional properties to set if
  /// `source_format` is set to "PARQUET". Structure is documented below.
  final TableExternalDataConfigurationParquetOptions? parquetOptions;

  /// When creating an external table, the user can provide a reference file with the table schema. This is enabled for the following formats: AVRO, PARQUET, ORC.
  final String? referenceFileSchemaUri;

  /// A JSON schema for the external table. Schema is required
  /// for CSV and JSON formats if autodetect is not on. Schema is disallowed
  /// for Google Cloud Bigtable, Cloud Datastore backups, Avro, Iceberg, ORC and Parquet formats.
  /// ~>**NOTE:** Because this field expects a JSON string, any changes to the
  /// string will create a diff, even if the JSON itself hasn't changed.
  /// Furthermore drift for this field cannot not be detected because BigQuery
  /// only uses this schema to compute the effective schema for the table, therefore
  /// any changes on the configured value will force the table to be recreated.
  /// This schema is effectively only applied when creating a table from an external
  /// datasource, after creation the computed schema will be stored in
  /// `google_bigquery_table.schema`
  ///
  /// ~>**NOTE:** If you set `external_data_configuration.connection_id`, the
  /// table schema must be specified using the top-level `schema` field
  /// documented above.
  final String? schema;

  /// The data format. Please see sourceFormat under
  /// [ExternalDataConfiguration](https://cloud.google.com/bigquery/docs/reference/rest/v2/tables#externaldataconfiguration)
  /// in Bigquery's public API documentation for supported formats. To use "GOOGLE_SHEETS"
  /// the `scopes` must include "https://www.googleapis.com/auth/drive.readonly".
  final String? sourceFormat;

  /// A list of the fully-qualified URIs that point to
  /// your data in Google Cloud.
  final List<String> sourceUris;

  TableExternalDataConfiguration({
    required this.autodetect,
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
    this.jsonExtension,
    this.jsonOptions,
    this.maxBadRecords,
    this.metadataCacheMode,
    this.objectMetadata,
    this.parquetOptions,
    this.referenceFileSchemaUri,
    this.schema,
    this.sourceFormat,
    required this.sourceUris,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autodetect'] = autodetect;
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
    final jsonExtensionValue = jsonExtension;
    if (jsonExtensionValue != null) {
      map['jsonExtension'] = jsonExtensionValue;
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
      map['schema'] = schemaValue;
    }
    final sourceFormatValue = sourceFormat;
    if (sourceFormatValue != null) {
      map['sourceFormat'] = sourceFormatValue;
    }
    map['sourceUris'] = sourceUris;
    return map;
  }

  factory TableExternalDataConfiguration.fromMap(Map<String, dynamic> map) {
    return TableExternalDataConfiguration(
      autodetect: map['autodetect'] as bool,
      avroOptions: map['avroOptions'] == null
          ? null
          : TableExternalDataConfigurationAvroOptions.fromMap(
              (map['avroOptions'] as Map).cast<String, dynamic>()),
      bigtableOptions: map['bigtableOptions'] == null
          ? null
          : TableExternalDataConfigurationBigtableOptions.fromMap(
              (map['bigtableOptions'] as Map).cast<String, dynamic>()),
      compression:
          map['compression'] == null ? null : map['compression'] as String,
      connectionId:
          map['connectionId'] == null ? null : map['connectionId'] as String,
      csvOptions: map['csvOptions'] == null
          ? null
          : TableExternalDataConfigurationCsvOptions.fromMap(
              (map['csvOptions'] as Map).cast<String, dynamic>()),
      decimalTargetTypes: map['decimalTargetTypes'] == null
          ? null
          : (map['decimalTargetTypes'] as List).cast<String>(),
      fileSetSpecType: map['fileSetSpecType'] == null
          ? null
          : map['fileSetSpecType'] as String,
      googleSheetsOptions: map['googleSheetsOptions'] == null
          ? null
          : TableExternalDataConfigurationGoogleSheetsOptions.fromMap(
              (map['googleSheetsOptions'] as Map).cast<String, dynamic>()),
      hivePartitioningOptions: map['hivePartitioningOptions'] == null
          ? null
          : TableExternalDataConfigurationHivePartitioningOptions.fromMap(
              (map['hivePartitioningOptions'] as Map).cast<String, dynamic>()),
      ignoreUnknownValues: map['ignoreUnknownValues'] == null
          ? null
          : map['ignoreUnknownValues'] as bool,
      jsonExtension:
          map['jsonExtension'] == null ? null : map['jsonExtension'] as String,
      jsonOptions: map['jsonOptions'] == null
          ? null
          : TableExternalDataConfigurationJsonOptions.fromMap(
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
          : TableExternalDataConfigurationParquetOptions.fromMap(
              (map['parquetOptions'] as Map).cast<String, dynamic>()),
      referenceFileSchemaUri: map['referenceFileSchemaUri'] == null
          ? null
          : map['referenceFileSchemaUri'] as String,
      schema: map['schema'] == null ? null : map['schema'] as String,
      sourceFormat:
          map['sourceFormat'] == null ? null : map['sourceFormat'] as String,
      sourceUris: (map['sourceUris'] as List).cast<String>(),
    );
  }
}
