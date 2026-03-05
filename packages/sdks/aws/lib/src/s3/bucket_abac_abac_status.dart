// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketAbacAbacStatus {
  /// ABAC status of the general purpose bucket.
  /// Valid values are `Enabled` and `Disabled`.
  /// By default, ABAC is disabled for all Amazon S3 general purpose buckets.
  final pulumi.Input<String> status;

  /// Creates a new [BucketAbacAbacStatus].
  /// [status] ABAC status of the general purpose bucket.
  BucketAbacAbacStatus({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory BucketAbacAbacStatus.fromMap(Map<String, dynamic> map) {
    return BucketAbacAbacStatus(
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

