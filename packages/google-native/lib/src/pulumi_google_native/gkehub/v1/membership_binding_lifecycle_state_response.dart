// ignore_for_file: unused_element, unnecessary_cast

/// MembershipBindingLifecycleState describes the state of a Binding resource.
class MembershipBindingLifecycleStateResponse {
  /// The current state of the MembershipBinding resource.
  final String code;

  MembershipBindingLifecycleStateResponse({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory MembershipBindingLifecycleStateResponse.fromMap(
      Map<String, dynamic> map) {
    return MembershipBindingLifecycleStateResponse(
      code: map['code'] as String,
    );
  }
}
