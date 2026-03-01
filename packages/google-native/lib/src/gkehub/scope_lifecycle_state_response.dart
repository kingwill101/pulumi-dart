// ignore_for_file: unused_element, unnecessary_cast

/// ScopeLifecycleState describes the state of a Scope resource.
class ScopeLifecycleStateResponse {
  /// The current state of the scope resource.
  final String code;

  /// Creates a new [ScopeLifecycleStateResponse].
  /// [code] The current state of the scope resource.
  ScopeLifecycleStateResponse({required this.code});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': code};
  }

  factory ScopeLifecycleStateResponse.fromMap(Map<String, dynamic> map) {
    return ScopeLifecycleStateResponse(code: map['code'] as String);
  }
}
