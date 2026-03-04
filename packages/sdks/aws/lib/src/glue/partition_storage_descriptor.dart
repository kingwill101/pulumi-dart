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
      'columns':
          ?pulumi.Input.mapOptionalInputValue<
            List<PartitionStorageDescriptorColumn>,
            List<Map<String, dynamic>>
          >(
            columns,
            (value) =>
                pulumi.Input.encodeList<
                  PartitionStorageDescriptorColumn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'compressed': ?compressed,
      'inputFormat': ?inputFormat,
      'location': ?location,
      'numberOfBuckets': ?numberOfBuckets,
      'outputFormat': ?outputFormat,
      'parameters': ?parameters,
      'serDeInfo':
          ?pulumi.Input.mapOptionalInputValue<
            PartitionStorageDescriptorSerDeInfo,
            Map<String, dynamic>
          >(serDeInfo, (value) => value.toMap()),
      'skewedInfo':
          ?pulumi.Input.mapOptionalInputValue<
            PartitionStorageDescriptorSkewedInfo,
            Map<String, dynamic>
          >(skewedInfo, (value) => value.toMap()),
      'sortColumns':
          ?pulumi.Input.mapOptionalInputValue<
            List<PartitionStorageDescriptorSortColumn>,
            List<Map<String, dynamic>>
          >(
            sortColumns,
            (value) =>
                pulumi.Input.encodeList<
                  PartitionStorageDescriptorSortColumn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'storedAsSubDirectories': ?storedAsSubDirectories,
    };
  }

  factory PartitionStorageDescriptor.fromMap(Map<String, dynamic> map) {
    return PartitionStorageDescriptor(
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
          pulumi.Input.decodeList<PartitionStorageDescriptorColumn>(
            guardedValue,
            (value) => PartitionStorageDescriptorColumn.fromMap(
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
      serDeInfo: (() {
        final guardedValue = map['serDeInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PartitionStorageDescriptorSerDeInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      skewedInfo: (() {
        final guardedValue = map['skewedInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PartitionStorageDescriptorSkewedInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sortColumns: (() {
        final guardedValue = map['sortColumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PartitionStorageDescriptorSortColumn>(
            guardedValue,
            (value) => PartitionStorageDescriptorSortColumn.fromMap(
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
