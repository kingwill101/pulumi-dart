// ignore_for_file: unused_element, unnecessary_cast

class GetBucketLifecycleRuleCondition {
  /// Minimum age of an object in days to satisfy this condition.
  final int age;

  /// Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.
  final String createdBefore;

  /// Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.
  final String customTimeBefore;

  /// Number of days elapsed since the user-specified timestamp set on an object.
  final int daysSinceCustomTime;

  /// Number of days elapsed since the noncurrent timestamp of an object. This
  /// condition is relevant only for versioned objects.
  final int daysSinceNoncurrentTime;

  /// One or more matching name prefixes to satisfy this condition.
  final List<String> matchesPrefixes;

  /// Storage Class of objects to satisfy this condition. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, STANDARD, DURABLE_REDUCED_AVAILABILITY.
  final List<String> matchesStorageClasses;

  /// One or more matching name suffixes to satisfy this condition.
  final List<String> matchesSuffixes;

  /// Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.
  final String noncurrentTimeBefore;

  /// Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition.
  final int numNewerVersions;

  /// While set true, age value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the age field. It can be used alone or together with age.
  final bool sendAgeIfZero;

  /// While set true,<span pulumi-lang-nodejs=" daysSinceCustomTime " pulumi-lang-dotnet=" DaysSinceCustomTime " pulumi-lang-go=" daysSinceCustomTime " pulumi-lang-python=" days_since_custom_time " pulumi-lang-yaml=" daysSinceCustomTime " pulumi-lang-java=" daysSinceCustomTime "> days_since_custom_time </span>value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the<span pulumi-lang-nodejs=" daysSinceCustomTime " pulumi-lang-dotnet=" DaysSinceCustomTime " pulumi-lang-go=" daysSinceCustomTime " pulumi-lang-python=" days_since_custom_time " pulumi-lang-yaml=" daysSinceCustomTime " pulumi-lang-java=" daysSinceCustomTime "> days_since_custom_time </span>field. It can be used alone or together with days_since_custom_time.
  final bool sendDaysSinceCustomTimeIfZero;

  /// While set true,<span pulumi-lang-nodejs=" daysSinceNoncurrentTime " pulumi-lang-dotnet=" DaysSinceNoncurrentTime " pulumi-lang-go=" daysSinceNoncurrentTime " pulumi-lang-python=" days_since_noncurrent_time " pulumi-lang-yaml=" daysSinceNoncurrentTime " pulumi-lang-java=" daysSinceNoncurrentTime "> days_since_noncurrent_time </span>value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the<span pulumi-lang-nodejs=" daysSinceNoncurrentTime " pulumi-lang-dotnet=" DaysSinceNoncurrentTime " pulumi-lang-go=" daysSinceNoncurrentTime " pulumi-lang-python=" days_since_noncurrent_time " pulumi-lang-yaml=" daysSinceNoncurrentTime " pulumi-lang-java=" daysSinceNoncurrentTime "> days_since_noncurrent_time </span>field. It can be used alone or together with days_since_noncurrent_time.
  final bool sendDaysSinceNoncurrentTimeIfZero;

  /// While set true,<span pulumi-lang-nodejs=" numNewerVersions " pulumi-lang-dotnet=" NumNewerVersions " pulumi-lang-go=" numNewerVersions " pulumi-lang-python=" num_newer_versions " pulumi-lang-yaml=" numNewerVersions " pulumi-lang-java=" numNewerVersions "> num_newer_versions </span>value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the<span pulumi-lang-nodejs=" numNewerVersions " pulumi-lang-dotnet=" NumNewerVersions " pulumi-lang-go=" numNewerVersions " pulumi-lang-python=" num_newer_versions " pulumi-lang-yaml=" numNewerVersions " pulumi-lang-java=" numNewerVersions "> num_newer_versions </span>field. It can be used alone or together with num_newer_versions.
  final bool sendNumNewerVersionsIfZero;

  /// Match to live and/or archived objects. Unversioned buckets have only live objects. Supported values include: "LIVE", "ARCHIVED", "ANY".
  final String withState;

  GetBucketLifecycleRuleCondition({
    required this.age,
    required this.createdBefore,
    required this.customTimeBefore,
    required this.daysSinceCustomTime,
    required this.daysSinceNoncurrentTime,
    required this.matchesPrefixes,
    required this.matchesStorageClasses,
    required this.matchesSuffixes,
    required this.noncurrentTimeBefore,
    required this.numNewerVersions,
    required this.sendAgeIfZero,
    required this.sendDaysSinceCustomTimeIfZero,
    required this.sendDaysSinceNoncurrentTimeIfZero,
    required this.sendNumNewerVersionsIfZero,
    required this.withState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['age'] = age;
    map['createdBefore'] = createdBefore;
    map['customTimeBefore'] = customTimeBefore;
    map['daysSinceCustomTime'] = daysSinceCustomTime;
    map['daysSinceNoncurrentTime'] = daysSinceNoncurrentTime;
    map['matchesPrefixes'] = matchesPrefixes;
    map['matchesStorageClasses'] = matchesStorageClasses;
    map['matchesSuffixes'] = matchesSuffixes;
    map['noncurrentTimeBefore'] = noncurrentTimeBefore;
    map['numNewerVersions'] = numNewerVersions;
    map['sendAgeIfZero'] = sendAgeIfZero;
    map['sendDaysSinceCustomTimeIfZero'] = sendDaysSinceCustomTimeIfZero;
    map['sendDaysSinceNoncurrentTimeIfZero'] =
        sendDaysSinceNoncurrentTimeIfZero;
    map['sendNumNewerVersionsIfZero'] = sendNumNewerVersionsIfZero;
    map['withState'] = withState;
    return map;
  }

  factory GetBucketLifecycleRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetBucketLifecycleRuleCondition(
      age: map['age'] as int,
      createdBefore: map['createdBefore'] as String,
      customTimeBefore: map['customTimeBefore'] as String,
      daysSinceCustomTime: map['daysSinceCustomTime'] as int,
      daysSinceNoncurrentTime: map['daysSinceNoncurrentTime'] as int,
      matchesPrefixes: (map['matchesPrefixes'] as List).cast<String>(),
      matchesStorageClasses:
          (map['matchesStorageClasses'] as List).cast<String>(),
      matchesSuffixes: (map['matchesSuffixes'] as List).cast<String>(),
      noncurrentTimeBefore: map['noncurrentTimeBefore'] as String,
      numNewerVersions: map['numNewerVersions'] as int,
      sendAgeIfZero: map['sendAgeIfZero'] as bool,
      sendDaysSinceCustomTimeIfZero:
          map['sendDaysSinceCustomTimeIfZero'] as bool,
      sendDaysSinceNoncurrentTimeIfZero:
          map['sendDaysSinceNoncurrentTimeIfZero'] as bool,
      sendNumNewerVersionsIfZero: map['sendNumNewerVersionsIfZero'] as bool,
      withState: map['withState'] as String,
    );
  }
}
