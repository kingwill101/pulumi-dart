// ignore_for_file: unused_element, unnecessary_cast

/// Criteria specific to the AlertPolicys that this Snooze applies to. The Snooze will suppress alerts that come from one of the AlertPolicys whose names are supplied.
class CriteriaResponse {
  /// The specific AlertPolicy names for the alert that should be snoozed. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID] There is a limit of 16 policies per snooze. This limit is checked during snooze creation.
  final List<String> policies;

  CriteriaResponse({
    required this.policies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policies'] = policies;
    return map;
  }

  factory CriteriaResponse.fromMap(Map<String, dynamic> map) {
    return CriteriaResponse(
      policies: (map['policies'] as List).cast<String>(),
    );
  }
}
