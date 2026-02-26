// ignore_for_file: unused_element, unnecessary_cast

/// Criteria specific to the AlertPolicys that this Snooze applies to. The Snooze will suppress alerts that come from one of the AlertPolicys whose names are supplied.
class Criteria {
  /// The specific AlertPolicy names for the alert that should be snoozed. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID] There is a limit of 16 policies per snooze. This limit is checked during snooze creation.
  final List<String>? policies;

  Criteria({
    this.policies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final policiesValue = policies;
    if (policiesValue != null) {
      map['policies'] = policiesValue;
    }
    return map;
  }

  factory Criteria.fromMap(Map<String, dynamic> map) {
    return Criteria(
      policies: map['policies'] == null
          ? null
          : (map['policies'] as List).cast<String>(),
    );
  }
}
