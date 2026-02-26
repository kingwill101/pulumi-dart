// ignore_for_file: unused_element, unnecessary_cast

class BucketHierarchicalNamespace {
  /// Enables hierarchical namespace for the bucket.
  final bool enabled;

  BucketHierarchicalNamespace({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory BucketHierarchicalNamespace.fromMap(Map<String, dynamic> map) {
    return BucketHierarchicalNamespace(
      enabled: map['enabled'] as bool,
    );
  }
}
