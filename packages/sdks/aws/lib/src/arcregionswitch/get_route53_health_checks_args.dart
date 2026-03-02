// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arcregionswitch_get_route53_health_checks_get_route53_health_checks_args_doc}
/// Arguments for getRoute53HealthChecks.
/// {@endtemplate}
/// {@macro pulumi_arcregionswitch_get_route53_health_checks_get_route53_health_checks_args_doc}
class GetRoute53HealthChecksArgs {
  /// ARN of the ARC Region Switch Plan.
  final pulumi.Input<String> planArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetRoute53HealthChecksArgs].
  /// [planArn] ARN of the ARC Region Switch Plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetRoute53HealthChecksArgs({
    required this.planArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'planArn': planArn,
      'region': ?region,
    };
  }

  factory GetRoute53HealthChecksArgs.fromMap(Map<String, dynamic> map) {
    return GetRoute53HealthChecksArgs(
      planArn: (map['planArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

