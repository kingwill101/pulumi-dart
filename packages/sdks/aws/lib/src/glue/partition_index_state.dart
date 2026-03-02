// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_index_partition_index.dart';

/// Input properties used for looking up and filtering PartitionIndex resources.
class PartitionIndexState {
  /// The catalog ID where the table resides.
  final pulumi.Input<String>? catalogId;
  /// Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  final pulumi.Input<String>? databaseName;
  /// Configuration block for a partition index. See `partition_index` below.
  final pulumi.Input<PartitionIndexPartitionIndex>? partitionIndex;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the table. For Hive compatibility, this must be entirely lowercase.
  final pulumi.Input<String>? tableName;

  /// Creates a new [PartitionIndexState].
  /// [catalogId] The catalog ID where the table resides.
  /// [databaseName] Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  /// [partitionIndex] Configuration block for a partition index. See `partition_index` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableName] Name of the table. For Hive compatibility, this must be entirely lowercase.
  PartitionIndexState({
    this.catalogId,
    this.databaseName,
    this.partitionIndex,
    this.region,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'databaseName': ?databaseName,
      'partitionIndex': ?pulumi.Input.mapOptionalInputValue<PartitionIndexPartitionIndex, Map<String, dynamic>>(partitionIndex, (value) => value.toMap()),
      'region': ?region,
      'tableName': ?tableName,
    };
  }

  factory PartitionIndexState.fromMap(Map<String, dynamic> map) {
    return PartitionIndexState(
      catalogId: map['catalogId'] == null ? null : (map['catalogId'] as String).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName'] as String).input(),
      partitionIndex: map['partitionIndex'] == null ? null : (PartitionIndexPartitionIndex.fromMap((map['partitionIndex'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tableName: map['tableName'] == null ? null : (map['tableName'] as String).input(),
    );
  }
}

