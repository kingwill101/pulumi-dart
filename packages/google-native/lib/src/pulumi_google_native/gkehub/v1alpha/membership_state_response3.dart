// ignore_for_file: unused_element, unnecessary_cast

/// MembershipState describes the state of a Membership resource.
class MembershipStateResponse3 {
  /// The current state of the Membership resource.
  final String code;

  MembershipStateResponse3({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory MembershipStateResponse3.fromMap(Map<String, dynamic> map) {
    return MembershipStateResponse3(
      code: map['code'] as String,
    );
  }
}
