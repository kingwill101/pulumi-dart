// ignore_for_file: unused_element, unnecessary_cast

class GetNodeGroupTaint {
  /// The effect of the taint.
  final String effect;

  /// The key of the taint.
  final String key;

  /// The value of the taint.
  final String value;

  GetNodeGroupTaint({
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

  factory GetNodeGroupTaint.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupTaint(
      effect: map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
