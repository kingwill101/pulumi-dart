// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigEffectiveTaint {
  /// Effect for taint.
  final String? effect;

  /// Key for taint.
  final String? key;

  /// Value for taint.
  final String? value;

  /// Creates a new [ClusterNodePoolNodeConfigEffectiveTaint].
  /// [effect] Effect for taint.
  /// [key] Key for taint.
  /// [value] Value for taint.
  ClusterNodePoolNodeConfigEffectiveTaint({this.effect, this.key, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'effect': ?effect, 'key': ?key, 'value': ?value};
  }

  factory ClusterNodePoolNodeConfigEffectiveTaint.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNodeConfigEffectiveTaint(
      effect: map['effect'] == null ? null : map['effect'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
