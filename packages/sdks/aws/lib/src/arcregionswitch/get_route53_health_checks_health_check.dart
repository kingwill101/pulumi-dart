// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRoute53HealthChecksHealthCheck {
  /// ID of the Route53 health check.
  final pulumi.Input<String> healthCheckId;
  /// Hosted zone ID for the health check.
  final pulumi.Input<String> hostedZoneId;
  /// Record name for the health check.
  final pulumi.Input<String> recordName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String> region;
  /// Status of the health check. Valid values: `healthy`, `unhealthy`, `unknown`.
  final pulumi.Input<String> status;

  /// Creates a new [GetRoute53HealthChecksHealthCheck].
  /// [healthCheckId] ID of the Route53 health check.
  /// [hostedZoneId] Hosted zone ID for the health check.
  /// [recordName] Record name for the health check.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the health check. Valid values: `healthy`, `unhealthy`, `unknown`.
  const GetRoute53HealthChecksHealthCheck({
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
      healthCheckId: pulumi.Input.fromValue(map['healthCheckId'] as String),
      hostedZoneId: pulumi.Input.fromValue(map['hostedZoneId'] as String),
      recordName: pulumi.Input.fromValue(map['recordName'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

