// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_iceberg_destination_destination_table_partition_spec.dart';

class ChannelIcebergDestinationDestinationTable {
  /// Name of the destination namespace (database) in the AWS Glue Data Catalog.
  final pulumi.Input<String?>? destinationDatabaseName;
  /// Name of the destination Apache Iceberg table.
  final pulumi.Input<String?>? destinationTableName;
  /// Partition specification for the destination table. See `partitionSpec` Block below.
  final pulumi.Input<ChannelIcebergDestinationDestinationTablePartitionSpec?>? partitionSpec;

  /// Creates a new [ChannelIcebergDestinationDestinationTable].
  /// [destinationDatabaseName] Name of the destination namespace (database) in the AWS Glue Data Catalog.
  /// [destinationTableName] Name of the destination Apache Iceberg table.
  /// [partitionSpec] Partition specification for the destination table. See `partitionSpec` Block below.
  const ChannelIcebergDestinationDestinationTable({
    this.destinationDatabaseName,
    this.destinationTableName,
    this.partitionSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationDatabaseName': ?destinationDatabaseName,
      'destinationTableName': ?destinationTableName,
      'partitionSpec': ?pulumi.Input.mapOptionalInputValue<ChannelIcebergDestinationDestinationTablePartitionSpec, Map<String, dynamic>>(partitionSpec, (value) => value.toMap()),
    };
  }

  factory ChannelIcebergDestinationDestinationTable.fromMap(Map<String, dynamic> map) {
    return ChannelIcebergDestinationDestinationTable(
      destinationDatabaseName: (() { final guardedValue = map['destinationDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationTableName: (() { final guardedValue = map['destinationTableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionSpec: (() { final guardedValue = map['partitionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelIcebergDestinationDestinationTablePartitionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
