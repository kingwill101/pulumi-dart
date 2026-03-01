// ignore_for_file: unused_element, unnecessary_cast


class BucketAutoclass {
  /// While set to `true`, autoclass automatically transitions objects in your bucket to appropriate storage classes based on each object's access pattern.
  final bool enabled;
  /// The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Supported values include: `NEARLINE`, `ARCHIVE`.
  final String? terminalStorageClass;

  /// Creates a new [BucketAutoclass].
  /// [enabled] While set to `true`, autoclass automatically transitions objects in your bucket to appropriate storage classes based on each object's access pattern.
  /// [terminalStorageClass] The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Supported values include: `NEARLINE`, `ARCHIVE`.
  BucketAutoclass({
    required this.enabled,
    this.terminalStorageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'terminalStorageClass': ?terminalStorageClass,
    };
  }

  factory BucketAutoclass.fromMap(Map<String, dynamic> map) {
    return BucketAutoclass(
      enabled: map['enabled'] as bool,
      terminalStorageClass: map['terminalStorageClass'] == null ? null : map['terminalStorageClass'] as String,
    );
  }
}

