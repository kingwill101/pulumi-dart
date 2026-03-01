// ignore_for_file: unused_element, unnecessary_cast


class DbClusterDesiredParam {
  /// Parameter name.
  final String? name;
  /// The new value of Parameter.
  final String? value;

  /// Creates a new [DbClusterDesiredParam].
  /// [name] Parameter name.
  /// [value] The new value of Parameter.
  DbClusterDesiredParam({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory DbClusterDesiredParam.fromMap(Map<String, dynamic> map) {
    return DbClusterDesiredParam(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

