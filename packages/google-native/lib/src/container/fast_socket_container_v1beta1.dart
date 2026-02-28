// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of Fast Socket feature.
class FastSocketContainerV1beta1 {
  /// Whether Fast Socket features are enabled in the node pool.
  final bool? enabled;

  /// Creates a new [FastSocketContainerV1beta1].
  /// [enabled] Whether Fast Socket features are enabled in the node pool.
  FastSocketContainerV1beta1({
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

  factory FastSocketContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return FastSocketContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
