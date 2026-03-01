// ignore_for_file: unused_element, unnecessary_cast

class GetNodeGroupTaint {
  /// The effect of the taint.
  final String effect;

  /// The key of the taint.
  final String key;

  /// The value of the taint.
  final String value;

  /// Creates a new [GetNodeGroupTaint].
  /// [effect] The effect of the taint.
  /// [key] The key of the taint.
  /// [value] The value of the taint.
  GetNodeGroupTaint({
    required this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'effect': effect, 'key': key, 'value': value};
  }

  factory GetNodeGroupTaint.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupTaint(
      effect: map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
