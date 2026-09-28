// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_iceberg_destination_destination_table_partition_spec_source.dart';

class ChannelIcebergDestinationDestinationTablePartitionSpec {
  /// Partitioning strategy applied to records written to the table. `TIME_HOUR` partitions by hour using a timestamp source column.
  final pulumi.Input<String> partitionStrategy;
  /// Source column used by the partitioning strategy. For `TIME_HOUR`, exactly one source must be specified and its column must be a timestamp. See `source` Block below.
  final pulumi.Input<List<ChannelIcebergDestinationDestinationTablePartitionSpecSource>?>? sources;

  /// Creates a new [ChannelIcebergDestinationDestinationTablePartitionSpec].
  /// [partitionStrategy] Partitioning strategy applied to records written to the table. `TIME_HOUR` partitions by hour using a timestamp source column.
  /// [sources] Source column used by the partitioning strategy. For `TIME_HOUR`, exactly one source must be specified and its column must be a timestamp. See `source` Block below.
  const ChannelIcebergDestinationDestinationTablePartitionSpec({
    required this.partitionStrategy,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionStrategy': partitionStrategy,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<ChannelIcebergDestinationDestinationTablePartitionSpecSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<ChannelIcebergDestinationDestinationTablePartitionSpecSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ChannelIcebergDestinationDestinationTablePartitionSpec.fromMap(Map<String, dynamic> map) {
    return ChannelIcebergDestinationDestinationTablePartitionSpec(
      partitionStrategy: pulumi.Input.fromValue(map['partitionStrategy'] as String),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelIcebergDestinationDestinationTablePartitionSpecSource>(guardedValue, (value) => ChannelIcebergDestinationDestinationTablePartitionSpecSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
