// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationDestination {
  /// The destination bucket to which the data is replicated.
  final pulumi.Input<String> bucket;
  /// The region in which the destination bucket is located.
  final pulumi.Input<String> location;
  /// The link used to transfer data in data replication.. Can be `internal` or `oss_acc`. Defaults to `internal`.
  ///
  /// `NOTE`: You can set transfer_type to oss_acc only when you create cross-region replication (CRR) rules.
  final pulumi.Input<String>? transferType;

  /// Creates a new [BucketReplicationDestination].
  /// [bucket] The destination bucket to which the data is replicated.
  /// [location] The region in which the destination bucket is located.
  /// [transferType] The link used to transfer data in data replication.. Can be `internal` or `oss_acc`. Defaults to `internal`.
  BucketReplicationDestination({
    required this.bucket,
    required this.location,
    this.transferType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'location': location,
      'transferType': ?transferType,
    };
  }

  factory BucketReplicationDestination.fromMap(Map<String, dynamic> map) {
    return BucketReplicationDestination(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      transferType: (() { final guardedValue = map['transferType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

