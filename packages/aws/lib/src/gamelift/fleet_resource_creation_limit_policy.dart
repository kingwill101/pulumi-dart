// ignore_for_file: unused_element, unnecessary_cast

class FleetResourceCreationLimitPolicy {
  /// Maximum number of game sessions that an individual can create during the policy period.
  final int? newGameSessionsPerCreator;

  /// Time span used in evaluating the resource creation limit policy.
  final int? policyPeriodInMinutes;

  /// Creates a new [FleetResourceCreationLimitPolicy].
  /// [newGameSessionsPerCreator] Maximum number of game sessions that an individual can create during the policy period.
  /// [policyPeriodInMinutes] Time span used in evaluating the resource creation limit policy.
  FleetResourceCreationLimitPolicy({
    this.newGameSessionsPerCreator,
    this.policyPeriodInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newGameSessionsPerCreator': ?newGameSessionsPerCreator,
      'policyPeriodInMinutes': ?policyPeriodInMinutes,
    };
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
