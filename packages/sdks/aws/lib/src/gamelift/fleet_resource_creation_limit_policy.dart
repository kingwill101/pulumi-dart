// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetResourceCreationLimitPolicy {
  /// Maximum number of game sessions that an individual can create during the policy period.
  final pulumi.Input<int>? newGameSessionsPerCreator;
  /// Time span used in evaluating the resource creation limit policy.
  final pulumi.Input<int>? policyPeriodInMinutes;

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
      newGameSessionsPerCreator: (() { final guardedValue = map['newGameSessionsPerCreator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      policyPeriodInMinutes: (() { final guardedValue = map['policyPeriodInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

