// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of Fast Socket feature.
class FastSocket2 {
  /// Whether Fast Socket features are enabled in the node pool.
  final bool? enabled;

  FastSocket2({
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

  factory FastSocket2.fromMap(Map<String, dynamic> map) {
    return FastSocket2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
