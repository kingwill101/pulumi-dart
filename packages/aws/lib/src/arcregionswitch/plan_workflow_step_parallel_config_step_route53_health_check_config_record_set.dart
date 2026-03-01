// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfigRecordSet {
  /// Record set identifier.
  final String recordSetIdentifier;

  /// AWS region.
  final String region;

  /// Creates a new [PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfigRecordSet].
  /// [recordSetIdentifier] Record set identifier.
  /// [region] AWS region.
  PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfigRecordSet({
    required this.recordSetIdentifier,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordSetIdentifier': recordSetIdentifier,
      'region': region,
    };
  }

  factory PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfigRecordSet.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfigRecordSet(
      recordSetIdentifier: map['recordSetIdentifier'] as String,
      region: map['region'] as String,
    );
  }
}
