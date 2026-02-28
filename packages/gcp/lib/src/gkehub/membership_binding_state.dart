// ignore_for_file: unused_element, unnecessary_cast

class MembershipBindingState {
  /// (Output)
  /// Code describes the state of a MembershipBinding resource.
  final String? code;

  /// Creates a new [MembershipBindingState].
  /// [code] (Output)
  MembershipBindingState({
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

  factory MembershipBindingState.fromMap(Map<String, dynamic> map) {
    return MembershipBindingState(
      code: map['code'] == null ? null : map['code'] as String,
    );
  }
}
