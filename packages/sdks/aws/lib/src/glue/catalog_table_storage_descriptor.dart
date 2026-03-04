// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_storage_descriptor_column.dart';
import 'catalog_table_storage_descriptor_schema_reference.dart';
import 'catalog_table_storage_descriptor_ser_de_info.dart';
import 'catalog_table_storage_descriptor_skewed_info.dart';
import 'catalog_table_storage_descriptor_sort_column.dart';

class CatalogTableStorageDescriptor {
  /// List of locations that point to the path where a Delta table is located.
  final pulumi.Input<List<String>>? additionalLocations;

  /// List of reducer grouping columns, clustering columns, and bucketing columns in the table.
  final pulumi.Input<List<String>>? bucketColumns;

  /// Configuration block for columns in the table. See `columns` below.
  final pulumi.Input<List<CatalogTableStorageDescriptorColumn>>? columns;

  /// Whether the data in the table is compressed.
  final pulumi.Input<bool>? compressed;

  /// Input format: SequenceFileInputFormat (binary), or TextInputFormat, or a custom format.
  final pulumi.Input<String>? inputFormat;

  /// Physical location of the table. By default this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name.
  final pulumi.Input<String>? location;

  /// Must be specified if the table contains any dimension columns.
  final pulumi.Input<int>? numberOfBuckets;

  /// Output format: SequenceFileOutputFormat (binary), or IgnoreKeyTextOutputFormat, or a custom format.
  final pulumi.Input<String>? outputFormat;

  /// User-supplied properties in key-value form.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Object that references a schema stored in the AWS Glue Schema Registry. When creating a table, you can pass an empty list of columns for the schema, and instead use a schema reference. See Schema Reference below.
  final pulumi.Input<CatalogTableStorageDescriptorSchemaReference>?
  schemaReference;

  /// Configuration block for serialization and deserialization ("SerDe") information. See `ser_de_info` below.
  final pulumi.Input<CatalogTableStorageDescriptorSerDeInfo>? serDeInfo;

  /// Configuration block with information about values that appear very frequently in a column (skewed values). See `skewed_info` below.
  final pulumi.Input<CatalogTableStorageDescriptorSkewedInfo>? skewedInfo;

  /// Configuration block for the sort order of each bucket in the table. See `sort_columns` below.
  final pulumi.Input<List<CatalogTableStorageDescriptorSortColumn>>?
  sortColumns;

  /// Whether the table data is stored in subdirectories.
  final pulumi.Input<bool>? storedAsSubDirectories;

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
      'columns':
          ?pulumi.Input.mapOptionalInputValue<
            List<CatalogTableStorageDescriptorColumn>,
            List<Map<String, dynamic>>
          >(
            columns,
            (value) =>
                pulumi.Input.encodeList<
                  CatalogTableStorageDescriptorColumn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'compressed': ?compressed,
      'inputFormat': ?inputFormat,
      'location': ?location,
      'numberOfBuckets': ?numberOfBuckets,
      'outputFormat': ?outputFormat,
      'parameters': ?parameters,
      'schemaReference':
          ?pulumi.Input.mapOptionalInputValue<
            CatalogTableStorageDescriptorSchemaReference,
            Map<String, dynamic>
          >(schemaReference, (value) => value.toMap()),
      'serDeInfo':
          ?pulumi.Input.mapOptionalInputValue<
            CatalogTableStorageDescriptorSerDeInfo,
            Map<String, dynamic>
          >(serDeInfo, (value) => value.toMap()),
      'skewedInfo':
          ?pulumi.Input.mapOptionalInputValue<
            CatalogTableStorageDescriptorSkewedInfo,
            Map<String, dynamic>
          >(skewedInfo, (value) => value.toMap()),
      'sortColumns':
          ?pulumi.Input.mapOptionalInputValue<
            List<CatalogTableStorageDescriptorSortColumn>,
            List<Map<String, dynamic>>
          >(
            sortColumns,
            (value) =>
                pulumi.Input.encodeList<
                  CatalogTableStorageDescriptorSortColumn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'storedAsSubDirectories': ?storedAsSubDirectories,
    };
  }

  factory CatalogTableStorageDescriptor.fromMap(Map<String, dynamic> map) {
    return CatalogTableStorageDescriptor(
      additionalLocations: (() {
        final guardedValue = map['additionalLocations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      bucketColumns: (() {
        final guardedValue = map['bucketColumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      columns: (() {
        final guardedValue = map['columns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CatalogTableStorageDescriptorColumn>(
            guardedValue,
            (value) => CatalogTableStorageDescriptorColumn.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      compressed: (() {
        final guardedValue = map['compressed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      inputFormat: (() {
        final guardedValue = map['inputFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      numberOfBuckets: (() {
        final guardedValue = map['numberOfBuckets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      outputFormat: (() {
        final guardedValue = map['outputFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      schemaReference: (() {
        final guardedValue = map['schemaReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CatalogTableStorageDescriptorSchemaReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serDeInfo: (() {
        final guardedValue = map['serDeInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CatalogTableStorageDescriptorSerDeInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      skewedInfo: (() {
        final guardedValue = map['skewedInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CatalogTableStorageDescriptorSkewedInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sortColumns: (() {
        final guardedValue = map['sortColumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CatalogTableStorageDescriptorSortColumn>(
            guardedValue,
            (value) => CatalogTableStorageDescriptorSortColumn.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      storedAsSubDirectories: (() {
        final guardedValue = map['storedAsSubDirectories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
