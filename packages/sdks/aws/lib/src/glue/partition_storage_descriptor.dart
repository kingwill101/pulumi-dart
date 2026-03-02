// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_storage_descriptor_column.dart';
import 'partition_storage_descriptor_ser_de_info.dart';
import 'partition_storage_descriptor_skewed_info.dart';
import 'partition_storage_descriptor_sort_column.dart';

class PartitionStorageDescriptor {
  /// List of locations that point to the path where a Delta table is located.
  final pulumi.Input<List<String>>? additionalLocations;
  /// A list of reducer grouping columns, clustering columns, and bucketing columns in the table.
  final pulumi.Input<List<String>>? bucketColumns;
  /// A list of the Columns in the table.
  final pulumi.Input<List<PartitionStorageDescriptorColumn>>? columns;
  /// True if the data in the table is compressed, or False if not.
  final pulumi.Input<bool>? compressed;
  /// The input format: SequenceFileInputFormat (binary), or TextInputFormat, or a custom format.
  final pulumi.Input<String>? inputFormat;
  /// The physical location of the table. By default this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name.
  final pulumi.Input<String>? location;
  /// Must be specified if the table contains any dimension columns.
  final pulumi.Input<int>? numberOfBuckets;
  /// The output format: SequenceFileOutputFormat (binary), or IgnoreKeyTextOutputFormat, or a custom format.
  final pulumi.Input<String>? outputFormat;
  /// User-supplied properties in key-value form.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Serialization/deserialization (SerDe) information.
  final pulumi.Input<PartitionStorageDescriptorSerDeInfo>? serDeInfo;
  /// Information about values that appear very frequently in a column (skewed values).
  final pulumi.Input<PartitionStorageDescriptorSkewedInfo>? skewedInfo;
  /// A list of Order objects specifying the sort order of each bucket in the table.
  final pulumi.Input<List<PartitionStorageDescriptorSortColumn>>? sortColumns;
  /// True if the table data is stored in subdirectories, or False if not.
  final pulumi.Input<bool>? storedAsSubDirectories;

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
      'columns': ?pulumi.Input.mapOptionalInputValue<List<PartitionStorageDescriptorColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<PartitionStorageDescriptorColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'compressed': ?compressed,
      'inputFormat': ?inputFormat,
      'location': ?location,
      'numberOfBuckets': ?numberOfBuckets,
      'outputFormat': ?outputFormat,
      'parameters': ?parameters,
      'serDeInfo': ?pulumi.Input.mapOptionalInputValue<PartitionStorageDescriptorSerDeInfo, Map<String, dynamic>>(serDeInfo, (value) => value.toMap()),
      'skewedInfo': ?pulumi.Input.mapOptionalInputValue<PartitionStorageDescriptorSkewedInfo, Map<String, dynamic>>(skewedInfo, (value) => value.toMap()),
      'sortColumns': ?pulumi.Input.mapOptionalInputValue<List<PartitionStorageDescriptorSortColumn>, List<Map<String, dynamic>>>(sortColumns, (value) => pulumi.Input.encodeList<PartitionStorageDescriptorSortColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storedAsSubDirectories': ?storedAsSubDirectories,
    };
  }

  factory PartitionStorageDescriptor.fromMap(Map<String, dynamic> map) {
    return PartitionStorageDescriptor(
      additionalLocations: map['additionalLocations'] == null ? null : ((map['additionalLocations'] as List).cast<String>()).input(),
      bucketColumns: map['bucketColumns'] == null ? null : ((map['bucketColumns'] as List).cast<String>()).input(),
      columns: map['columns'] == null ? null : (pulumi.Input.decodeList<PartitionStorageDescriptorColumn>(map['columns'], (value) => PartitionStorageDescriptorColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      compressed: map['compressed'] == null ? null : (map['compressed'] as bool).input(),
      inputFormat: map['inputFormat'] == null ? null : (map['inputFormat'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      numberOfBuckets: map['numberOfBuckets'] == null ? null : (map['numberOfBuckets'] as int).input(),
      outputFormat: map['outputFormat'] == null ? null : (map['outputFormat'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      serDeInfo: map['serDeInfo'] == null ? null : (PartitionStorageDescriptorSerDeInfo.fromMap((map['serDeInfo'] as Map).cast<String, dynamic>())).input(),
      skewedInfo: map['skewedInfo'] == null ? null : (PartitionStorageDescriptorSkewedInfo.fromMap((map['skewedInfo'] as Map).cast<String, dynamic>())).input(),
      sortColumns: map['sortColumns'] == null ? null : (pulumi.Input.decodeList<PartitionStorageDescriptorSortColumn>(map['sortColumns'], (value) => PartitionStorageDescriptorSortColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storedAsSubDirectories: map['storedAsSubDirectories'] == null ? null : (map['storedAsSubDirectories'] as bool).input(),
    );
  }
}

