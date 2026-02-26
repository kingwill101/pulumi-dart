// ignore_for_file: unused_element, unnecessary_cast

/// MembershipState describes the state of a Membership resource.
class MembershipStateResponse5 {
  /// The current state of the Membership resource.
  final String code;

  MembershipStateResponse5({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory MembershipStateResponse5.fromMap(Map<String, dynamic> map) {
    return MembershipStateResponse5(
      code: map['code'] as String,
    );
  }
}
