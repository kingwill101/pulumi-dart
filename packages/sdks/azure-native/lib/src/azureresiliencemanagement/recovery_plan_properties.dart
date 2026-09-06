// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recovery_groups_setting.dart';

/// Properties of the recovery orchestration plan.
class RecoveryPlanProperties {
  /// A description of the recovery orchestration plan.
  final pulumi.Input<String> planDescription;
  /// The type of the recovery orchestration plan, which can be set during creation but cannot be changed afterward.
  final pulumi.Input<dynamic> planType;
  /// Settings for the recovery orchestration groups associated with the recovery orchestration plan.
  final pulumi.Input<RecoveryGroupsSetting> recoveryGroupsSetting;

  /// Creates a new [RecoveryPlanProperties].
  /// [planDescription] A description of the recovery orchestration plan.
  /// [planType] The type of the recovery orchestration plan, which can be set during creation but cannot be changed afterward.
  /// [recoveryGroupsSetting] Settings for the recovery orchestration groups associated with the recovery orchestration plan.
  const RecoveryPlanProperties({
    required this.planDescription,
    required this.planType,
    required this.recoveryGroupsSetting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'planDescription': planDescription,
      'planType': planType,
      'recoveryGroupsSetting': pulumi.Input.mapInputValue<RecoveryGroupsSetting, Map<String, dynamic>>(recoveryGroupsSetting, (value) => value.toMap()),
    };
  }

  factory RecoveryPlanProperties.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanProperties(
      planDescription: pulumi.Input.fromValue(map['planDescription'] as String),
      planType: pulumi.Input.fromValue(map['planType']),
      recoveryGroupsSetting: pulumi.Input.fromValue(RecoveryGroupsSetting.fromMap((map['recoveryGroupsSetting']! as Map).cast<String, dynamic>())),
    );
  }
}
