// ignore_for_file: unused_element, unnecessary_cast

class FleetResourceCreationLimitPolicy {
  /// Maximum number of game sessions that an individual can create during the policy period.
  final int? newGameSessionsPerCreator;

  /// Time span used in evaluating the resource creation limit policy.
  final int? policyPeriodInMinutes;

  FleetResourceCreationLimitPolicy({
    this.newGameSessionsPerCreator,
    this.policyPeriodInMinutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final newGameSessionsPerCreatorValue = newGameSessionsPerCreator;
    if (newGameSessionsPerCreatorValue != null) {
      map['newGameSessionsPerCreator'] = newGameSessionsPerCreatorValue;
    }
    final policyPeriodInMinutesValue = policyPeriodInMinutes;
    if (policyPeriodInMinutesValue != null) {
      map['policyPeriodInMinutes'] = policyPeriodInMinutesValue;
    }
    return map;
  }

  factory FleetResourceCreationLimitPolicy.fromMap(Map<String, dynamic> map) {
    return FleetResourceCreationLimitPolicy(
      newGameSessionsPerCreator: map['newGameSessionsPerCreator'] == null
          ? null
          : map['newGameSessionsPerCreator'] as int,
      policyPeriodInMinutes: map['policyPeriodInMinutes'] == null
          ? null
          : map['policyPeriodInMinutes'] as int,
    );
  }
}
