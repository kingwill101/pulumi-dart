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
    pulumi.Output<String>? catalogId,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<PartitionIndexPartitionIndex> partitionIndex,
    pulumi.Output<String>? region,
    required pulumi.Output<String> tableName,
  }) :
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      partitionIndex = pulumi.Input.asInput<PartitionIndexPartitionIndex>(partitionIndex),
      region = pulumi.Input.asOptionalInput<String>(region),
      tableName = pulumi.Input.asInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'databaseName': databaseName,
      'partitionIndex': pulumi.Input.mapInputValue<PartitionIndexPartitionIndex, Map<String, dynamic>>(partitionIndex, (value) => value.toMap()),
      'region': ?region,
      'tableName': tableName,
    };
  }

  factory PartitionIndexArgs.fromMap(Map<String, dynamic> map) {
    return PartitionIndexArgs(
      catalogId: map['catalogId'] == null ? null : pulumi.Output.create<String>(map['catalogId'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      partitionIndex: pulumi.Output.create<PartitionIndexPartitionIndex>(PartitionIndexPartitionIndex.fromMap((map['partitionIndex'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tableName: pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

