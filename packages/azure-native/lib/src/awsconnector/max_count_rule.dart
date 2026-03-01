// ignore_for_file: unused_element, unnecessary_cast


/// Definition of MaxCountRule
class MaxCountRule {
  /// Set to true to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.
  final bool? deleteSourceFromS3;
  /// Specify true to apply the rule, or false to disable it.
  final bool? enabled;
  /// Specify the maximum number of application versions to retain.
  final int? maxCount;

  /// Creates a new [MaxCountRule].
  /// [deleteSourceFromS3] Set to true to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.
  /// [enabled] Specify true to apply the rule, or false to disable it.
  /// [maxCount] Specify the maximum number of application versions to retain.
  MaxCountRule({
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

  factory MaxCountRule.fromMap(Map<String, dynamic> map) {
    return MaxCountRule(
      deleteSourceFromS3: map['deleteSourceFromS3'] == null ? null : map['deleteSourceFromS3'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      maxCount: map['maxCount'] == null ? null : map['maxCount'] as int,
    );
  }
}

