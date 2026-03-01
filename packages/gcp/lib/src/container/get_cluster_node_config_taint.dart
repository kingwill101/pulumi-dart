// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigTaint {
  /// Effect for taint.
  final String effect;

  /// Key for taint.
  final String key;

  /// Value for taint.
  final String value;

  /// Creates a new [GetClusterNodeConfigTaint].
  /// [effect] Effect for taint.
  /// [key] Key for taint.
  /// [value] Value for taint.
  GetClusterNodeConfigTaint({
    required this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'effect': effect, 'key': key, 'value': value};
  }

  factory GetClusterNodeConfigTaint.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigTaint(
      effect: map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
