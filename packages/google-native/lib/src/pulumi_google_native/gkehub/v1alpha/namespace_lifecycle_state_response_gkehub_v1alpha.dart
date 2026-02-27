// ignore_for_file: unused_element, unnecessary_cast

/// NamespaceLifecycleState describes the state of a Namespace resource.
class NamespaceLifecycleStateResponseGkehubV1alpha {
  /// The current state of the Namespace resource.
  final String code;

  NamespaceLifecycleStateResponseGkehubV1alpha({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory NamespaceLifecycleStateResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return NamespaceLifecycleStateResponseGkehubV1alpha(
      code: map['code'] as String,
    );
  }
}
