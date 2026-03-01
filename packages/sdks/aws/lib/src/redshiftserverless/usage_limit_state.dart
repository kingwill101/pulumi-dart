// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UsageLimit resources.
class UsageLimitState {
  /// The limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. If data-based, this amount is in terabytes (TB) of data transferred between Regions in cross-account sharing. The value must be a positive number.
  final pulumi.Input<int>? amount;
  /// Amazon Resource Name (ARN) of the Redshift Serverless Usage Limit.
  final pulumi.Input<String>? arn;
  /// The action that Amazon Redshift Serverless takes when the limit is reached. Valid values are `log`, `emit-metric`, and `deactivate`. The default is `log`.
  final pulumi.Input<String>? breachAction;
  /// The time period that the amount applies to. A weekly period begins on Sunday. Valid values are `daily`, `weekly`, and `monthly`. The default is `monthly`.
  final pulumi.Input<String>? period;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the Amazon Redshift Serverless resource to create the usage limit for.
  final pulumi.Input<String>? resourceArn;
  /// The type of Amazon Redshift Serverless usage to create a usage limit for. Valid values are `serverless-compute` or `cross-region-datasharing`.
  final pulumi.Input<String>? usageType;

  /// Creates a new [UsageLimitState].
  /// [amount] The limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. If data-based, this amount is in terabytes (TB) of data transferred between Regions in cross-account sharing. The value must be a positive number.
  /// [arn] Amazon Resource Name (ARN) of the Redshift Serverless Usage Limit.
  /// [breachAction] The action that Amazon Redshift Serverless takes when the limit is reached. Valid values are `log`, `emit-metric`, and `deactivate`. The default is `log`.
  /// [period] The time period that the amount applies to. A weekly period begins on Sunday. Valid values are `daily`, `weekly`, and `monthly`. The default is `monthly`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] The Amazon Resource Name (ARN) of the Amazon Redshift Serverless resource to create the usage limit for.
  /// [usageType] The type of Amazon Redshift Serverless usage to create a usage limit for. Valid values are `serverless-compute` or `cross-region-datasharing`.
  UsageLimitState({
    pulumi.Output<int>? amount,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? breachAction,
    pulumi.Output<String>? period,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? usageType,
  }) :
      amount = pulumi.Input.asOptionalInput<int>(amount),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      breachAction = pulumi.Input.asOptionalInput<String>(breachAction),
      period = pulumi.Input.asOptionalInput<String>(period),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      usageType = pulumi.Input.asOptionalInput<String>(usageType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'arn': ?arn,
      'breachAction': ?breachAction,
      'period': ?period,
      'region': ?region,
      'resourceArn': ?resourceArn,
      'usageType': ?usageType,
    };
  }

  factory UsageLimitState.fromMap(Map<String, dynamic> map) {
    return UsageLimitState(
      amount: map['amount'] == null ? null : pulumi.Output.create<int>(map['amount'] as int),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      breachAction: map['breachAction'] == null ? null : pulumi.Output.create<String>(map['breachAction'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<String>(map['period'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      usageType: map['usageType'] == null ? null : pulumi.Output.create<String>(map['usageType'] as String),
    );
  }
}

