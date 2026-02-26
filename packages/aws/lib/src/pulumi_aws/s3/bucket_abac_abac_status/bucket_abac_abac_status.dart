// ignore_for_file: unused_element, unnecessary_cast

class BucketAbacAbacStatus {
  /// ABAC status of the general purpose bucket.
  /// Valid values are `Enabled` and `Disabled`.
  /// By default, ABAC is disabled for all Amazon S3 general purpose buckets.
  final String status;

  BucketAbacAbacStatus({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    return map;
  }

  factory BucketAbacAbacStatus.fromMap(Map<String, dynamic> map) {
    return BucketAbacAbacStatus(
      status: map['status'] as String,
    );
  }
}
