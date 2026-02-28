// ignore_for_file: unused_element, unnecessary_cast


class GetBucketVersioning {
  /// While set to true, versioning is fully enabled for this bucket.
  final bool enabled;

  /// Creates a new [GetBucketVersioning].
  /// [enabled] While set to true, versioning is fully enabled for this bucket.
  GetBucketVersioning({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetBucketVersioning.fromMap(Map<String, dynamic> map) {
    return GetBucketVersioning(
      enabled: map['enabled'] as bool,
    );
  }
}

