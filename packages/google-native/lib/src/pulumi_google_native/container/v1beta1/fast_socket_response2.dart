// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of Fast Socket feature.
class FastSocketResponse2 {
  /// Whether Fast Socket features are enabled in the node pool.
  final bool enabled;

  FastSocketResponse2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory FastSocketResponse2.fromMap(Map<String, dynamic> map) {
    return FastSocketResponse2(
      enabled: map['enabled'] as bool,
    );
  }
}
