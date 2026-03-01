// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigTaint {
  /// Effect for taint. Accepted values are `NO_SCHEDULE`, `PREFER_NO_SCHEDULE`, and `NO_EXECUTE`.
  final String effect;

  /// Key for taint.
  final String key;

  /// Value for taint.
  final String value;

  /// Creates a new [ClusterNodePoolNodeConfigTaint].
  /// [effect] Effect for taint. Accepted values are `NO_SCHEDULE`, `PREFER_NO_SCHEDULE`, and `NO_EXECUTE`.
  /// [key] Key for taint.
  /// [value] Value for taint.
  ClusterNodePoolNodeConfigTaint({
    required this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'effect': effect, 'key': key, 'value': value};
  }

  factory ClusterNodePoolNodeConfigTaint.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigTaint(
      effect: map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
