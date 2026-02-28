// ignore_for_file: unused_element, unnecessary_cast

/// ScopeLifecycleState describes the state of a Scope resource.
class ScopeLifecycleStateResponseGkehubV1beta {
  /// The current state of the scope resource.
  final String code;

  /// Creates a new [ScopeLifecycleStateResponseGkehubV1beta].
  /// [code] The current state of the scope resource.
  ScopeLifecycleStateResponseGkehubV1beta({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory ScopeLifecycleStateResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return ScopeLifecycleStateResponseGkehubV1beta(
      code: map['code'] as String,
    );
  }
}
