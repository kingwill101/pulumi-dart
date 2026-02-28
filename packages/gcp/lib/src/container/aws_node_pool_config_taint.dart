// ignore_for_file: unused_element, unnecessary_cast

class AwsNodePoolConfigTaint {
  /// The taint effect. Possible values: EFFECT_UNSPECIFIED, NO_SCHEDULE, PREFER_NO_SCHEDULE, NO_EXECUTE
  final String effect;

  /// Key for the taint.
  final String key;

  /// Value for the taint.
  final String value;

  /// Creates a new [AwsNodePoolConfigTaint].
  /// [effect] The taint effect. Possible values: EFFECT_UNSPECIFIED, NO_SCHEDULE, PREFER_NO_SCHEDULE, NO_EXECUTE
  /// [key] Key for the taint.
  /// [value] Value for the taint.
  AwsNodePoolConfigTaint({
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

  factory AwsNodePoolConfigTaint.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolConfigTaint(
      effect: map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
