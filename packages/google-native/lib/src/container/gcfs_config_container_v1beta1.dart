// ignore_for_file: unused_element, unnecessary_cast

/// GcfsConfig contains configurations of Google Container File System.
class GcfsConfigContainerV1beta1 {
  /// Whether to use GCFS.
  final bool? enabled;

  /// Creates a new [GcfsConfigContainerV1beta1].
  /// [enabled] Whether to use GCFS.
  GcfsConfigContainerV1beta1({
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

  factory GcfsConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return GcfsConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
