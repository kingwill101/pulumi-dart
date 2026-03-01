// ignore_for_file: unused_element, unnecessary_cast


class RdsCloneDbInstanceParameter {
  /// The parameters name.
  final String name;
  /// The parameters value.
  final String value;

  /// Creates a new [RdsCloneDbInstanceParameter].
  /// [name] The parameters name.
  /// [value] The parameters value.
  RdsCloneDbInstanceParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory RdsCloneDbInstanceParameter.fromMap(Map<String, dynamic> map) {
    return RdsCloneDbInstanceParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

