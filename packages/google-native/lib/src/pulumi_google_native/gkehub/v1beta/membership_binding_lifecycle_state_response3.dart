// ignore_for_file: unused_element, unnecessary_cast

/// MembershipBindingLifecycleState describes the state of a Binding resource.
class MembershipBindingLifecycleStateResponse3 {
  /// The current state of the MembershipBinding resource.
  final String code;

  MembershipBindingLifecycleStateResponse3({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory MembershipBindingLifecycleStateResponse3.fromMap(
      Map<String, dynamic> map) {
    return MembershipBindingLifecycleStateResponse3(
      code: map['code'] as String,
    );
  }
}
