// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of Fast Socket feature.
class FastSocketResponseContainerV1beta1 {
  /// Whether Fast Socket features are enabled in the node pool.
  final bool enabled;

  FastSocketResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory FastSocketResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return FastSocketResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}
