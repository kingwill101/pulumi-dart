// ignore_for_file: unused_element, unnecessary_cast

/// ScopeLifecycleState describes the state of a Scope resource.
class ScopeLifecycleStateResponse2 {
  /// The current state of the scope resource.
  final String code;

  ScopeLifecycleStateResponse2({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory ScopeLifecycleStateResponse2.fromMap(Map<String, dynamic> map) {
    return ScopeLifecycleStateResponse2(
      code: map['code'] as String,
    );
  }
}
