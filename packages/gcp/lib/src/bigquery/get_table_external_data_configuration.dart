// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_external_data_configuration_avro_option.dart';
import 'get_table_external_data_configuration_bigtable_option.dart';
import 'get_table_external_data_configuration_csv_option.dart';
import 'get_table_external_data_configuration_google_sheets_option.dart';
import 'get_table_external_data_configuration_hive_partitioning_option.dart';
import 'get_table_external_data_configuration_json_option.dart';
import 'get_table_external_data_configuration_parquet_option.dart';

class GetTableExternalDataConfiguration {
  /// Let BigQuery try to autodetect the schema and format of the table.
  final bool autodetect;

  /// Additional options if source_format is set to "AVRO"
  final List<GetTableExternalDataConfigurationAvroOption> avroOptions;

  /// Additional options if sourceFormat is set to BIGTABLE.
  final List<GetTableExternalDataConfigurationBigtableOption> bigtableOptions;

  /// The compression type of the data source. Valid values are "NONE" or "GZIP".
  final String compression;

  /// The connection specifying the credentials to be used to read external storage, such as Azure Blob, Cloud Storage, or S3. The connectionId can have the form "<project>.<location>.<connection_id>" or "projects/<project>/locations/<location>/connections/<connection_id>".
  final String connectionId;

  /// Additional properties to set if source_format is set to "CSV".
  final List<GetTableExternalDataConfigurationCsvOption> csvOptions;

  /// The data types that could be used as a target type when converting decimal values.
  final List<String> decimalTargetTypes;

  /// Specifies how source URIs are interpreted for constructing the file set to load.  By default source URIs are expanded against the underlying storage.  Other options include specifying manifest files. Only applicable to object storage systems.
  final String fileSetSpecType;

  /// Additional options if source_format is set to "GOOGLE_SHEETS".
  final List<GetTableExternalDataConfigurationGoogleSheetsOption>
      googleSheetsOptions;

  /// When set, configures hive partitioning support. Not all storage formats support hive partitioning -- requesting hive partitioning on an unsupported format will lead to an error, as will providing an invalid specification.
  final List<GetTableExternalDataConfigurationHivePartitioningOption>
      hivePartitioningOptions;

  /// Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false.
  final bool ignoreUnknownValues;

  /// Load option to be used together with sourceFormat newline-delimited JSON to indicate that a variant of JSON is being loaded. To load newline-delimited GeoJSON, specify GEOJSON (and sourceFormat must be set to NEWLINE_DELIMITED_JSON).
  final String jsonExtension;

  /// Additional properties to set if sourceFormat is set to JSON.
  final List<GetTableExternalDataConfigurationJsonOption> jsonOptions;

  /// The maximum number of bad records that BigQuery can ignore when reading data.
  final int maxBadRecords;

  /// Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source.
  final String metadataCacheMode;

  /// Object Metadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the sourceUris. If ObjectMetadata is set, sourceFormat should be omitted.
  final String objectMetadata;

  /// Additional properties to set if sourceFormat is set to PARQUET.
  final List<GetTableExternalDataConfigurationParquetOption> parquetOptions;

  /// When creating an external table, the user can provide a reference file with the table schema. This is enabled for the following formats: AVRO, PARQUET, ORC.
  final String referenceFileSchemaUri;

  /// A JSON schema for the external table. Schema is required for CSV and JSON formats and is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats when using external tables.
  final String schema;

  /// Please see sourceFormat under ExternalDataConfiguration in Bigquery's public API documentation (https://cloud.google.com/bigquery/docs/reference/rest/v2/tables#externaldataconfiguration) for supported formats. To use "GOOGLE_SHEETS" the scopes must include "googleapis.com/auth/drive.readonly".
  final String sourceFormat;

  /// A list of the fully-qualified URIs that point to your data in Google Cloud.
  final List<String> sourceUris;

  /// Creates a new [GetTableExternalDataConfiguration].
  /// [autodetect] Let BigQuery try to autodetect the schema and format of the table.
  /// [avroOptions] Additional options if source_format is set to "AVRO"
  /// [bigtableOptions] Additional options if sourceFormat is set to BIGTABLE.
  /// [compression] The compression type of the data source. Valid values are "NONE" or "GZIP".
  /// [connectionId] The connection specifying the credentials to be used to read external storage, such as Azure Blob, Cloud Storage, or S3. The connectionId can have the form "<project>.<location>.<connection_id>" or "projects/<project>/locations/<location>/connections/<connection_id>".
  /// [csvOptions] Additional properties to set if source_format is set to "CSV".
  /// [decimalTargetTypes] The data types that could be used as a target type when converting decimal values.
  /// [fileSetSpecType] Specifies how source URIs are interpreted for constructing the file set to load.  By default source URIs are expanded against the underlying storage.  Other options include specifying manifest files. Only applicable to object storage systems.
  /// [googleSheetsOptions] Additional options if source_format is set to "GOOGLE_SHEETS".
  /// [hivePartitioningOptions] When set, configures hive partitioning support. Not all storage formats support hive partitioning -- requesting hive partitioning on an unsupported format will lead to an error, as will providing an invalid specification.
  /// [ignoreUnknownValues] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false.
  /// [jsonExtension] Load option to be used together with sourceFormat newline-delimited JSON to indicate that a variant of JSON is being loaded. To load newline-delimited GeoJSON, specify GEOJSON (and sourceFormat must be set to NEWLINE_DELIMITED_JSON).
  /// [jsonOptions] Additional properties to set if sourceFormat is set to JSON.
  /// [maxBadRecords] The maximum number of bad records that BigQuery can ignore when reading data.
  /// [metadataCacheMode] Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source.
  /// [objectMetadata] Object Metadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the sourceUris. If ObjectMetadata is set, sourceFormat should be omitted.
  /// [parquetOptions] Additional properties to set if sourceFormat is set to PARQUET.
  /// [referenceFileSchemaUri] When creating an external table, the user can provide a reference file with the table schema. This is enabled for the following formats: AVRO, PARQUET, ORC.
  /// [schema] A JSON schema for the external table. Schema is required for CSV and JSON formats and is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats when using external tables.
  /// [sourceFormat] Please see sourceFormat under ExternalDataConfiguration in Bigquery's public API documentation (https://cloud.google.com/bigquery/docs/reference/rest/v2/tables#externaldataconfiguration) for supported formats. To use "GOOGLE_SHEETS" the scopes must include "googleapis.com/auth/drive.readonly".
  /// [sourceUris] A list of the fully-qualified URIs that point to your data in Google Cloud.
  GetTableExternalDataConfiguration({
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
    required this.jsonExtension,
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
    map['avroOptions'] = pulumi.Input.encodeList<
        GetTableExternalDataConfigurationAvroOption,
        Map<String, dynamic>>(avroOptions, (value) => value.toMap());
    map['bigtableOptions'] = pulumi.Input.encodeList<
        GetTableExternalDataConfigurationBigtableOption,
        Map<String, dynamic>>(bigtableOptions, (value) => value.toMap());
    map['compression'] = compression;
    map['connectionId'] = connectionId;
    map['csvOptions'] = pulumi.Input.encodeList<
        GetTableExternalDataConfigurationCsvOption,
        Map<String, dynamic>>(csvOptions, (value) => value.toMap());
    map['decimalTargetTypes'] = decimalTargetTypes;
    map['fileSetSpecType'] = fileSetSpecType;
    map['googleSheetsOptions'] = pulumi.Input.encodeList<
        GetTableExternalDataConfigurationGoogleSheetsOption,
        Map<String, dynamic>>(googleSheetsOptions, (value) => value.toMap());
    map['hivePartitioningOptions'] = pulumi.Input.encodeList<
            GetTableExternalDataConfigurationHivePartitioningOption,
            Map<String, dynamic>>(
        hivePartitioningOptions, (value) => value.toMap());
    map['ignoreUnknownValues'] = ignoreUnknownValues;
    map['jsonExtension'] = jsonExtension;
    map['jsonOptions'] = pulumi.Input.encodeList<
        GetTableExternalDataConfigurationJsonOption,
        Map<String, dynamic>>(jsonOptions, (value) => value.toMap());
    map['maxBadRecords'] = maxBadRecords;
    map['metadataCacheMode'] = metadataCacheMode;
    map['objectMetadata'] = objectMetadata;
    map['parquetOptions'] = pulumi.Input.encodeList<
        GetTableExternalDataConfigurationParquetOption,
        Map<String, dynamic>>(parquetOptions, (value) => value.toMap());
    map['referenceFileSchemaUri'] = referenceFileSchemaUri;
    map['schema'] = schema;
    map['sourceFormat'] = sourceFormat;
    map['sourceUris'] = sourceUris;
    return map;
  }

  factory GetTableExternalDataConfiguration.fromMap(Map<String, dynamic> map) {
    return GetTableExternalDataConfiguration(
      autodetect: map['autodetect'] as bool,
      avroOptions:
          pulumi.Input.decodeList<GetTableExternalDataConfigurationAvroOption>(
              map['avroOptions'],
              (value) => GetTableExternalDataConfigurationAvroOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bigtableOptions: pulumi.Input.decodeList<
              GetTableExternalDataConfigurationBigtableOption>(
          map['bigtableOptions'],
          (value) => GetTableExternalDataConfigurationBigtableOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      compression: map['compression'] as String,
      connectionId: map['connectionId'] as String,
      csvOptions:
          pulumi.Input.decodeList<GetTableExternalDataConfigurationCsvOption>(
              map['csvOptions'],
              (value) => GetTableExternalDataConfigurationCsvOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      decimalTargetTypes: (map['decimalTargetTypes'] as List).cast<String>(),
      fileSetSpecType: map['fileSetSpecType'] as String,
      googleSheetsOptions: pulumi.Input.decodeList<
              GetTableExternalDataConfigurationGoogleSheetsOption>(
          map['googleSheetsOptions'],
          (value) =>
              GetTableExternalDataConfigurationGoogleSheetsOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      hivePartitioningOptions: pulumi.Input.decodeList<
              GetTableExternalDataConfigurationHivePartitioningOption>(
          map['hivePartitioningOptions'],
          (value) =>
              GetTableExternalDataConfigurationHivePartitioningOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ignoreUnknownValues: map['ignoreUnknownValues'] as bool,
      jsonExtension: map['jsonExtension'] as String,
      jsonOptions:
          pulumi.Input.decodeList<GetTableExternalDataConfigurationJsonOption>(
              map['jsonOptions'],
              (value) => GetTableExternalDataConfigurationJsonOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maxBadRecords: map['maxBadRecords'] as int,
      metadataCacheMode: map['metadataCacheMode'] as String,
      objectMetadata: map['objectMetadata'] as String,
      parquetOptions: pulumi.Input.decodeList<
              GetTableExternalDataConfigurationParquetOption>(
          map['parquetOptions'],
          (value) => GetTableExternalDataConfigurationParquetOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      referenceFileSchemaUri: map['referenceFileSchemaUri'] as String,
      schema: map['schema'] as String,
      sourceFormat: map['sourceFormat'] as String,
      sourceUris: (map['sourceUris'] as List).cast<String>(),
    );
  }
}
