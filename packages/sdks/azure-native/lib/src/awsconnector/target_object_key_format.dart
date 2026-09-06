// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partitioned_prefix.dart';

/// Definition of TargetObjectKeyFormat
class TargetObjectKeyFormat {
  /// Amazon S3 keys for log objects are partitioned in the following format:  ``[DestinationPrefix][SourceAccountId]/[SourceRegion]/[SourceBucket]/[YYYY]/[MM]/[DD]/[YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]``  PartitionedPrefix defaults to EventTime delivery when server access logs are delivered.
  final pulumi.Input<PartitionedPrefix?>? partitionedPrefix;
  /// This format defaults the prefix to the given log file prefix for delivering server access log file.
  final pulumi.Input<dynamic>? simplePrefix;

  /// Creates a new [TargetObjectKeyFormat].
  /// [partitionedPrefix] Amazon S3 keys for log objects are partitioned in the following format:  ``[DestinationPrefix][SourceAccountId]/[SourceRegion]/[SourceBucket]/[YYYY]/[MM]/[DD]/[YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]``  PartitionedPrefix defaults to EventTime delivery when server access logs are delivered.
  /// [simplePrefix] This format defaults the prefix to the given log file prefix for delivering server access log file.
  const TargetObjectKeyFormat({
    this.partitionedPrefix,
    this.simplePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionedPrefix': ?pulumi.Input.mapOptionalInputValue<PartitionedPrefix, Map<String, dynamic>>(partitionedPrefix, (value) => value.toMap()),
      'simplePrefix': ?simplePrefix,
    };
  }

  factory TargetObjectKeyFormat.fromMap(Map<String, dynamic> map) {
    return TargetObjectKeyFormat(
      partitionedPrefix: (() { final guardedValue = map['partitionedPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PartitionedPrefix.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      simplePrefix: (() { final guardedValue = map['simplePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
