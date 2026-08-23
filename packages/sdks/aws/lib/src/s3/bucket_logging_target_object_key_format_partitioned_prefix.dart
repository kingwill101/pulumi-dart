// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLoggingTargetObjectKeyFormatPartitionedPrefix {
  /// Partition date source for the partitioned prefix. Valid values: `EventTime`, `DeliveryTime`.
  final pulumi.Input<String> partitionDateSource;

  /// Creates a new [BucketLoggingTargetObjectKeyFormatPartitionedPrefix].
  /// [partitionDateSource] Partition date source for the partitioned prefix. Valid values: `EventTime`, `DeliveryTime`.
  const BucketLoggingTargetObjectKeyFormatPartitionedPrefix({
    required this.partitionDateSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionDateSource': partitionDateSource,
    };
  }

  factory BucketLoggingTargetObjectKeyFormatPartitionedPrefix.fromMap(Map<String, dynamic> map) {
    return BucketLoggingTargetObjectKeyFormatPartitionedPrefix(
      partitionDateSource: pulumi.Input.fromValue(map['partitionDateSource'] as String),
    );
  }
}
