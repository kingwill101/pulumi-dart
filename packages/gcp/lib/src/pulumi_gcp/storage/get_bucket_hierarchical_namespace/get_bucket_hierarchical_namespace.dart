// ignore_for_file: unused_element, unnecessary_cast

class GetBucketHierarchicalNamespace {
  /// Set this field true to organize bucket with logical file system structure.
  final bool enabled;

  GetBucketHierarchicalNamespace({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetBucketHierarchicalNamespace.fromMap(Map<String, dynamic> map) {
    return GetBucketHierarchicalNamespace(
      enabled: map['enabled'] as bool,
    );
  }
}
