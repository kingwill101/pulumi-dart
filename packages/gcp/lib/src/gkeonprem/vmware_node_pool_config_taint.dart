// ignore_for_file: unused_element, unnecessary_cast

class VMwareNodePoolConfigTaint {
  /// Available taint effects.
  /// Possible values are: `EFFECT_UNSPECIFIED`, `NO_SCHEDULE`, `PREFER_NO_SCHEDULE`, `NO_EXECUTE`.
  final String? effect;

  /// Key associated with the effect.
  final String key;

  /// Value associated with the effect.
  final String value;

  /// Creates a new [VMwareNodePoolConfigTaint].
  /// [effect] Available taint effects.
  /// [key] Key associated with the effect.
  /// [value] Value associated with the effect.
  VMwareNodePoolConfigTaint({
    this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'effect': ?effect, 'key': key, 'value': value};
  }

  factory VMwareNodePoolConfigTaint.fromMap(Map<String, dynamic> map) {
    return VMwareNodePoolConfigTaint(
      effect: map['effect'] == null ? null : map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
