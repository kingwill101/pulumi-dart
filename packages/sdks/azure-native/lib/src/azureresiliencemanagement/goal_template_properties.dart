// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of goal template property.
class GoalTemplateProperties {
  /// Type of Goal Template created by customer
  final pulumi.Input<dynamic> goalType;
  /// Regional recovery point objective specified by customer. eg, PT15M for 15 minutes
  final pulumi.Input<String?>? regionalRecoveryPointObjective;
  /// Regional recovery time objective specified by customer. eg, PT15M for 15 minutes
  final pulumi.Input<String?>? regionalRecoveryTimeObjective;
  /// Option specified by customer under disaster recovery section of goal template
  final pulumi.Input<dynamic>? requireDisasterRecovery;
  /// Option specified by customer under high availability section of goal template
  final pulumi.Input<dynamic>? requireHighAvailability;

  /// Creates a new [GoalTemplateProperties].
  /// [goalType] Type of Goal Template created by customer
  /// [regionalRecoveryPointObjective] Regional recovery point objective specified by customer. eg, PT15M for 15 minutes
  /// [regionalRecoveryTimeObjective] Regional recovery time objective specified by customer. eg, PT15M for 15 minutes
  /// [requireDisasterRecovery] Option specified by customer under disaster recovery section of goal template
  /// [requireHighAvailability] Option specified by customer under high availability section of goal template
  const GoalTemplateProperties({
    required this.goalType,
    this.regionalRecoveryPointObjective,
    this.regionalRecoveryTimeObjective,
    this.requireDisasterRecovery,
    this.requireHighAvailability,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goalType': goalType,
      'regionalRecoveryPointObjective': ?regionalRecoveryPointObjective,
      'regionalRecoveryTimeObjective': ?regionalRecoveryTimeObjective,
      'requireDisasterRecovery': ?requireDisasterRecovery,
      'requireHighAvailability': ?requireHighAvailability,
    };
  }

  factory GoalTemplateProperties.fromMap(Map<String, dynamic> map) {
    return GoalTemplateProperties(
      goalType: pulumi.Input.fromValue(map['goalType']),
      regionalRecoveryPointObjective: (() { final guardedValue = map['regionalRecoveryPointObjective']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionalRecoveryTimeObjective: (() { final guardedValue = map['regionalRecoveryTimeObjective']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireDisasterRecovery: (() { final guardedValue = map['requireDisasterRecovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      requireHighAvailability: (() { final guardedValue = map['requireHighAvailability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
