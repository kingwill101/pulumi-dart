// ignore_for_file: unused_element, unnecessary_cast

/// MembershipBindingLifecycleState describes the state of a Binding resource.
class MembershipBindingLifecycleStateResponseGkehubV1beta {
  /// The current state of the MembershipBinding resource.
  final String code;

  /// Creates a new [MembershipBindingLifecycleStateResponseGkehubV1beta].
  /// [code] The current state of the MembershipBinding resource.
  MembershipBindingLifecycleStateResponseGkehubV1beta({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory MembershipBindingLifecycleStateResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return MembershipBindingLifecycleStateResponseGkehubV1beta(
      code: map['code'] as String,
    );
  }
}
