// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshiftserverless_usage_limit_usage_limit_args_doc}
/// The set of arguments for UsageLimit.
/// {@endtemplate}
/// {@macro pulumi_redshiftserverless_usage_limit_usage_limit_args_doc}
class UsageLimitArgs {
  /// The limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. If data-based, this amount is in terabytes (TB) of data transferred between Regions in cross-account sharing. The value must be a positive number.
  final pulumi.Input<int> amount;
  /// The action that Amazon Redshift Serverless takes when the limit is reached. Valid values are `log`, `emit-metric`, and `deactivate`. The default is `log`.
  final pulumi.Input<String>? breachAction;
  /// The time period that the amount applies to. A weekly period begins on Sunday. Valid values are `daily`, `weekly`, and `monthly`. The default is `monthly`.
  final pulumi.Input<String>? period;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the Amazon Redshift Serverless resource to create the usage limit for.
  final pulumi.Input<String> resourceArn;
  /// The type of Amazon Redshift Serverless usage to create a usage limit for. Valid values are `serverless-compute` or `cross-region-datasharing`.
  final pulumi.Input<String> usageType;

  /// Creates a new [UsageLimitArgs].
  /// [amount] The limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. If data-based, this amount is in terabytes (TB) of data transferred between Regions in cross-account sharing. The value must be a positive number.
  /// [breachAction] The action that Amazon Redshift Serverless takes when the limit is reached. Valid values are `log`, `emit-metric`, and `deactivate`. The default is `log`.
  /// [period] The time period that the amount applies to. A weekly period begins on Sunday. Valid values are `daily`, `weekly`, and `monthly`. The default is `monthly`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] The Amazon Resource Name (ARN) of the Amazon Redshift Serverless resource to create the usage limit for.
  /// [usageType] The type of Amazon Redshift Serverless usage to create a usage limit for. Valid values are `serverless-compute` or `cross-region-datasharing`.
  UsageLimitArgs({
    required this.amount,
    this.breachAction,
    this.period,
    this.region,
    required this.resourceArn,
    required this.usageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'breachAction': ?breachAction,
      'period': ?period,
      'region': ?region,
      'resourceArn': resourceArn,
      'usageType': usageType,
    };
  }

  factory UsageLimitArgs.fromMap(Map<String, dynamic> map) {
    return UsageLimitArgs(
      amount: (map['amount'] as int).input(),
      breachAction: map['breachAction'] == null ? null : ((map['breachAction'] as String).input()).input(),
      period: map['period'] == null ? null : ((map['period'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceArn: (map['resourceArn'] as String).input(),
      usageType: (map['usageType'] as String).input(),
    );
  }
}

