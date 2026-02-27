// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for UsageLimit.
class UsageLimitArgs {
  /// The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB). The value must be a positive number.
  final Input<int> amount;

  /// The action that Amazon Redshift takes when the limit is reached. The default is `log`. Valid values are `log`, `emit-metric`, and `disable`.
  final Input<String>? breachAction;

  /// The identifier of the cluster that you want to limit usage.
  final Input<String> clusterIdentifier;

  /// The Amazon Redshift feature that you want to limit. Valid values are `spectrum`, `concurrency-scaling`, and `cross-region-datasharing`.
  final Input<String> featureType;

  /// The type of limit. Depending on the feature type, this can be based on a time duration or data size. If FeatureType is `spectrum`, then LimitType must be `data-scanned`. If FeatureType is `concurrency-scaling`, then LimitType must be `time`. If FeatureType is `cross-region-datasharing`, then LimitType must be `data-scanned`. Valid values are `data-scanned`, and `time`.
  final Input<String> limitType;

  /// The time period that the amount applies to. A weekly period begins on Sunday. The default is `monthly`. Valid values are `daily`, `weekly`, and `monthly`.
  final Input<String>? period;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
    final map = <String, dynamic>{};
    map['amount'] = amount;
    final breachActionValue = breachAction;
    if (breachActionValue != null) {
      map['breachAction'] = breachActionValue;
    }
    map['clusterIdentifier'] = clusterIdentifier;
    map['featureType'] = featureType;
    map['limitType'] = limitType;
    final periodValue = period;
    if (periodValue != null) {
      map['period'] = periodValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory UsageLimitArgs.fromMap(Map<String, dynamic> map) {
    return UsageLimitArgs(
      amount: Input.asInput<int>(map['amount']),
      breachAction: Input.asOptionalInput<String>(map['breachAction']),
      clusterIdentifier: Input.asInput<String>(map['clusterIdentifier']),
      featureType: Input.asInput<String>(map['featureType']),
      limitType: Input.asInput<String>(map['limitType']),
      period: Input.asOptionalInput<String>(map['period']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
