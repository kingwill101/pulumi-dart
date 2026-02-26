// ignore_for_file: unused_element, unnecessary_cast

/// NamespaceLifecycleState describes the state of a Namespace resource.
class NamespaceLifecycleStateResponse3 {
  /// The current state of the Namespace resource.
  final String code;

  NamespaceLifecycleStateResponse3({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory NamespaceLifecycleStateResponse3.fromMap(Map<String, dynamic> map) {
    return NamespaceLifecycleStateResponse3(
      code: map['code'] as String,
    );
  }
}
