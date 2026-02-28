// ignore_for_file: unused_element, unnecessary_cast

/// MembershipState describes the state of a Membership resource.
class MembershipStateResponse {
  /// The current state of the Membership resource.
  final String code;

  /// Creates a new [MembershipStateResponse].
  /// [code] The current state of the Membership resource.
  MembershipStateResponse({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory MembershipStateResponse.fromMap(Map<String, dynamic> map) {
    return MembershipStateResponse(
      code: map['code'] as String,
    );
  }
}
