// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_index_partition_index.dart';

/// {@template pulumi_glue_partition_index_partition_index_args_doc}
/// The set of arguments for PartitionIndex.
/// {@endtemplate}
/// {@macro pulumi_glue_partition_index_partition_index_args_doc}
class PartitionIndexArgs {
  /// The catalog ID where the table resides.
  final pulumi.Input<String>? catalogId;

  /// Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  final pulumi.Input<String> databaseName;

  /// Configuration block for a partition index. See `partition_index` below.
  final pulumi.Input<PartitionIndexPartitionIndex> partitionIndex;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the table. For Hive compatibility, this must be entirely lowercase.
  final pulumi.Input<String> tableName;

  /// Creates a new [PartitionIndexArgs].
  /// [catalogId] The catalog ID where the table resides.
  /// [databaseName] Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  /// [partitionIndex] Configuration block for a partition index. See `partition_index` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableName] Name of the table. For Hive compatibility, this must be entirely lowercase.
  PartitionIndexArgs({
    this.catalogId,
    required this.databaseName,
    required this.partitionIndex,
    this.region,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'databaseName': databaseName,
      'partitionIndex':
          pulumi.Input.mapInputValue<
            PartitionIndexPartitionIndex,
            Map<String, dynamic>
          >(partitionIndex, (value) => value.toMap()),
      'region': ?region,
      'tableName': tableName,
    };
  }

  factory PartitionIndexArgs.fromMap(Map<String, dynamic> map) {
    return PartitionIndexArgs(
      catalogId: (() {
        final guardedValue = map['catalogId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      partitionIndex: pulumi.Input.fromValue(
        PartitionIndexPartitionIndex.fromMap(
          (map['partitionIndex']! as Map).cast<String, dynamic>(),
        ),
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
