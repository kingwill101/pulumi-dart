// ignore_for_file: unused_element, unnecessary_cast


class PlanWorkflowStepRoute53HealthCheckConfigRecordSet {
  /// Record set identifier.
  final String recordSetIdentifier;
  /// AWS region.
  final String region;

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

  factory PlanWorkflowStepRoute53HealthCheckConfigRecordSet.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepRoute53HealthCheckConfigRecordSet(
      recordSetIdentifier: map['recordSetIdentifier'] as String,
      region: map['region'] as String,
    );
  }
}

