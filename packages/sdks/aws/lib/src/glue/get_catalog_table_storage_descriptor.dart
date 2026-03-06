// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_catalog_table_storage_descriptor_column.dart';
import 'get_catalog_table_storage_descriptor_schema_reference.dart';
import 'get_catalog_table_storage_descriptor_ser_de_info.dart';
import 'get_catalog_table_storage_descriptor_skewed_info.dart';
import 'get_catalog_table_storage_descriptor_sort_column.dart';

class GetCatalogTableStorageDescriptor {
  /// List of locations that point to the path where a Delta table is located
  final pulumi.Input<List<String>> additionalLocations;
  /// List of reducer grouping columns, clustering columns, and bucketing columns in the table.
  final pulumi.Input<List<String>> bucketColumns;
  /// Configuration block for columns in the table. See `columns` below.
  final pulumi.Input<List<GetCatalogTableStorageDescriptorColumn>> columns;
  /// Whether the data in the table is compressed.
  final pulumi.Input<bool> compressed;
  /// Input format: SequenceFileInputFormat (binary), or TextInputFormat, or a custom format.
  final pulumi.Input<String> inputFormat;
  /// Physical location of the table. By default, this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name.
  final pulumi.Input<String> location;
  /// Is if the table contains any dimension columns.
  final pulumi.Input<int> numberOfBuckets;
  /// Output format: SequenceFileOutputFormat (binary), or IgnoreKeyTextOutputFormat, or a custom format.
  final pulumi.Input<String> outputFormat;
  /// Map of initialization parameters for the SerDe, in key-value form.
  final pulumi.Input<Map<String, String>> parameters;
  /// Object that references a schema stored in the AWS Glue Schema Registry. See `schema_reference` below.
  final pulumi.Input<List<GetCatalogTableStorageDescriptorSchemaReference>> schemaReferences;
  /// Configuration block for serialization and deserialization ("SerDe") information. See `ser_de_info` below.
  final pulumi.Input<List<GetCatalogTableStorageDescriptorSerDeInfo>> serDeInfos;
  /// Configuration block with information about values that appear very frequently in a column (skewed values). See `skewed_info` below.
  final pulumi.Input<List<GetCatalogTableStorageDescriptorSkewedInfo>> skewedInfos;
  /// Configuration block for the sort order of each bucket in the table. See `sort_columns` below.
  final pulumi.Input<List<GetCatalogTableStorageDescriptorSortColumn>> sortColumns;
  /// Whether the table data is stored in subdirectories.
  final pulumi.Input<bool> storedAsSubDirectories;

  /// Creates a new [GetCatalogTableStorageDescriptor].
  /// [additionalLocations] List of locations that point to the path where a Delta table is located
  /// [bucketColumns] List of reducer grouping columns, clustering columns, and bucketing columns in the table.
  /// [columns] Configuration block for columns in the table. See `columns` below.
  /// [compressed] Whether the data in the table is compressed.
  /// [inputFormat] Input format: SequenceFileInputFormat (binary), or TextInputFormat, or a custom format.
  /// [location] Physical location of the table. By default, this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name.
  /// [numberOfBuckets] Is if the table contains any dimension columns.
  /// [outputFormat] Output format: SequenceFileOutputFormat (binary), or IgnoreKeyTextOutputFormat, or a custom format.
  /// [parameters] Map of initialization parameters for the SerDe, in key-value form.
  /// [schemaReferences] Object that references a schema stored in the AWS Glue Schema Registry. See `schema_reference` below.
  /// [serDeInfos] Configuration block for serialization and deserialization ("SerDe") information. See `ser_de_info` below.
  /// [skewedInfos] Configuration block with information about values that appear very frequently in a column (skewed values). See `skewed_info` below.
  /// [sortColumns] Configuration block for the sort order of each bucket in the table. See `sort_columns` below.
  /// [storedAsSubDirectories] Whether the table data is stored in subdirectories.
  const GetCatalogTableStorageDescriptor({
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
    return <String, dynamic>{
      'additionalLocations': additionalLocations,
      'bucketColumns': bucketColumns,
      'columns': pulumi.Input.mapInputValue<List<GetCatalogTableStorageDescriptorColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<GetCatalogTableStorageDescriptorColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'compressed': compressed,
      'inputFormat': inputFormat,
      'location': location,
      'numberOfBuckets': numberOfBuckets,
      'outputFormat': outputFormat,
      'parameters': parameters,
      'schemaReferences': pulumi.Input.mapInputValue<List<GetCatalogTableStorageDescriptorSchemaReference>, List<Map<String, dynamic>>>(schemaReferences, (value) => pulumi.Input.encodeList<GetCatalogTableStorageDescriptorSchemaReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serDeInfos': pulumi.Input.mapInputValue<List<GetCatalogTableStorageDescriptorSerDeInfo>, List<Map<String, dynamic>>>(serDeInfos, (value) => pulumi.Input.encodeList<GetCatalogTableStorageDescriptorSerDeInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'skewedInfos': pulumi.Input.mapInputValue<List<GetCatalogTableStorageDescriptorSkewedInfo>, List<Map<String, dynamic>>>(skewedInfos, (value) => pulumi.Input.encodeList<GetCatalogTableStorageDescriptorSkewedInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sortColumns': pulumi.Input.mapInputValue<List<GetCatalogTableStorageDescriptorSortColumn>, List<Map<String, dynamic>>>(sortColumns, (value) => pulumi.Input.encodeList<GetCatalogTableStorageDescriptorSortColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storedAsSubDirectories': storedAsSubDirectories,
    };
  }

  factory GetCatalogTableStorageDescriptor.fromMap(Map<String, dynamic> map) {
    return GetCatalogTableStorageDescriptor(
      additionalLocations: pulumi.Input.fromValue((map['additionalLocations'] as List).cast<String>()),
      bucketColumns: pulumi.Input.fromValue((map['bucketColumns'] as List).cast<String>()),
      columns: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCatalogTableStorageDescriptorColumn>(map['columns']!, (value) => GetCatalogTableStorageDescriptorColumn.fromMap((value as Map).cast<String, dynamic>()))),
      compressed: pulumi.Input.fromValue(map['compressed'] as bool),
      inputFormat: pulumi.Input.fromValue(map['inputFormat'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      numberOfBuckets: pulumi.Input.fromValue(map['numberOfBuckets'] as int),
      outputFormat: pulumi.Input.fromValue(map['outputFormat'] as String),
      parameters: pulumi.Input.fromValue((map['parameters'] as Map).cast<String, String>()),
      schemaReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCatalogTableStorageDescriptorSchemaReference>(map['schemaReferences']!, (value) => GetCatalogTableStorageDescriptorSchemaReference.fromMap((value as Map).cast<String, dynamic>()))),
      serDeInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCatalogTableStorageDescriptorSerDeInfo>(map['serDeInfos']!, (value) => GetCatalogTableStorageDescriptorSerDeInfo.fromMap((value as Map).cast<String, dynamic>()))),
      skewedInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCatalogTableStorageDescriptorSkewedInfo>(map['skewedInfos']!, (value) => GetCatalogTableStorageDescriptorSkewedInfo.fromMap((value as Map).cast<String, dynamic>()))),
      sortColumns: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCatalogTableStorageDescriptorSortColumn>(map['sortColumns']!, (value) => GetCatalogTableStorageDescriptorSortColumn.fromMap((value as Map).cast<String, dynamic>()))),
      storedAsSubDirectories: pulumi.Input.fromValue(map['storedAsSubDirectories'] as bool),
    );
  }
}

