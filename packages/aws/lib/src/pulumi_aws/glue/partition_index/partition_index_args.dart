// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../partition_index_partition_index/partition_index_partition_index.dart';

/// The set of arguments for PartitionIndex.
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

  PartitionIndexArgs({
    this.catalogId,
    required this.databaseName,
    required this.partitionIndex,
    this.region,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['databaseName'] = databaseName;
    map['partitionIndex'] = pulumi.Input.mapInputValue<
        PartitionIndexPartitionIndex,
        Map<String, dynamic>>(partitionIndex, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['tableName'] = tableName;
    return map;
  }

  factory PartitionIndexArgs.fromMap(Map<String, dynamic> map) {
    return PartitionIndexArgs(
      catalogId: pulumi.Input.asOptionalInput<String>(map['catalogId']),
      databaseName: pulumi.Input.asInput<String>(map['databaseName']),
      partitionIndex: pulumi.Input.asInput<PartitionIndexPartitionIndex>(
          map['partitionIndex']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tableName: pulumi.Input.asInput<String>(map['tableName']),
    );
  }
}
