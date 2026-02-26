// ignore_for_file: unused_element, unnecessary_cast

/// The bucket's versioning configuration.
class BucketVersioning {
  /// While set to true, versioning is fully enabled for this bucket.
  final bool? enabled;

  BucketVersioning({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory BucketVersioning.fromMap(Map<String, dynamic> map) {
    return BucketVersioning(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
