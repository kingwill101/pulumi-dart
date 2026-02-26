// ignore_for_file: unused_element, unnecessary_cast

/// GcfsConfig contains configurations of Google Container File System.
class GcfsConfig2 {
  /// Whether to use GCFS.
  final bool? enabled;

  GcfsConfig2({
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

  factory GcfsConfig2.fromMap(Map<String, dynamic> map) {
    return GcfsConfig2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
