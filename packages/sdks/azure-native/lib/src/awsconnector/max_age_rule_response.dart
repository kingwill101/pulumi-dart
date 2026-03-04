// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MaxAgeRule
class MaxAgeRuleResponse {
  /// Set to true to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.
  final pulumi.Input<bool>? deleteSourceFromS3;

  /// Specify true to apply the rule, or false to disable it.
  final pulumi.Input<bool>? enabled;

  /// Specify the number of days to retain an application versions.
  final pulumi.Input<int>? maxAgeInDays;

  /// Creates a new [MaxAgeRuleResponse].
  /// [deleteSourceFromS3] Set to true to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.
  /// [enabled] Specify true to apply the rule, or false to disable it.
  /// [maxAgeInDays] Specify the number of days to retain an application versions.
  MaxAgeRuleResponse({
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

  factory MaxAgeRuleResponse.fromMap(Map<String, dynamic> map) {
    return MaxAgeRuleResponse(
      deleteSourceFromS3: (() {
        final guardedValue = map['deleteSourceFromS3'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      maxAgeInDays: (() {
        final guardedValue = map['maxAgeInDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
