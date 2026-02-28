// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of Fast Socket feature.
class FastSocket {
  /// Whether Fast Socket features are enabled in the node pool.
  final bool? enabled;

  /// Creates a new [FastSocket].
  /// [enabled] Whether Fast Socket features are enabled in the node pool.
  FastSocket({
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

  factory FastSocket.fromMap(Map<String, dynamic> map) {
    return FastSocket(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
