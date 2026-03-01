// ignore_for_file: unused_element, unnecessary_cast

import 'partitioned_prefix_response.dart';

/// Definition of TargetObjectKeyFormat
class TargetObjectKeyFormatResponse {
  /// Amazon S3 keys for log objects are partitioned in the following format:  ``[DestinationPrefix][SourceAccountId]/[SourceRegion]/[SourceBucket]/[YYYY]/[MM]/[DD]/[YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]``  PartitionedPrefix defaults to EventTime delivery when server access logs are delivered.
  final PartitionedPrefixResponse? partitionedPrefix;
  /// This format defaults the prefix to the given log file prefix for delivering server access log file.
  final dynamic simplePrefix;

  /// Creates a new [TargetObjectKeyFormatResponse].
  /// [partitionedPrefix] Amazon S3 keys for log objects are partitioned in the following format:  ``[DestinationPrefix][SourceAccountId]/[SourceRegion]/[SourceBucket]/[YYYY]/[MM]/[DD]/[YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]``  PartitionedPrefix defaults to EventTime delivery when server access logs are delivered.
  /// [simplePrefix] This format defaults the prefix to the given log file prefix for delivering server access log file.
  TargetObjectKeyFormatResponse({
    this.partitionedPrefix,
    this.simplePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionedPrefix': ?partitionedPrefix == null ? null : partitionedPrefix!.toMap(),
      'simplePrefix': ?simplePrefix,
    };
  }

  factory TargetObjectKeyFormatResponse.fromMap(Map<String, dynamic> map) {
    return TargetObjectKeyFormatResponse(
      partitionedPrefix: map['partitionedPrefix'] == null ? null : PartitionedPrefixResponse.fromMap((map['partitionedPrefix'] as Map).cast<String, dynamic>()),
      simplePrefix: map['simplePrefix'] == null ? null : map['simplePrefix'],
    );
  }
}

