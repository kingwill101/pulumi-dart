// ignore_for_file: unused_element, unnecessary_cast

/// GcfsConfig contains configurations of Google Container File System (image streaming).
class GcfsConfig {
  /// Whether to use GCFS.
  final bool? enabled;

  GcfsConfig({
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

  factory GcfsConfig.fromMap(Map<String, dynamic> map) {
    return GcfsConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
