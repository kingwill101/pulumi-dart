// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLoggingV2TargetObjectKeyFormatPartitionedPrefix {
  /// Specifies the partition date source for the partitioned prefix. Valid values: `EventTime`, `DeliveryTime`.
  final pulumi.Input<String> partitionDateSource;

  /// Creates a new [BucketLoggingV2TargetObjectKeyFormatPartitionedPrefix].
  /// [partitionDateSource] Specifies the partition date source for the partitioned prefix. Valid values: `EventTime`, `DeliveryTime`.
  const BucketLoggingV2TargetObjectKeyFormatPartitionedPrefix({
    required this.partitionDateSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionDateSource': partitionDateSource,
    };
  }

  factory BucketLoggingV2TargetObjectKeyFormatPartitionedPrefix.fromMap(Map<String, dynamic> map) {
    return BucketLoggingV2TargetObjectKeyFormatPartitionedPrefix(
      partitionDateSource: pulumi.Input.fromValue(map['partitionDateSource'] as String),
    );
  }
}

