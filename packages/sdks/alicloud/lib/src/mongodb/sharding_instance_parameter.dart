// ignore_for_file: unused_element, unnecessary_cast


class ShardingInstanceParameter {
  /// The name of the parameter.
  final String name;
  /// The value of the parameter.
  final String value;

  /// Creates a new [ShardingInstanceParameter].
  /// [name] The name of the parameter.
  /// [value] The value of the parameter.
  ShardingInstanceParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory ShardingInstanceParameter.fromMap(Map<String, dynamic> map) {
    return ShardingInstanceParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

