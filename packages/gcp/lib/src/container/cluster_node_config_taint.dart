// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigTaint {
  /// Effect for taint. Accepted values are `NO_SCHEDULE`, `PREFER_NO_SCHEDULE`, and `NO_EXECUTE`.
  final String effect;

  /// Key for taint.
  final String key;

  /// Value for taint.
  final String value;

  /// Creates a new [ClusterNodeConfigTaint].
  /// [effect] Effect for taint. Accepted values are `NO_SCHEDULE`, `PREFER_NO_SCHEDULE`, and `NO_EXECUTE`.
  /// [key] Key for taint.
  /// [value] Value for taint.
  ClusterNodeConfigTaint({
    required this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'effect': effect, 'key': key, 'value': value};
  }

  factory ClusterNodeConfigTaint.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigTaint(
      effect: map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
