// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// Definition of goal template property.
class GoalTemplatePropertiesResponse {
  /// Details of any errors encountered during the operation.
  final pulumi.Input<ErrorDetailResponse> errorDetails;
  /// Type of Goal Template created by customer
  final pulumi.Input<String> goalType;
  /// Provisioning state
  final pulumi.Input<String> provisioningState;
  /// Regional recovery point objective specified by customer. eg, PT15M for 15 minutes
  final pulumi.Input<String?>? regionalRecoveryPointObjective;
  /// Regional recovery time objective specified by customer. eg, PT15M for 15 minutes
  final pulumi.Input<String?>? regionalRecoveryTimeObjective;
  /// Option specified by customer under disaster recovery section of goal template
  final pulumi.Input<String?>? requireDisasterRecovery;
  /// Option specified by customer under high availability section of goal template
  final pulumi.Input<String?>? requireHighAvailability;

  /// Creates a new [GoalTemplatePropertiesResponse].
  /// [errorDetails] Details of any errors encountered during the operation.
  /// [goalType] Type of Goal Template created by customer
  /// [provisioningState] Provisioning state
  /// [regionalRecoveryPointObjective] Regional recovery point objective specified by customer. eg, PT15M for 15 minutes
  /// [regionalRecoveryTimeObjective] Regional recovery time objective specified by customer. eg, PT15M for 15 minutes
  /// [requireDisasterRecovery] Option specified by customer under disaster recovery section of goal template
  /// [requireHighAvailability] Option specified by customer under high availability section of goal template
  const GoalTemplatePropertiesResponse({
    required this.errorDetails,
    required this.goalType,
    required this.provisioningState,
    this.regionalRecoveryPointObjective,
    this.regionalRecoveryTimeObjective,
    this.requireDisasterRecovery,
    this.requireHighAvailability,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'goalType': goalType,
      'provisioningState': provisioningState,
      'regionalRecoveryPointObjective': ?regionalRecoveryPointObjective,
      'regionalRecoveryTimeObjective': ?regionalRecoveryTimeObjective,
      'requireDisasterRecovery': ?requireDisasterRecovery,
      'requireHighAvailability': ?requireHighAvailability,
    };
  }

  factory GoalTemplatePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GoalTemplatePropertiesResponse(
      errorDetails: pulumi.Input.fromValue(ErrorDetailResponse.fromMap((map['errorDetails']! as Map).cast<String, dynamic>())),
      goalType: pulumi.Input.fromValue(map['goalType'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      regionalRecoveryPointObjective: (() { final guardedValue = map['regionalRecoveryPointObjective']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionalRecoveryTimeObjective: (() { final guardedValue = map['regionalRecoveryTimeObjective']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireDisasterRecovery: (() { final guardedValue = map['requireDisasterRecovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireHighAvailability: (() { final guardedValue = map['requireHighAvailability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
