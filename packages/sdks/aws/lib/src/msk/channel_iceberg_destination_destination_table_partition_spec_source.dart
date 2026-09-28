// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelIcebergDestinationDestinationTablePartitionSpecSource {
  /// Name of the source column. For `TIME_HOUR` partitioning this must be a timestamp column defined in the Glue Schema Registry schema.
  final pulumi.Input<String?>? sourceName;

  /// Creates a new [ChannelIcebergDestinationDestinationTablePartitionSpecSource].
  /// [sourceName] Name of the source column. For `TIME_HOUR` partitioning this must be a timestamp column defined in the Glue Schema Registry schema.
  const ChannelIcebergDestinationDestinationTablePartitionSpecSource({
    this.sourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceName': ?sourceName,
    };
  }

  factory ChannelIcebergDestinationDestinationTablePartitionSpecSource.fromMap(Map<String, dynamic> map) {
    return ChannelIcebergDestinationDestinationTablePartitionSpecSource(
      sourceName: (() { final guardedValue = map['sourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
