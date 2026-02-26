// ignore_for_file: unused_element, unnecessary_cast

/// MembershipBindingLifecycleState describes the state of a Binding resource.
class MembershipBindingLifecycleStateResponse2 {
  /// The current state of the MembershipBinding resource.
  final String code;

  MembershipBindingLifecycleStateResponse2({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory MembershipBindingLifecycleStateResponse2.fromMap(
      Map<String, dynamic> map) {
    return MembershipBindingLifecycleStateResponse2(
      code: map['code'] as String,
    );
  }
}
