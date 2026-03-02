// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MaxCountRule
class MaxCountRuleResponse {
  /// Set to true to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.
  final pulumi.Input<bool>? deleteSourceFromS3;
  /// Specify true to apply the rule, or false to disable it.
  final pulumi.Input<bool>? enabled;
  /// Specify the maximum number of application versions to retain.
  final pulumi.Input<int>? maxCount;

  /// Creates a new [MaxCountRuleResponse].
  /// [deleteSourceFromS3] Set to true to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.
  /// [enabled] Specify true to apply the rule, or false to disable it.
  /// [maxCount] Specify the maximum number of application versions to retain.
  MaxCountRuleResponse({
    this.deleteSourceFromS3,
    this.enabled,
    this.maxCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteSourceFromS3': ?deleteSourceFromS3,
      'enabled': ?enabled,
      'maxCount': ?maxCount,
    };
  }

  factory MaxCountRuleResponse.fromMap(Map<String, dynamic> map) {
    return MaxCountRuleResponse(
      deleteSourceFromS3: map['deleteSourceFromS3'] == null ? null : (map['deleteSourceFromS3'] as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      maxCount: map['maxCount'] == null ? null : (map['maxCount'] as int).input(),
    );
  }
}

