// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_usage_limit_usage_limit_args_doc}
/// The set of arguments for UsageLimit.
/// {@endtemplate}
/// {@macro pulumi_redshift_usage_limit_usage_limit_args_doc}
class UsageLimitArgs {
  /// The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB). The value must be a positive number.
  final pulumi.Input<int> amount;
  /// The action that Amazon Redshift takes when the limit is reached. The default is `log`. Valid values are `log`, `emit-metric`, and `disable`.
  final pulumi.Input<String>? breachAction;
  /// The identifier of the cluster that you want to limit usage.
  final pulumi.Input<String> clusterIdentifier;
  /// The Amazon Redshift feature that you want to limit. Valid values are `spectrum`, `concurrency-scaling`, and `cross-region-datasharing`.
  final pulumi.Input<String> featureType;
  /// The type of limit. Depending on the feature type, this can be based on a time duration or data size. If FeatureType is `spectrum`, then LimitType must be `data-scanned`. If FeatureType is `concurrency-scaling`, then LimitType must be `time`. If FeatureType is `cross-region-datasharing`, then LimitType must be `data-scanned`. Valid values are `data-scanned`, and `time`.
  final pulumi.Input<String> limitType;
  /// The time period that the amount applies to. A weekly period begins on Sunday. The default is `monthly`. Valid values are `daily`, `weekly`, and `monthly`.
  final pulumi.Input<String>? period;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [UsageLimitArgs].
  /// [amount] The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB). The value must be a positive number.
  /// [breachAction] The action that Amazon Redshift takes when the limit is reached. The default is `log`. Valid values are `log`, `emit-metric`, and `disable`.
  /// [clusterIdentifier] The identifier of the cluster that you want to limit usage.
  /// [featureType] The Amazon Redshift feature that you want to limit. Valid values are `spectrum`, `concurrency-scaling`, and `cross-region-datasharing`.
  /// [limitType] The type of limit. Depending on the feature type, this can be based on a time duration or data size. If FeatureType is `spectrum`, then LimitType must be `data-scanned`. If FeatureType is `concurrency-scaling`, then LimitType must be `time`. If FeatureType is `cross-region-datasharing`, then LimitType must be `data-scanned`. Valid values are `data-scanned`, and `time`.
  /// [period] The time period that the amount applies to. A weekly period begins on Sunday. The default is `monthly`. Valid values are `daily`, `weekly`, and `monthly`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  UsageLimitArgs({
    required this.amount,
    this.breachAction,
    required this.clusterIdentifier,
    required this.featureType,
    required this.limitType,
    this.period,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'breachAction': ?breachAction,
      'clusterIdentifier': clusterIdentifier,
      'featureType': featureType,
      'limitType': limitType,
      'period': ?period,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory UsageLimitArgs.fromMap(Map<String, dynamic> map) {
    return UsageLimitArgs(
      amount: (map['amount'] as int).input(),
      breachAction: map['breachAction'] == null ? null : ((map['breachAction'] as String).input()).input(),
      clusterIdentifier: (map['clusterIdentifier'] as String).input(),
      featureType: (map['featureType'] as String).input(),
      limitType: (map['limitType'] as String).input(),
      period: map['period'] == null ? null : ((map['period'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

