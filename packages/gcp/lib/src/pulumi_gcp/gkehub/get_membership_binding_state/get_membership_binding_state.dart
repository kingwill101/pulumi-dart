// ignore_for_file: unused_element, unnecessary_cast

class GetMembershipBindingState {
  /// Code describes the state of a MembershipBinding resource.
  final String code;

  GetMembershipBindingState({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory GetMembershipBindingState.fromMap(Map<String, dynamic> map) {
    return GetMembershipBindingState(
      code: map['code'] as String,
    );
  }
}
