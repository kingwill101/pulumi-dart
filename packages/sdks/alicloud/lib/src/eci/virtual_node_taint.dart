// ignore_for_file: unused_element, unnecessary_cast


class VirtualNodeTaint {
  /// The effect of the taint. Valid values: `NoSchedule`, `NoExecute` and `PreferNoSchedule`.
  final String? effect;
  /// The key of the taint.
  final String? key;
  /// The value of the taint.
  final String? value;

  /// Creates a new [VirtualNodeTaint].
  /// [effect] The effect of the taint. Valid values: `NoSchedule`, `NoExecute` and `PreferNoSchedule`.
  /// [key] The key of the taint.
  /// [value] The value of the taint.
  VirtualNodeTaint({
    this.effect,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': ?key,
      'value': ?value,
    };
  }

  factory VirtualNodeTaint.fromMap(Map<String, dynamic> map) {
    return VirtualNodeTaint(
      effect: map['effect'] == null ? null : map['effect'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

