// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketObjectLockConfigurationRuleDefaultRetention {
  /// Default retention period in days.
  final pulumi.Input<int> days;
  /// Default object lock retention mode. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  final pulumi.Input<String> mode;
  /// Default retention period in years.
  final pulumi.Input<int> years;

  /// Creates a new [GetBucketObjectLockConfigurationRuleDefaultRetention].
  /// [days] Default retention period in days.
  /// [mode] Default object lock retention mode. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  /// [years] Default retention period in years.
  const GetBucketObjectLockConfigurationRuleDefaultRetention({
    required this.days,
    required this.mode,
    required this.years,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': days,
      'mode': mode,
      'years': years,
    };
  }

  factory GetBucketObjectLockConfigurationRuleDefaultRetention.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectLockConfigurationRuleDefaultRetention(
      days: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['days'])),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      years: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['years'])),
    );
  }
}
