// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route53_health_checks_health_check.dart';

/// Result data returned by getRoute53HealthChecks.
class GetRoute53HealthChecksResult {
  /// List of Route53 health checks associated with the plan. Each health check contains:
  final List<GetRoute53HealthChecksHealthCheck> healthChecks;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String planArn;

  /// Region for the health check.
  final String region;

  /// Creates a new [GetRoute53HealthChecksResult].
  /// [healthChecks] List of Route53 health checks associated with the plan. Each health check contains:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [planArn] Required.
  /// [region] Region for the health check.
  GetRoute53HealthChecksResult({
    required this.healthChecks,
    required this.id,
    required this.planArn,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthChecks':
          pulumi.Input.encodeList<
            GetRoute53HealthChecksHealthCheck,
            Map<String, dynamic>
          >(healthChecks, (value) => value.toMap()),
      'id': id,
      'planArn': planArn,
      'region': region,
    };
  }

  factory GetRoute53HealthChecksResult.fromMap(Map<String, dynamic> map) {
    return GetRoute53HealthChecksResult(
      healthChecks: pulumi.Input.decodeList<GetRoute53HealthChecksHealthCheck>(
        map['healthChecks']!,
        (value) => GetRoute53HealthChecksHealthCheck.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      planArn: map['planArn'] as String,
      region: map['region'] as String,
    );
  }
}
