// ignore_for_file: unused_element, unnecessary_cast

class NamespaceState {
  /// (Output)
  /// Code describes the state of a Namespace resource.
  final String? code;

  NamespaceState({
    this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    return map;
  }

  factory NamespaceState.fromMap(Map<String, dynamic> map) {
    return NamespaceState(
      code: map['code'] == null ? null : map['code'] as String,
    );
  }
}
