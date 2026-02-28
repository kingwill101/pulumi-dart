// ignore_for_file: unused_element, unnecessary_cast

class ControlTowerControlParameter {
  /// The name of the parameter.
  final String key;

  /// The value of the parameter.
  final String value;

  /// Creates a new [ControlTowerControlParameter].
  /// [key] The name of the parameter.
  /// [value] The value of the parameter.
  ControlTowerControlParameter({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory ControlTowerControlParameter.fromMap(Map<String, dynamic> map) {
    return ControlTowerControlParameter(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
