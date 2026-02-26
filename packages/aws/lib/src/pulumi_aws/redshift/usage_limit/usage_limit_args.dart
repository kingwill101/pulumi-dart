// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for UsageLimit.
class UsageLimitArgs {
  /// The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB). The value must be a positive number.
  final Input<int> amount;

  /// The action that Amazon Redshift takes when the limit is reached. The default is <span pulumi-lang-nodejs="`log`" pulumi-lang-dotnet="`Log`" pulumi-lang-go="`log`" pulumi-lang-python="`log`" pulumi-lang-yaml="`log`" pulumi-lang-java="`log`">`log`</span>. Valid values are <span pulumi-lang-nodejs="`log`" pulumi-lang-dotnet="`Log`" pulumi-lang-go="`log`" pulumi-lang-python="`log`" pulumi-lang-yaml="`log`" pulumi-lang-java="`log`">`log`</span>, `emit-metric`, and <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  final Input<String>? breachAction;

  /// The identifier of the cluster that you want to limit usage.
  final Input<String> clusterIdentifier;

  /// The Amazon Redshift feature that you want to limit. Valid values are <span pulumi-lang-nodejs="`spectrum`" pulumi-lang-dotnet="`Spectrum`" pulumi-lang-go="`spectrum`" pulumi-lang-python="`spectrum`" pulumi-lang-yaml="`spectrum`" pulumi-lang-java="`spectrum`">`spectrum`</span>, `concurrency-scaling`, and `cross-region-datasharing`.
  final Input<String> featureType;

  /// The type of limit. Depending on the feature type, this can be based on a time duration or data size. If FeatureType is <span pulumi-lang-nodejs="`spectrum`" pulumi-lang-dotnet="`Spectrum`" pulumi-lang-go="`spectrum`" pulumi-lang-python="`spectrum`" pulumi-lang-yaml="`spectrum`" pulumi-lang-java="`spectrum`">`spectrum`</span>, then LimitType must be `data-scanned`. If FeatureType is `concurrency-scaling`, then LimitType must be <span pulumi-lang-nodejs="`time`" pulumi-lang-dotnet="`Time`" pulumi-lang-go="`time`" pulumi-lang-python="`time`" pulumi-lang-yaml="`time`" pulumi-lang-java="`time`">`time`</span>. If FeatureType is `cross-region-datasharing`, then LimitType must be `data-scanned`. Valid values are `data-scanned`, and <span pulumi-lang-nodejs="`time`" pulumi-lang-dotnet="`Time`" pulumi-lang-go="`time`" pulumi-lang-python="`time`" pulumi-lang-yaml="`time`" pulumi-lang-java="`time`">`time`</span>.
  final Input<String> limitType;

  /// The time period that the amount applies to. A weekly period begins on Sunday. The default is <span pulumi-lang-nodejs="`monthly`" pulumi-lang-dotnet="`Monthly`" pulumi-lang-go="`monthly`" pulumi-lang-python="`monthly`" pulumi-lang-yaml="`monthly`" pulumi-lang-java="`monthly`">`monthly`</span>. Valid values are <span pulumi-lang-nodejs="`daily`" pulumi-lang-dotnet="`Daily`" pulumi-lang-go="`daily`" pulumi-lang-python="`daily`" pulumi-lang-yaml="`daily`" pulumi-lang-java="`daily`">`daily`</span>, <span pulumi-lang-nodejs="`weekly`" pulumi-lang-dotnet="`Weekly`" pulumi-lang-go="`weekly`" pulumi-lang-python="`weekly`" pulumi-lang-yaml="`weekly`" pulumi-lang-java="`weekly`">`weekly`</span>, and <span pulumi-lang-nodejs="`monthly`" pulumi-lang-dotnet="`Monthly`" pulumi-lang-go="`monthly`" pulumi-lang-python="`monthly`" pulumi-lang-yaml="`monthly`" pulumi-lang-java="`monthly`">`monthly`</span>.
  final Input<String>? period;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
