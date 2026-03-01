// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_storage_descriptor_column.dart';
import 'partition_storage_descriptor_ser_de_info.dart';
import 'partition_storage_descriptor_skewed_info.dart';
import 'partition_storage_descriptor_sort_column.dart';

class PartitionStorageDescriptor {
  /// List of locations that point to the path where a Delta table is located.
  final List<String>? additionalLocations;

  /// A list of reducer grouping columns, clustering columns, and bucketing columns in the table.
  final List<String>? bucketColumns;

  /// A list of the Columns in the table.
  final List<PartitionStorageDescriptorColumn>? columns;

  /// True if the data in the table is compressed, or False if not.
  final bool? compressed;

  /// The input format: SequenceFileInputFormat (binary), or TextInputFormat, or a custom format.
  final String? inputFormat;

  /// The physical location of the table. By default this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name.
  final String? location;

  /// Must be specified if the table contains any dimension columns.
  final int? numberOfBuckets;

  /// The output format: SequenceFileOutputFormat (binary), or IgnoreKeyTextOutputFormat, or a custom format.
  final String? outputFormat;

  /// User-supplied properties in key-value form.
  final Map<String, String>? parameters;

  /// Serialization/deserialization (SerDe) information.
  final PartitionStorageDescriptorSerDeInfo? serDeInfo;

  /// Information about values that appear very frequently in a column (skewed values).
  final PartitionStorageDescriptorSkewedInfo? skewedInfo;

  /// A list of Order objects specifying the sort order of each bucket in the table.
  final List<PartitionStorageDescriptorSortColumn>? sortColumns;

  /// True if the table data is stored in subdirectories, or False if not.
  final bool? storedAsSubDirectories;

  /// Creates a new [PartitionStorageDescriptor].
  /// [additionalLocations] List of locations that point to the path where a Delta table is located.
  /// [bucketColumns] A list of reducer grouping columns, clustering columns, and bucketing columns in the table.
  /// [columns] A list of the Columns in the table.
  /// [compressed] True if the data in the table is compressed, or False if not.
  /// [inputFormat] The input format: SequenceFileInputFormat (binary), or TextInputFormat, or a custom format.
  /// [location] The physical location of the table. By default this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name.
  /// [numberOfBuckets] Must be specified if the table contains any dimension columns.
  /// [outputFormat] The output format: SequenceFileOutputFormat (binary), or IgnoreKeyTextOutputFormat, or a custom format.
  /// [parameters] User-supplied properties in key-value form.
  /// [serDeInfo] Serialization/deserialization (SerDe) information.
  /// [skewedInfo] Information about values that appear very frequently in a column (skewed values).
  /// [sortColumns] A list of Order objects specifying the sort order of each bucket in the table.
  /// [storedAsSubDirectories] True if the table data is stored in subdirectories, or False if not.
  PartitionStorageDescriptor({
    this.additionalLocations,
    this.bucketColumns,
    this.columns,
    this.compressed,
    this.inputFormat,
    this.location,
    this.numberOfBuckets,
    this.outputFormat,
    this.parameters,
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
              PartitionStorageDescriptorColumn,
              Map<String, dynamic>
            >(columns!, (value) => value.toMap()),
      'compressed': ?compressed,
      'inputFormat': ?inputFormat,
      'location': ?location,
      'numberOfBuckets': ?numberOfBuckets,
      'outputFormat': ?outputFormat,
      'parameters': ?parameters,
      'serDeInfo': ?serDeInfo == null ? null : serDeInfo!.toMap(),
      'skewedInfo': ?skewedInfo == null ? null : skewedInfo!.toMap(),
      'sortColumns': ?sortColumns == null
          ? null
          : pulumi.Input.encodeList<
              PartitionStorageDescriptorSortColumn,
              Map<String, dynamic>
            >(sortColumns!, (value) => value.toMap()),
      'storedAsSubDirectories': ?storedAsSubDirectories,
    };
  }

  factory PartitionStorageDescriptor.fromMap(Map<String, dynamic> map) {
    return PartitionStorageDescriptor(
      additionalLocations: map['additionalLocations'] == null
          ? null
          : (map['additionalLocations'] as List).cast<String>(),
      bucketColumns: map['bucketColumns'] == null
          ? null
          : (map['bucketColumns'] as List).cast<String>(),
      columns: map['columns'] == null
          ? null
          : pulumi.Input.decodeList<PartitionStorageDescriptorColumn>(
              map['columns'],
              (value) => PartitionStorageDescriptorColumn.fromMap(
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
      serDeInfo: map['serDeInfo'] == null
          ? null
          : PartitionStorageDescriptorSerDeInfo.fromMap(
              (map['serDeInfo'] as Map).cast<String, dynamic>(),
            ),
      skewedInfo: map['skewedInfo'] == null
          ? null
          : PartitionStorageDescriptorSkewedInfo.fromMap(
              (map['skewedInfo'] as Map).cast<String, dynamic>(),
            ),
      sortColumns: map['sortColumns'] == null
          ? null
          : pulumi.Input.decodeList<PartitionStorageDescriptorSortColumn>(
              map['sortColumns'],
              (value) => PartitionStorageDescriptorSortColumn.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      storedAsSubDirectories: map['storedAsSubDirectories'] == null
          ? null
          : map['storedAsSubDirectories'] as bool,
    );
  }
}
