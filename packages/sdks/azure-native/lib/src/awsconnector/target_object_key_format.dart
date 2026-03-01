// ignore_for_file: unused_element, unnecessary_cast

import 'partitioned_prefix.dart';

/// Definition of TargetObjectKeyFormat
class TargetObjectKeyFormat {
  /// Amazon S3 keys for log objects are partitioned in the following format:  ``[DestinationPrefix][SourceAccountId]/[SourceRegion]/[SourceBucket]/[YYYY]/[MM]/[DD]/[YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]``  PartitionedPrefix defaults to EventTime delivery when server access logs are delivered.
  final PartitionedPrefix? partitionedPrefix;
  /// This format defaults the prefix to the given log file prefix for delivering server access log file.
  final dynamic simplePrefix;

  /// Creates a new [TargetObjectKeyFormat].
  /// [partitionedPrefix] Amazon S3 keys for log objects are partitioned in the following format:  ``[DestinationPrefix][SourceAccountId]/[SourceRegion]/[SourceBucket]/[YYYY]/[MM]/[DD]/[YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]``  PartitionedPrefix defaults to EventTime delivery when server access logs are delivered.
  /// [simplePrefix] This format defaults the prefix to the given log file prefix for delivering server access log file.
  TargetObjectKeyFormat({
    this.partitionedPrefix,
    this.simplePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionedPrefix': ?partitionedPrefix == null ? null : partitionedPrefix!.toMap(),
      'simplePrefix': ?simplePrefix,
    };
  }

  factory TargetObjectKeyFormat.fromMap(Map<String, dynamic> map) {
    return TargetObjectKeyFormat(
      partitionedPrefix: map['partitionedPrefix'] == null ? null : PartitionedPrefix.fromMap((map['partitionedPrefix'] as Map).cast<String, dynamic>()),
      simplePrefix: map['simplePrefix'] == null ? null : map['simplePrefix'],
    );
  }
}

