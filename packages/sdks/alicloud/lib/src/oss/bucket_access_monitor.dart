// ignore_for_file: unused_element, unnecessary_cast


class BucketAccessMonitor {
  /// The access monitor state of a bucket. If you want to manage objects based on the last access time of the objects, specifies the status to `Enabled`. Valid values: `Enabled` and `Disabled`.
  final String? status;

  /// Creates a new [BucketAccessMonitor].
  /// [status] The access monitor state of a bucket. If you want to manage objects based on the last access time of the objects, specifies the status to `Enabled`. Valid values: `Enabled` and `Disabled`.
  BucketAccessMonitor({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory BucketAccessMonitor.fromMap(Map<String, dynamic> map) {
    return BucketAccessMonitor(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

