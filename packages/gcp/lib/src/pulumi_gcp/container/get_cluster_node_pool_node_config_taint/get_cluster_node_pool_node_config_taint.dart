// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigTaint {
  /// Effect for taint.
  final String effect;

  /// Key for taint.
  final String key;

  /// Value for taint.
  final String value;

  GetClusterNodePoolNodeConfigTaint({
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

  factory GetClusterNodePoolNodeConfigTaint.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigTaint(
      effect: map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
