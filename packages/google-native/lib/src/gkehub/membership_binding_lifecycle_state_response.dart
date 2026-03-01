// ignore_for_file: unused_element, unnecessary_cast

/// MembershipBindingLifecycleState describes the state of a Binding resource.
class MembershipBindingLifecycleStateResponse {
  /// The current state of the MembershipBinding resource.
  final String code;

  /// Creates a new [MembershipBindingLifecycleStateResponse].
  /// [code] The current state of the MembershipBinding resource.
  MembershipBindingLifecycleStateResponse({required this.code});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': code};
  }

  factory MembershipBindingLifecycleStateResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return MembershipBindingLifecycleStateResponse(code: map['code'] as String);
  }
}
