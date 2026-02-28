// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of Fast Socket feature.
class FastSocketResponse {
  /// Whether Fast Socket features are enabled in the node pool.
  final bool enabled;

  /// Creates a new [FastSocketResponse].
  /// [enabled] Whether Fast Socket features are enabled in the node pool.
  FastSocketResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory FastSocketResponse.fromMap(Map<String, dynamic> map) {
    return FastSocketResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
