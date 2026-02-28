// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigEffectiveTaint {
  /// Effect for taint.
  final String effect;

  /// Key for taint.
  final String key;

  /// Value for taint.
  final String value;

  /// Creates a new [GetClusterNodeConfigEffectiveTaint].
  /// [effect] Effect for taint.
  /// [key] Key for taint.
  /// [value] Value for taint.
  GetClusterNodeConfigEffectiveTaint({
    required this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['effect'] = effect;
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory GetClusterNodeConfigEffectiveTaint.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigEffectiveTaint(
      effect: map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
