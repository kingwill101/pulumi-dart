// ignore_for_file: unused_element, unnecessary_cast


class RdsUpgradeDbInstanceParameter {
  /// The parameter name.
  final String name;
  /// The parameter value.
  final String value;

  /// Creates a new [RdsUpgradeDbInstanceParameter].
  /// [name] The parameter name.
  /// [value] The parameter value.
  RdsUpgradeDbInstanceParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory RdsUpgradeDbInstanceParameter.fromMap(Map<String, dynamic> map) {
    return RdsUpgradeDbInstanceParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

