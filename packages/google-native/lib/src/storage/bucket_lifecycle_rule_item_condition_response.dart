// ignore_for_file: unused_element, unnecessary_cast

/// The condition(s) under which the action will be taken.
class BucketLifecycleRuleItemConditionResponse {
  /// Age of an object (in days). This condition is satisfied when an object reaches the specified age.
  final int age;

  /// A date in RFC 3339 format with only the date part (for instance, "2013-01-15"). This condition is satisfied when an object is created before midnight of the specified date in UTC.
  final String createdBefore;

  /// A date in RFC 3339 format with only the date part (for instance, "2013-01-15"). This condition is satisfied when the custom time on an object is before this date in UTC.
  final String customTimeBefore;

  /// Number of days elapsed since the user-specified timestamp set on an object. The condition is satisfied if the days elapsed is at least this number. If no custom timestamp is specified on an object, the condition does not apply.
  final int daysSinceCustomTime;

  /// Number of days elapsed since the noncurrent timestamp of an object. The condition is satisfied if the days elapsed is at least this number. This condition is relevant only for versioned objects. The value of the field must be a nonnegative integer. If it's zero, the object version will become eligible for Lifecycle action as soon as it becomes noncurrent.
  final int daysSinceNoncurrentTime;

  /// Relevant only for versioned objects. If the value is true, this condition matches live objects; if the value is false, it matches archived objects.
  final bool isLive;

  /// A regular expression that satisfies the RE2 syntax. This condition is satisfied when the name of the object matches the RE2 pattern. Note: This feature is currently in the "Early Access" launch stage and is only available to a whitelisted set of users; that means that this feature may be changed in backward-incompatible ways and that it is not guaranteed to be released.
  final String matchesPattern;

  /// List of object name prefixes. This condition will be satisfied when at least one of the prefixes exactly matches the beginning of the object name.
  final List<String> matchesPrefix;

  /// Objects having any of the storage classes specified by this condition will be matched. Values include MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, STANDARD, and DURABLE_REDUCED_AVAILABILITY.
  final List<String> matchesStorageClass;

  /// List of object name suffixes. This condition will be satisfied when at least one of the suffixes exactly matches the end of the object name.
  final List<String> matchesSuffix;

  /// A date in RFC 3339 format with only the date part (for instance, "2013-01-15"). This condition is satisfied when the noncurrent time on an object is before this date in UTC. This condition is relevant only for versioned objects.
  final String noncurrentTimeBefore;

  /// Relevant only for versioned objects. If the value is N, this condition is satisfied when there are at least N versions (including the live version) newer than this version of the object.
  final int numNewerVersions;

  /// Creates a new [BucketLifecycleRuleItemConditionResponse].
  /// [age] Age of an object (in days). This condition is satisfied when an object reaches the specified age.
  /// [createdBefore] A date in RFC 3339 format with only the date part (for instance, "2013-01-15"). This condition is satisfied when an object is created before midnight of the specified date in UTC.
  /// [customTimeBefore] A date in RFC 3339 format with only the date part (for instance, "2013-01-15"). This condition is satisfied when the custom time on an object is before this date in UTC.
  /// [daysSinceCustomTime] Number of days elapsed since the user-specified timestamp set on an object. The condition is satisfied if the days elapsed is at least this number. If no custom timestamp is specified on an object, the condition does not apply.
  /// [daysSinceNoncurrentTime] Number of days elapsed since the noncurrent timestamp of an object. The condition is satisfied if the days elapsed is at least this number. This condition is relevant only for versioned objects. The value of the field must be a nonnegative integer. If it's zero, the object version will become eligible for Lifecycle action as soon as it becomes noncurrent.
  /// [isLive] Relevant only for versioned objects. If the value is true, this condition matches live objects; if the value is false, it matches archived objects.
  /// [matchesPattern] A regular expression that satisfies the RE2 syntax. This condition is satisfied when the name of the object matches the RE2 pattern. Note: This feature is currently in the "Early Access" launch stage and is only available to a whitelisted set of users; that means that this feature may be changed in backward-incompatible ways and that it is not guaranteed to be released.
  /// [matchesPrefix] List of object name prefixes. This condition will be satisfied when at least one of the prefixes exactly matches the beginning of the object name.
  /// [matchesStorageClass] Objects having any of the storage classes specified by this condition will be matched. Values include MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, STANDARD, and DURABLE_REDUCED_AVAILABILITY.
  /// [matchesSuffix] List of object name suffixes. This condition will be satisfied when at least one of the suffixes exactly matches the end of the object name.
  /// [noncurrentTimeBefore] A date in RFC 3339 format with only the date part (for instance, "2013-01-15"). This condition is satisfied when the noncurrent time on an object is before this date in UTC. This condition is relevant only for versioned objects.
  /// [numNewerVersions] Relevant only for versioned objects. If the value is N, this condition is satisfied when there are at least N versions (including the live version) newer than this version of the object.
  BucketLifecycleRuleItemConditionResponse({
    required this.age,
    required this.createdBefore,
    required this.customTimeBefore,
    required this.daysSinceCustomTime,
    required this.daysSinceNoncurrentTime,
    required this.isLive,
    required this.matchesPattern,
    required this.matchesPrefix,
    required this.matchesStorageClass,
    required this.matchesSuffix,
    required this.noncurrentTimeBefore,
    required this.numNewerVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['age'] = age;
    map['createdBefore'] = createdBefore;
    map['customTimeBefore'] = customTimeBefore;
    map['daysSinceCustomTime'] = daysSinceCustomTime;
    map['daysSinceNoncurrentTime'] = daysSinceNoncurrentTime;
    map['isLive'] = isLive;
    map['matchesPattern'] = matchesPattern;
    map['matchesPrefix'] = matchesPrefix;
    map['matchesStorageClass'] = matchesStorageClass;
    map['matchesSuffix'] = matchesSuffix;
    map['noncurrentTimeBefore'] = noncurrentTimeBefore;
    map['numNewerVersions'] = numNewerVersions;
    return map;
  }

  factory BucketLifecycleRuleItemConditionResponse.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleRuleItemConditionResponse(
      age: map['age'] as int,
      createdBefore: map['createdBefore'] as String,
      customTimeBefore: map['customTimeBefore'] as String,
      daysSinceCustomTime: map['daysSinceCustomTime'] as int,
      daysSinceNoncurrentTime: map['daysSinceNoncurrentTime'] as int,
      isLive: map['isLive'] as bool,
      matchesPattern: map['matchesPattern'] as String,
      matchesPrefix: (map['matchesPrefix'] as List).cast<String>(),
      matchesStorageClass: (map['matchesStorageClass'] as List).cast<String>(),
      matchesSuffix: (map['matchesSuffix'] as List).cast<String>(),
      noncurrentTimeBefore: map['noncurrentTimeBefore'] as String,
      numNewerVersions: map['numNewerVersions'] as int,
    );
  }
}
