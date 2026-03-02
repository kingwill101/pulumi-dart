// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketV2ObjectLockConfigurationRuleDefaultRetention {
  /// Number of days that you want to specify for the default retention period.
  final pulumi.Input<int>? days;
  /// Default Object Lock retention mode you want to apply to new objects placed in this bucket. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  final pulumi.Input<String> mode;
  /// Number of years that you want to specify for the default retention period.
  final pulumi.Input<int>? years;

  /// Creates a new [BucketV2ObjectLockConfigurationRuleDefaultRetention].
  /// [days] Number of days that you want to specify for the default retention period.
  /// [mode] Default Object Lock retention mode you want to apply to new objects placed in this bucket. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  /// [years] Number of years that you want to specify for the default retention period.
  BucketV2ObjectLockConfigurationRuleDefaultRetention({
    this.days,
    required this.mode,
    this.years,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'mode': mode,
      'years': ?years,
    };
  }

  factory BucketV2ObjectLockConfigurationRuleDefaultRetention.fromMap(Map<String, dynamic> map) {
    return BucketV2ObjectLockConfigurationRuleDefaultRetention(
      days: map['days'] == null ? null : ((map['days'] as int).input()).input(),
      mode: (map['mode'] as String).input(),
      years: map['years'] == null ? null : ((map['years'] as int).input()).input(),
    );
  }
}

