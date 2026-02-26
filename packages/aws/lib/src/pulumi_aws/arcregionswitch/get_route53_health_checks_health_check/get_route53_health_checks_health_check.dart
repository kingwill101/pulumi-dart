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

  /// Status of the health check. Valid values: <span pulumi-lang-nodejs="`healthy`" pulumi-lang-dotnet="`Healthy`" pulumi-lang-go="`healthy`" pulumi-lang-python="`healthy`" pulumi-lang-yaml="`healthy`" pulumi-lang-java="`healthy`">`healthy`</span>, <span pulumi-lang-nodejs="`unhealthy`" pulumi-lang-dotnet="`Unhealthy`" pulumi-lang-go="`unhealthy`" pulumi-lang-python="`unhealthy`" pulumi-lang-yaml="`unhealthy`" pulumi-lang-java="`unhealthy`">`unhealthy`</span>, <span pulumi-lang-nodejs="`unknown`" pulumi-lang-dotnet="`Unknown`" pulumi-lang-go="`unknown`" pulumi-lang-python="`unknown`" pulumi-lang-yaml="`unknown`" pulumi-lang-java="`unknown`">`unknown`</span>.
  final String status;

  GetRoute53HealthChecksHealthCheck({
    required this.healthCheckId,
    required this.hostedZoneId,
    required this.recordName,
    required this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['healthCheckId'] = healthCheckId;
    map['hostedZoneId'] = hostedZoneId;
    map['recordName'] = recordName;
    map['region'] = region;
    map['status'] = status;
    return map;
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
