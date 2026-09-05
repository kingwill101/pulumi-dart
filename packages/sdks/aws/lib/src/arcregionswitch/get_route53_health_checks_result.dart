// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route53_health_checks_health_check.dart';

/// Result data returned by getRoute53HealthChecks.
class GetRoute53HealthChecksResult {
  /// List of Route53 health checks associated with the plan. Each health check contains:
  final List<GetRoute53HealthChecksHealthCheck>? healthChecks;
  final String? planArn;
  /// Region for the health check.
  final String? region;

  /// Creates a new [GetRoute53HealthChecksResult].
  /// [healthChecks] List of Route53 health checks associated with the plan. Each health check contains:
  /// [planArn] Optional.
  /// [region] Region for the health check.
  const GetRoute53HealthChecksResult({
    this.healthChecks,
    this.planArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthChecks': ?(() { final guardedValue = healthChecks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRoute53HealthChecksHealthCheck, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'planArn': ?planArn,
      'region': ?region,
    };
  }

  factory GetRoute53HealthChecksResult.fromMap(Map<String, dynamic> map) {
    return GetRoute53HealthChecksResult(
      healthChecks: (() { final guardedValue = map['healthChecks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRoute53HealthChecksHealthCheck>(guardedValue, (value) => GetRoute53HealthChecksHealthCheck.fromMap((value as Map).cast<String, dynamic>())); })(),
      planArn: (() { final guardedValue = map['planArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
