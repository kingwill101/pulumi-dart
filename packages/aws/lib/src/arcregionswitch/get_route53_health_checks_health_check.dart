// ignore_for_file: unused_element, unnecessary_cast

class GetRoute53HealthChecksHealthCheck {
  /// ID of the Route53 health check.
  final String healthCheckId;

  /// Hosted zone ID for the health check.
  final String hostedZoneId;

  /// Record name for the health check.
  final String recordName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String region;

  /// Status of the health check. Valid values: `healthy`, `unhealthy`, `unknown`.
  final String status;

  /// Creates a new [GetRoute53HealthChecksHealthCheck].
  /// [healthCheckId] ID of the Route53 health check.
  /// [hostedZoneId] Hosted zone ID for the health check.
  /// [recordName] Record name for the health check.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the health check. Valid values: `healthy`, `unhealthy`, `unknown`.
  GetRoute53HealthChecksHealthCheck({
    required this.healthCheckId,
    required this.hostedZoneId,
    required this.recordName,
    required this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckId': healthCheckId,
      'hostedZoneId': hostedZoneId,
      'recordName': recordName,
      'region': region,
      'status': status,
    };
  }

  factory GetRoute53HealthChecksHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetRoute53HealthChecksHealthCheck(
      healthCheckId: map['healthCheckId'] as String,
      hostedZoneId: map['hostedZoneId'] as String,
      recordName: map['recordName'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
    );
  }
}
