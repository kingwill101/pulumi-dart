// ignore_for_file: unused_element, unnecessary_cast

/// The evaluated state of this restriction.
class MembershipRoleRestrictionEvaluationResponseCloudidentityV1beta1 {
  /// The current state of the restriction
  final String state;

  /// Creates a new [MembershipRoleRestrictionEvaluationResponseCloudidentityV1beta1].
  /// [state] The current state of the restriction
  MembershipRoleRestrictionEvaluationResponseCloudidentityV1beta1({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state;
    return map;
  }

  factory MembershipRoleRestrictionEvaluationResponseCloudidentityV1beta1.fromMap(
      Map<String, dynamic> map) {
    return MembershipRoleRestrictionEvaluationResponseCloudidentityV1beta1(
      state: map['state'] as String,
    );
  }
}
