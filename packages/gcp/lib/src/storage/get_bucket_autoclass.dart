// ignore_for_file: unused_element, unnecessary_cast

class GetBucketAutoclass {
  /// While set to true, autoclass automatically transitions objects in your bucket to appropriate storage classes based on each object's access pattern.
  final bool enabled;

  /// The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Supported values include: NEARLINE, ARCHIVE.
  final String terminalStorageClass;

  /// Creates a new [GetBucketAutoclass].
  /// [enabled] While set to true, autoclass automatically transitions objects in your bucket to appropriate storage classes based on each object's access pattern.
  /// [terminalStorageClass] The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Supported values include: NEARLINE, ARCHIVE.
  GetBucketAutoclass({
    required this.enabled,
    required this.terminalStorageClass,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['terminalStorageClass'] = terminalStorageClass;
    return map;
  }

  factory GetBucketAutoclass.fromMap(Map<String, dynamic> map) {
    return GetBucketAutoclass(
      enabled: map['enabled'] as bool,
      terminalStorageClass: map['terminalStorageClass'] as String,
    );
  }
}
