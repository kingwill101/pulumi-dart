// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_storage_descriptor_column.dart';
import 'catalog_table_storage_descriptor_schema_reference.dart';
import 'catalog_table_storage_descriptor_ser_de_info.dart';
import 'catalog_table_storage_descriptor_skewed_info.dart';
import 'catalog_table_storage_descriptor_sort_column.dart';

class CatalogTableStorageDescriptor {
  /// List of locations that point to the path where a Delta table is located.
  final List<String>? additionalLocations;

  /// List of reducer grouping columns, clustering columns, and bucketing columns in the table.
  final List<String>? bucketColumns;

  /// Configuration block for columns in the table. See `columns` below.
  final List<CatalogTableStorageDescriptorColumn>? columns;

  /// Whether the data in the table is compressed.
  final bool? compressed;

  /// Input format: SequenceFileInputFormat (binary), or TextInputFormat, or a custom format.
  final String? inputFormat;

  /// Physical location of the table. By default this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name.
  final String? location;

  /// Must be specified if the table contains any dimension columns.
  final int? numberOfBuckets;

  /// Output format: SequenceFileOutputFormat (binary), or IgnoreKeyTextOutputFormat, or a custom format.
  final String? outputFormat;

  /// User-supplied properties in key-value form.
  final Map<String, String>? parameters;

  /// Object that references a schema stored in the AWS Glue Schema Registry. When creating a table, you can pass an empty list of columns for the schema, and instead use a schema reference. See Schema Reference below.
  final CatalogTableStorageDescriptorSchemaReference? schemaReference;

  /// Configuration block for serialization and deserialization ("SerDe") information. See `ser_de_info` below.
  final CatalogTableStorageDescriptorSerDeInfo? serDeInfo;

  /// Configuration block with information about values that appear very frequently in a column (skewed values). See `skewed_info` below.
  final CatalogTableStorageDescriptorSkewedInfo? skewedInfo;

  /// Configuration block for the sort order of each bucket in the table. See `sort_columns` below.
  final List<CatalogTableStorageDescriptorSortColumn>? sortColumns;

  /// Whether the table data is stored in subdirectories.
  final bool? storedAsSubDirectories;

  /// Creates a new [CatalogTableStorageDescriptor].
  /// [additionalLocations] List of locations that point to the path where a Delta table is located.
  /// [bucketColumns] List of reducer grouping columns, clustering columns, and bucketing columns in the table.
  /// [columns] Configuration block for columns in the table. See `columns` below.
  /// [compressed] Whether the data in the table is compressed.
  /// [inputFormat] Input format: SequenceFileInputFormat (binary), or TextInputFormat, or a custom format.
  /// [location] Physical location of the table. By default this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name.
  /// [numberOfBuckets] Must be specified if the table contains any dimension columns.
  /// [outputFormat] Output format: SequenceFileOutputFormat (binary), or IgnoreKeyTextOutputFormat, or a custom format.
  /// [parameters] User-supplied properties in key-value form.
  /// [schemaReference] Object that references a schema stored in the AWS Glue Schema Registry. When creating a table, you can pass an empty list of columns for the schema, and instead use a schema reference. See Schema Reference below.
  /// [serDeInfo] Configuration block for serialization and deserialization ("SerDe") information. See `ser_de_info` below.
  /// [skewedInfo] Configuration block with information about values that appear very frequently in a column (skewed values). See `skewed_info` below.
  /// [sortColumns] Configuration block for the sort order of each bucket in the table. See `sort_columns` below.
  /// [storedAsSubDirectories] Whether the table data is stored in subdirectories.
  CatalogTableStorageDescriptor({
    this.additionalLocations,
    this.bucketColumns,
    this.columns,
    this.compressed,
    this.inputFormat,
    this.location,
    this.numberOfBuckets,
    this.outputFormat,
    this.parameters,
    this.schemaReference,
    this.serDeInfo,
    this.skewedInfo,
    this.sortColumns,
    this.storedAsSubDirectories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLocations': ?additionalLocations,
      'bucketColumns': ?bucketColumns,
      'columns': ?columns == null
          ? null
          : pulumi.Input.encodeList<
              CatalogTableStorageDescriptorColumn,
              Map<String, dynamic>
            >(columns!, (value) => value.toMap()),
      'compressed': ?compressed,
      'inputFormat': ?inputFormat,
      'location': ?location,
      'numberOfBuckets': ?numberOfBuckets,
      'outputFormat': ?outputFormat,
      'parameters': ?parameters,
      'schemaReference': ?schemaReference == null
          ? null
          : schemaReference!.toMap(),
      'serDeInfo': ?serDeInfo == null ? null : serDeInfo!.toMap(),
      'skewedInfo': ?skewedInfo == null ? null : skewedInfo!.toMap(),
      'sortColumns': ?sortColumns == null
          ? null
          : pulumi.Input.encodeList<
              CatalogTableStorageDescriptorSortColumn,
              Map<String, dynamic>
            >(sortColumns!, (value) => value.toMap()),
      'storedAsSubDirectories': ?storedAsSubDirectories,
    };
  }

  factory CatalogTableStorageDescriptor.fromMap(Map<String, dynamic> map) {
    return CatalogTableStorageDescriptor(
      additionalLocations: map['additionalLocations'] == null
          ? null
          : (map['additionalLocations'] as List).cast<String>(),
      bucketColumns: map['bucketColumns'] == null
          ? null
          : (map['bucketColumns'] as List).cast<String>(),
      columns: map['columns'] == null
          ? null
          : pulumi.Input.decodeList<CatalogTableStorageDescriptorColumn>(
              map['columns'],
              (value) => CatalogTableStorageDescriptorColumn.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      compressed: map['compressed'] == null ? null : map['compressed'] as bool,
      inputFormat: map['inputFormat'] == null
          ? null
          : map['inputFormat'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      numberOfBuckets: map['numberOfBuckets'] == null
          ? null
          : map['numberOfBuckets'] as int,
      outputFormat: map['outputFormat'] == null
          ? null
          : map['outputFormat'] as String,
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      schemaReference: map['schemaReference'] == null
          ? null
          : CatalogTableStorageDescriptorSchemaReference.fromMap(
              (map['schemaReference'] as Map).cast<String, dynamic>(),
            ),
      serDeInfo: map['serDeInfo'] == null
          ? null
          : CatalogTableStorageDescriptorSerDeInfo.fromMap(
              (map['serDeInfo'] as Map).cast<String, dynamic>(),
            ),
      skewedInfo: map['skewedInfo'] == null
          ? null
          : CatalogTableStorageDescriptorSkewedInfo.fromMap(
              (map['skewedInfo'] as Map).cast<String, dynamic>(),
            ),
      sortColumns: map['sortColumns'] == null
          ? null
          : pulumi.Input.decodeList<CatalogTableStorageDescriptorSortColumn>(
              map['sortColumns'],
              (value) => CatalogTableStorageDescriptorSortColumn.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      storedAsSubDirectories: map['storedAsSubDirectories'] == null
          ? null
          : map['storedAsSubDirectories'] as bool,
    );
  }
}
