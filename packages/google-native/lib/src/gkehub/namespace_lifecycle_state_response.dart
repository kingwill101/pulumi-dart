// ignore_for_file: unused_element, unnecessary_cast


/// NamespaceLifecycleState describes the state of a Namespace resource.
class NamespaceLifecycleStateResponse {
  /// The current state of the Namespace resource.
  final String code;

  /// Creates a new [NamespaceLifecycleStateResponse].
  /// [code] The current state of the Namespace resource.
  NamespaceLifecycleStateResponse({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory NamespaceLifecycleStateResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceLifecycleStateResponse(
      code: map['code'] as String,
    );
  }
}

