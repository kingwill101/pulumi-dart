// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MaxAgeRule
class MaxAgeRule {
  /// Set to true to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.
  final pulumi.Input<bool>? deleteSourceFromS3;
  /// Specify true to apply the rule, or false to disable it.
  final pulumi.Input<bool>? enabled;
  /// Specify the number of days to retain an application versions.
  final pulumi.Input<int>? maxAgeInDays;

  /// Creates a new [MaxAgeRule].
  /// [deleteSourceFromS3] Set to true to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.
  /// [enabled] Specify true to apply the rule, or false to disable it.
  /// [maxAgeInDays] Specify the number of days to retain an application versions.
  MaxAgeRule({
    this.deleteSourceFromS3,
    this.enabled,
    this.maxAgeInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteSourceFromS3': ?deleteSourceFromS3,
      'enabled': ?enabled,
      'maxAgeInDays': ?maxAgeInDays,
    };
  }

  factory MaxAgeRule.fromMap(Map<String, dynamic> map) {
    return MaxAgeRule(
      deleteSourceFromS3: map['deleteSourceFromS3'] == null ? null : (map['deleteSourceFromS3']! as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      maxAgeInDays: map['maxAgeInDays'] == null ? null : (map['maxAgeInDays']! as int).input(),
    );
  }
}

