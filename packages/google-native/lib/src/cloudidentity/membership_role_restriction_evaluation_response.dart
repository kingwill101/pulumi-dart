// ignore_for_file: unused_element, unnecessary_cast

/// The evaluated state of this restriction.
class MembershipRoleRestrictionEvaluationResponse {
  /// The current state of the restriction
  final String state;

  /// Creates a new [MembershipRoleRestrictionEvaluationResponse].
  /// [state] The current state of the restriction
  MembershipRoleRestrictionEvaluationResponse({required this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': state};
  }

  factory MembershipRoleRestrictionEvaluationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return MembershipRoleRestrictionEvaluationResponse(
      state: map['state'] as String,
    );
  }
}
