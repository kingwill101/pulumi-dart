// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRoute53HealthChecks.
class GetRoute53HealthChecksArgs {
  /// ARN of the ARC Region Switch Plan.
  final Input<String> planArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetRoute53HealthChecksArgs({
    required this.planArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['planArn'] = planArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetRoute53HealthChecksArgs.fromMap(Map<String, dynamic> map) {
    return GetRoute53HealthChecksArgs(
      planArn: Input.asInput<String>(map['planArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
