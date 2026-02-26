// ignore_for_file: unused_element, unnecessary_cast

/// The evaluated state of this restriction.
class MembershipRoleRestrictionEvaluationResponse2 {
  /// The current state of the restriction
  final String state;

  MembershipRoleRestrictionEvaluationResponse2({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state;
    return map;
  }

  factory MembershipRoleRestrictionEvaluationResponse2.fromMap(
      Map<String, dynamic> map) {
    return MembershipRoleRestrictionEvaluationResponse2(
      state: map['state'] as String,
    );
  }
}
