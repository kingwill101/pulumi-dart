// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationProgress {
  /// The percentage of the replicated historical data. This element is valid only when historical_object_replication is set to enabled.
  final pulumi.Input<String>? historicalObject;
  /// The time used to distinguish new data from historical data. Data that is written to the source bucket before the time is replicated to the destination bucket as new data. The value of this element is in GMT.
  final pulumi.Input<String>? newObject;

  /// Creates a new [BucketReplicationProgress].
  /// [historicalObject] The percentage of the replicated historical data. This element is valid only when historical_object_replication is set to enabled.
  /// [newObject] The time used to distinguish new data from historical data. Data that is written to the source bucket before the time is replicated to the destination bucket as new data. The value of this element is in GMT.
  BucketReplicationProgress({
    this.historicalObject,
    this.newObject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'historicalObject': ?historicalObject,
      'newObject': ?newObject,
    };
  }

  factory BucketReplicationProgress.fromMap(Map<String, dynamic> map) {
    return BucketReplicationProgress(
      historicalObject: map['historicalObject'] == null ? null : (map['historicalObject']! as String).input(),
      newObject: map['newObject'] == null ? null : (map['newObject']! as String).input(),
    );
  }
}

