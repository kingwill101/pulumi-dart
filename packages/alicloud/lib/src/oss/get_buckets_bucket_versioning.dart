// ignore_for_file: unused_element, unnecessary_cast


class GetBucketsBucketVersioning {
  /// A bucket versioning state. Possible values:`Enabled` and `Suspended`.
  final String status;

  /// Creates a new [GetBucketsBucketVersioning].
  /// [status] A bucket versioning state. Possible values:`Enabled` and `Suspended`.
  GetBucketsBucketVersioning({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory GetBucketsBucketVersioning.fromMap(Map<String, dynamic> map) {
    return GetBucketsBucketVersioning(
      status: map['status'] as String,
    );
  }
}

