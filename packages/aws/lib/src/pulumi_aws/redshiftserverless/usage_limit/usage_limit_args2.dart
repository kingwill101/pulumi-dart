// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for UsageLimit.
class UsageLimitArgs2 {
  /// The limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. If data-based, this amount is in terabytes (TB) of data transferred between Regions in cross-account sharing. The value must be a positive number.
  final Input<int> amount;

  /// The action that Amazon Redshift Serverless takes when the limit is reached. Valid values are `log`, `emit-metric`, and `deactivate`. The default is `log`.
  final Input<String>? breachAction;

  /// The time period that the amount applies to. A weekly period begins on Sunday. Valid values are `daily`, `weekly`, and `monthly`. The default is `monthly`.
  final Input<String>? period;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of the Amazon Redshift Serverless resource to create the usage limit for.
  final Input<String> resourceArn;

  /// The type of Amazon Redshift Serverless usage to create a usage limit for. Valid values are `serverless-compute` or `cross-region-datasharing`.
  final Input<String> usageType;

  UsageLimitArgs2({
    required this.amount,
    this.breachAction,
    this.period,
    this.region,
    required this.resourceArn,
    required this.usageType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['amount'] = amount;
    final breachActionValue = breachAction;
    if (breachActionValue != null) {
      map['breachAction'] = breachActionValue;
    }
    final periodValue = period;
    if (periodValue != null) {
      map['period'] = periodValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    map['usageType'] = usageType;
    return map;
  }

  factory UsageLimitArgs2.fromMap(Map<String, dynamic> map) {
    return UsageLimitArgs2(
      amount: Input.asInput<int>(map['amount']),
      breachAction: Input.asOptionalInput<String>(map['breachAction']),
      period: Input.asOptionalInput<String>(map['period']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceArn: Input.asInput<String>(map['resourceArn']),
      usageType: Input.asInput<String>(map['usageType']),
    );
  }
}
