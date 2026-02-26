// ignore_for_file: unused_element, unnecessary_cast

/// The evaluated state of this restriction.
class MembershipRoleRestrictionEvaluationResponse {
  /// The current state of the restriction
  final String state;

  MembershipRoleRestrictionEvaluationResponse({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state;
    return map;
  }

  factory MembershipRoleRestrictionEvaluationResponse.fromMap(
      Map<String, dynamic> map) {
    return MembershipRoleRestrictionEvaluationResponse(
      state: map['state'] as String,
    );
  }
}
