// ignore_for_file: unused_element, unnecessary_cast


/// Definition of MaxAgeRule
class MaxAgeRuleResponse {
  /// Set to true to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.
  final bool? deleteSourceFromS3;
  /// Specify true to apply the rule, or false to disable it.
  final bool? enabled;
  /// Specify the number of days to retain an application versions.
  final int? maxAgeInDays;

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
      deleteSourceFromS3: map['deleteSourceFromS3'] == null ? null : map['deleteSourceFromS3'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      maxAgeInDays: map['maxAgeInDays'] == null ? null : map['maxAgeInDays'] as int,
    );
  }
}

