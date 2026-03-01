// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UsageLimit resources.
class UsageLimitState {
  /// The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB). The value must be a positive number.
  final pulumi.Input<int>? amount;
  /// Amazon Resource Name (ARN) of the Redshift Usage Limit.
  final pulumi.Input<String>? arn;
  /// The action that Amazon Redshift takes when the limit is reached. The default is `log`. Valid values are `log`, `emit-metric`, and `disable`.
  final pulumi.Input<String>? breachAction;
  /// The identifier of the cluster that you want to limit usage.
  final pulumi.Input<String>? clusterIdentifier;
  /// The Amazon Redshift feature that you want to limit. Valid values are `spectrum`, `concurrency-scaling`, and `cross-region-datasharing`.
  final pulumi.Input<String>? featureType;
  /// The type of limit. Depending on the feature type, this can be based on a time duration or data size. If FeatureType is `spectrum`, then LimitType must be `data-scanned`. If FeatureType is `concurrency-scaling`, then LimitType must be `time`. If FeatureType is `cross-region-datasharing`, then LimitType must be `data-scanned`. Valid values are `data-scanned`, and `time`.
  final pulumi.Input<String>? limitType;
  /// The time period that the amount applies to. A weekly period begins on Sunday. The default is `monthly`. Valid values are `daily`, `weekly`, and `monthly`.
  final pulumi.Input<String>? period;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [UsageLimitState].
  /// [amount] The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB). The value must be a positive number.
  /// [arn] Amazon Resource Name (ARN) of the Redshift Usage Limit.
  /// [breachAction] The action that Amazon Redshift takes when the limit is reached. The default is `log`. Valid values are `log`, `emit-metric`, and `disable`.
  /// [clusterIdentifier] The identifier of the cluster that you want to limit usage.
  /// [featureType] The Amazon Redshift feature that you want to limit. Valid values are `spectrum`, `concurrency-scaling`, and `cross-region-datasharing`.
  /// [limitType] The type of limit. Depending on the feature type, this can be based on a time duration or data size. If FeatureType is `spectrum`, then LimitType must be `data-scanned`. If FeatureType is `concurrency-scaling`, then LimitType must be `time`. If FeatureType is `cross-region-datasharing`, then LimitType must be `data-scanned`. Valid values are `data-scanned`, and `time`.
  /// [period] The time period that the amount applies to. A weekly period begins on Sunday. The default is `monthly`. Valid values are `daily`, `weekly`, and `monthly`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  UsageLimitState({
    pulumi.Output<int>? amount,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? breachAction,
    pulumi.Output<String>? clusterIdentifier,
    pulumi.Output<String>? featureType,
    pulumi.Output<String>? limitType,
    pulumi.Output<String>? period,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      amount = pulumi.Input.asOptionalInput<int>(amount),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      breachAction = pulumi.Input.asOptionalInput<String>(breachAction),
      clusterIdentifier = pulumi.Input.asOptionalInput<String>(clusterIdentifier),
      featureType = pulumi.Input.asOptionalInput<String>(featureType),
      limitType = pulumi.Input.asOptionalInput<String>(limitType),
      period = pulumi.Input.asOptionalInput<String>(period),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'arn': ?arn,
      'breachAction': ?breachAction,
      'clusterIdentifier': ?clusterIdentifier,
      'featureType': ?featureType,
      'limitType': ?limitType,
      'period': ?period,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory UsageLimitState.fromMap(Map<String, dynamic> map) {
    return UsageLimitState(
      amount: map['amount'] == null ? null : pulumi.Output.create<int>(map['amount'] as int),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      breachAction: map['breachAction'] == null ? null : pulumi.Output.create<String>(map['breachAction'] as String),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      featureType: map['featureType'] == null ? null : pulumi.Output.create<String>(map['featureType'] as String),
      limitType: map['limitType'] == null ? null : pulumi.Output.create<String>(map['limitType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<String>(map['period'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

