// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_catalog_table_storage_descriptor_column/get_catalog_table_storage_descriptor_column.dart';
import '../get_catalog_table_storage_descriptor_schema_reference/get_catalog_table_storage_descriptor_schema_reference.dart';
import '../get_catalog_table_storage_descriptor_ser_de_info/get_catalog_table_storage_descriptor_ser_de_info.dart';
import '../get_catalog_table_storage_descriptor_skewed_info/get_catalog_table_storage_descriptor_skewed_info.dart';
import '../get_catalog_table_storage_descriptor_sort_column/get_catalog_table_storage_descriptor_sort_column.dart';

class GetCatalogTableStorageDescriptor {
  /// List of locations that point to the path where a Delta table is located
  final List<String> additionalLocations;

  /// List of reducer grouping columns, clustering columns, and bucketing columns in the table.
  final List<String> bucketColumns;

  /// Configuration block for columns in the table. See `columns` below.
  final List<GetCatalogTableStorageDescriptorColumn> columns;

  /// Whether the data in the table is compressed.
  final bool compressed;

  /// Input format: SequenceFileInputFormat (binary), or TextInputFormat, or a custom format.
  final String inputFormat;

  /// Physical location of the table. By default, this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name.
  final String location;

  /// Is if the table contains any dimension columns.
  final int numberOfBuckets;

  /// Output format: SequenceFileOutputFormat (binary), or IgnoreKeyTextOutputFormat, or a custom format.
  final String outputFormat;

  /// Map of initialization parameters for the SerDe, in key-value form.
  final Map<String, String> parameters;

  /// Object that references a schema stored in the AWS Glue Schema Registry. See `schema_reference` below.
  final List<GetCatalogTableStorageDescriptorSchemaReference> schemaReferences;

  /// Configuration block for serialization and deserialization ("SerDe") information. See `ser_de_info` below.
  final List<GetCatalogTableStorageDescriptorSerDeInfo> serDeInfos;

  /// Configuration block with information about values that appear very frequently in a column (skewed values). See `skewed_info` below.
  final List<GetCatalogTableStorageDescriptorSkewedInfo> skewedInfos;

  /// Configuration block for the sort order of each bucket in the table. See `sort_columns` below.
  final List<GetCatalogTableStorageDescriptorSortColumn> sortColumns;

  /// Whether the table data is stored in subdirectories.
  final bool storedAsSubDirectories;

  GetCatalogTableStorageDescriptor({
    required this.additionalLocations,
    required this.bucketColumns,
    required this.columns,
    required this.compressed,
    required this.inputFormat,
    required this.location,
    required this.numberOfBuckets,
    required this.outputFormat,
    required this.parameters,
    required this.schemaReferences,
    required this.serDeInfos,
    required this.skewedInfos,
    required this.sortColumns,
    required this.storedAsSubDirectories,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalLocations'] = additionalLocations;
    map['bucketColumns'] = bucketColumns;
    map['columns'] = pulumi.Input.encodeList<
        GetCatalogTableStorageDescriptorColumn,
        Map<String, dynamic>>(columns, (value) => value.toMap());
    map['compressed'] = compressed;
    map['inputFormat'] = inputFormat;
    map['location'] = location;
    map['numberOfBuckets'] = numberOfBuckets;
    map['outputFormat'] = outputFormat;
    map['parameters'] = parameters;
    map['schemaReferences'] = pulumi.Input.encodeList<
        GetCatalogTableStorageDescriptorSchemaReference,
        Map<String, dynamic>>(schemaReferences, (value) => value.toMap());
    map['serDeInfos'] = pulumi.Input.encodeList<
        GetCatalogTableStorageDescriptorSerDeInfo,
        Map<String, dynamic>>(serDeInfos, (value) => value.toMap());
    map['skewedInfos'] = pulumi.Input.encodeList<
        GetCatalogTableStorageDescriptorSkewedInfo,
        Map<String, dynamic>>(skewedInfos, (value) => value.toMap());
    map['sortColumns'] = pulumi.Input.encodeList<
        GetCatalogTableStorageDescriptorSortColumn,
        Map<String, dynamic>>(sortColumns, (value) => value.toMap());
    map['storedAsSubDirectories'] = storedAsSubDirectories;
    return map;
  }

  factory GetCatalogTableStorageDescriptor.fromMap(Map<String, dynamic> map) {
    return GetCatalogTableStorageDescriptor(
      additionalLocations: (map['additionalLocations'] as List).cast<String>(),
      bucketColumns: (map['bucketColumns'] as List).cast<String>(),
      columns: pulumi.Input.decodeList<GetCatalogTableStorageDescriptorColumn>(
          map['columns'],
          (value) => GetCatalogTableStorageDescriptorColumn.fromMap(
              (value as Map).cast<String, dynamic>())),
      compressed: map['compressed'] as bool,
      inputFormat: map['inputFormat'] as String,
      location: map['location'] as String,
      numberOfBuckets: map['numberOfBuckets'] as int,
      outputFormat: map['outputFormat'] as String,
      parameters: (map['parameters'] as Map).cast<String, String>(),
      schemaReferences: pulumi.Input.decodeList<
              GetCatalogTableStorageDescriptorSchemaReference>(
          map['schemaReferences'],
          (value) => GetCatalogTableStorageDescriptorSchemaReference.fromMap(
              (value as Map).cast<String, dynamic>())),
      serDeInfos:
          pulumi.Input.decodeList<GetCatalogTableStorageDescriptorSerDeInfo>(
              map['serDeInfos'],
              (value) => GetCatalogTableStorageDescriptorSerDeInfo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      skewedInfos:
          pulumi.Input.decodeList<GetCatalogTableStorageDescriptorSkewedInfo>(
              map['skewedInfos'],
              (value) => GetCatalogTableStorageDescriptorSkewedInfo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sortColumns:
          pulumi.Input.decodeList<GetCatalogTableStorageDescriptorSortColumn>(
              map['sortColumns'],
              (value) => GetCatalogTableStorageDescriptorSortColumn.fromMap(
                  (value as Map).cast<String, dynamic>())),
      storedAsSubDirectories: map['storedAsSubDirectories'] as bool,
    );
  }
}
