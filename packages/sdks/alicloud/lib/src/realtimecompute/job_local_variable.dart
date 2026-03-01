// ignore_for_file: unused_element, unnecessary_cast


class JobLocalVariable {
  /// Local variables name
  final String? name;
  /// Local variables value
  final String? value;

  /// Creates a new [JobLocalVariable].
  /// [name] Local variables name
  /// [value] Local variables value
  JobLocalVariable({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory JobLocalVariable.fromMap(Map<String, dynamic> map) {
    return JobLocalVariable(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

