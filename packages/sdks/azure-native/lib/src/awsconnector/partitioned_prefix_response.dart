// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PartitionedPrefix
class PartitionedPrefixResponse {
  /// Specifies the partition date source for the partitioned prefix. PartitionDateSource can be EventTime or DeliveryTime.
  final pulumi.Input<String>? partitionDateSource;

  /// Creates a new [PartitionedPrefixResponse].
  /// [partitionDateSource] Specifies the partition date source for the partitioned prefix. PartitionDateSource can be EventTime or DeliveryTime.
  PartitionedPrefixResponse({
    this.partitionDateSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionDateSource': ?partitionDateSource,
    };
  }

  factory PartitionedPrefixResponse.fromMap(Map<String, dynamic> map) {
    return PartitionedPrefixResponse(
      partitionDateSource: (() { final guardedValue = map['partitionDateSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

