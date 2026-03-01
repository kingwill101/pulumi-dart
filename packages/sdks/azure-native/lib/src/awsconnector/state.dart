// ignore_for_file: unused_element, unnecessary_cast


/// Definition of State
class State {
  /// Status code of the Instance.
  final int? code;
  /// Status code of the Instance.
  final String? name;

  /// Creates a new [State].
  /// [code] Status code of the Instance.
  /// [name] Status code of the Instance.
  State({
    this.code,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'name': ?name,
    };
  }

  factory State.fromMap(Map<String, dynamic> map) {
    return State(
      code: map['code'] == null ? null : map['code'] as int,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

