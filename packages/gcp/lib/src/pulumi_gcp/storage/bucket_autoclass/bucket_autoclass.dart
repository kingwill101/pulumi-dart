// ignore_for_file: unused_element, unnecessary_cast

class BucketAutoclass {
  /// While set to `true`, autoclass automatically transitions objects in your bucket to appropriate storage classes based on each object's access pattern.
  final bool enabled;

  /// The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Supported values include: `NEARLINE`, `ARCHIVE`.
  final String? terminalStorageClass;

  BucketAutoclass({
    required this.enabled,
    this.terminalStorageClass,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final terminalStorageClassValue = terminalStorageClass;
    if (terminalStorageClassValue != null) {
      map['terminalStorageClass'] = terminalStorageClassValue;
    }
    return map;
  }

  factory BucketAutoclass.fromMap(Map<String, dynamic> map) {
    return BucketAutoclass(
      enabled: map['enabled'] as bool,
      terminalStorageClass: map['terminalStorageClass'] == null
          ? null
          : map['terminalStorageClass'] as String,
    );
  }
}
