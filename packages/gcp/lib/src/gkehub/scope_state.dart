// ignore_for_file: unused_element, unnecessary_cast


class ScopeState {
  /// (Output)
  /// Code describes the state of a Scope resource.
  final String? code;

  /// Creates a new [ScopeState].
  /// [code] (Output)
  ScopeState({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory ScopeState.fromMap(Map<String, dynamic> map) {
    return ScopeState(
      code: map['code'] == null ? null : map['code'] as String,
    );
  }
}

