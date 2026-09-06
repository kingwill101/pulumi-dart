// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_identity_response.dart';

/// RecoveryPlan properties.
class RecoveryPlanPropertiesOfDrillResponse {
  /// Identity to use for RecoveryPlan operations.
  final pulumi.Input<AssociatedIdentityResponse> identity;
  /// Recovery Orchestration plan associated with this Drill.
  final pulumi.Input<String> recoveryPlanId;
  /// Excluded resource count in RecoveryPlan.
  final pulumi.Input<int> recoveryPlanResourceExcludedCount;

  /// Creates a new [RecoveryPlanPropertiesOfDrillResponse].
  /// [identity] Identity to use for RecoveryPlan operations.
  /// [recoveryPlanId] Recovery Orchestration plan associated with this Drill.
  /// [recoveryPlanResourceExcludedCount] Excluded resource count in RecoveryPlan.
  const RecoveryPlanPropertiesOfDrillResponse({
    required this.identity,
    required this.recoveryPlanId,
    required this.recoveryPlanResourceExcludedCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': pulumi.Input.mapInputValue<AssociatedIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'recoveryPlanId': recoveryPlanId,
      'recoveryPlanResourceExcludedCount': recoveryPlanResourceExcludedCount,
    };
  }

  factory RecoveryPlanPropertiesOfDrillResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanPropertiesOfDrillResponse(
      identity: pulumi.Input.fromValue(AssociatedIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      recoveryPlanId: pulumi.Input.fromValue(map['recoveryPlanId'] as String),
      recoveryPlanResourceExcludedCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['recoveryPlanResourceExcludedCount'])),
    );
  }
}
