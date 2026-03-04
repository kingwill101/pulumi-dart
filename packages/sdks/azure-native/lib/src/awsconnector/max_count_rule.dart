// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MaxCountRule
class MaxCountRule {
  /// Set to true to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.
  final pulumi.Input<bool>? deleteSourceFromS3;

  /// Specify true to apply the rule, or false to disable it.
  final pulumi.Input<bool>? enabled;

  /// Specify the maximum number of application versions to retain.
  final pulumi.Input<int>? maxCount;

  /// Creates a new [MaxCountRule].
  /// [deleteSourceFromS3] Set to true to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.
  /// [enabled] Specify true to apply the rule, or false to disable it.
  /// [maxCount] Specify the maximum number of application versions to retain.
  MaxCountRule({this.deleteSourceFromS3, this.enabled, this.maxCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteSourceFromS3': ?deleteSourceFromS3,
      'enabled': ?enabled,
      'maxCount': ?maxCount,
    };
  }

  factory MaxCountRule.fromMap(Map<String, dynamic> map) {
    return MaxCountRule(
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
      maxCount: (() {
        final guardedValue = map['maxCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
