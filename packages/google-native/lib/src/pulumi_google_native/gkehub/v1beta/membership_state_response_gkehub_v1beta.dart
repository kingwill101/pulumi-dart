// ignore_for_file: unused_element, unnecessary_cast

/// MembershipState describes the state of a Membership resource.
class MembershipStateResponseGkehubV1beta {
  /// The current state of the Membership resource.
  final String code;

  MembershipStateResponseGkehubV1beta({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory MembershipStateResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return MembershipStateResponseGkehubV1beta(
      code: map['code'] as String,
    );
  }
}
