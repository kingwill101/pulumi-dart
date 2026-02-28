// ignore_for_file: unused_element, unnecessary_cast

/// MembershipState describes the state of a Membership resource.
class MembershipStateResponseGkehubV1alpha2 {
  /// The current state of the Membership resource.
  final String code;

  /// Creates a new [MembershipStateResponseGkehubV1alpha2].
  /// [code] The current state of the Membership resource.
  MembershipStateResponseGkehubV1alpha2({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory MembershipStateResponseGkehubV1alpha2.fromMap(
      Map<String, dynamic> map) {
    return MembershipStateResponseGkehubV1alpha2(
      code: map['code'] as String,
    );
  }
}
