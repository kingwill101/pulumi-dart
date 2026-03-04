// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepRoute53HealthCheckConfigRecordSet {
  /// Record set identifier.
  final pulumi.Input<String> recordSetIdentifier;

  /// AWS region.
  final pulumi.Input<String> region;

  /// Creates a new [PlanWorkflowStepRoute53HealthCheckConfigRecordSet].
  /// [recordSetIdentifier] Record set identifier.
  /// [region] AWS region.
  PlanWorkflowStepRoute53HealthCheckConfigRecordSet({
    required this.recordSetIdentifier,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordSetIdentifier': recordSetIdentifier,
      'region': region,
    };
  }

  factory PlanWorkflowStepRoute53HealthCheckConfigRecordSet.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepRoute53HealthCheckConfigRecordSet(
      recordSetIdentifier: pulumi.Input.fromValue(
        map['recordSetIdentifier'] as String,
      ),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
