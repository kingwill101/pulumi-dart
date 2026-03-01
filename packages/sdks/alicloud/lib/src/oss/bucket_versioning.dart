// ignore_for_file: unused_element, unnecessary_cast


class BucketVersioning {
  /// Specifies the versioning state of a bucket. Valid values: `Enabled` and `Suspended`.
  final String status;

  /// Creates a new [BucketVersioning].
  /// [status] Specifies the versioning state of a bucket. Valid values: `Enabled` and `Suspended`.
  BucketVersioning({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory BucketVersioning.fromMap(Map<String, dynamic> map) {
    return BucketVersioning(
      status: map['status'] as String,
    );
  }
}

