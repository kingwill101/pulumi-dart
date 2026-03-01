// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleRuleCondition {
  /// Minimum age of an object in days to satisfy this condition. **Note** To set `0` value of `age`, `send_age_if_zero` should be set `true` otherwise `0` value of `age` field will be ignored.
  final int? age;

  /// A date in the RFC 3339 format YYYY-MM-DD. This condition is satisfied when an object is created before midnight of the specified date in UTC.
  final String? createdBefore;

  /// A date in the RFC 3339 format YYYY-MM-DD. This condition is satisfied when the customTime metadata for the object is set to an earlier date than the date used in this lifecycle condition.
  final String? customTimeBefore;

  /// Number of days elapsed since the user-specified timestamp set on an object.
  final int? daysSinceCustomTime;

  /// Number of days elapsed since the noncurrent timestamp of an object. This
  /// condition is relevant only for versioned objects.
  final int? daysSinceNoncurrentTime;

  /// One or more matching name prefixes to satisfy this condition.
  final List<String>? matchesPrefixes;

  /// [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of objects to satisfy this condition. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`, `DURABLE_REDUCED_AVAILABILITY`.
  final List<String>? matchesStorageClasses;

  /// One or more matching name suffixes to satisfy this condition.
  final List<String>? matchesSuffixes;

  /// Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.
  final String? noncurrentTimeBefore;

  /// Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition.
  final int? numNewerVersions;

  /// While set true, `age` value will be sent in the request even for zero value of the field. This field is only useful and required for setting 0 value to the `age` field. It can be used alone or together with `age` attribute. **NOTE** `age` attibute with `0` value will be ommitted from the API request if `send_age_if_zero` field is having `false` value.
  final bool? sendAgeIfZero;

  /// While set true, `days_since_custom_time` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `days_since_custom_time` field. It can be used alone or together with `days_since_custom_time`.
  final bool? sendDaysSinceCustomTimeIfZero;

  /// While set true, `days_since_noncurrent_time` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `days_since_noncurrent_time` field. It can be used alone or together with `days_since_noncurrent_time`.
  final bool? sendDaysSinceNoncurrentTimeIfZero;

  /// While set true, `num_newer_versions` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `num_newer_versions` field. It can be used alone or together with `num_newer_versions`.
  final bool? sendNumNewerVersionsIfZero;

  /// Match to live and/or archived objects. Unversioned buckets have only live objects. Supported values include: `"LIVE"`, `"ARCHIVED"`, `"ANY"`.
  final String? withState;

  /// Creates a new [BucketLifecycleRuleCondition].
  /// [age] Minimum age of an object in days to satisfy this condition. **Note** To set `0` value of `age`, `send_age_if_zero` should be set `true` otherwise `0` value of `age` field will be ignored.
  /// [createdBefore] A date in the RFC 3339 format YYYY-MM-DD. This condition is satisfied when an object is created before midnight of the specified date in UTC.
  /// [customTimeBefore] A date in the RFC 3339 format YYYY-MM-DD. This condition is satisfied when the customTime metadata for the object is set to an earlier date than the date used in this lifecycle condition.
  /// [daysSinceCustomTime] Number of days elapsed since the user-specified timestamp set on an object.
  /// [daysSinceNoncurrentTime] Number of days elapsed since the noncurrent timestamp of an object. This
  /// [matchesPrefixes] One or more matching name prefixes to satisfy this condition.
  /// [matchesStorageClasses] [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of objects to satisfy this condition. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`, `DURABLE_REDUCED_AVAILABILITY`.
  /// [matchesSuffixes] One or more matching name suffixes to satisfy this condition.
  /// [noncurrentTimeBefore] Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.
  /// [numNewerVersions] Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition.
  /// [sendAgeIfZero] While set true, `age` value will be sent in the request even for zero value of the field. This field is only useful and required for setting 0 value to the `age` field. It can be used alone or together with `age` attribute. **NOTE** `age` attibute with `0` value will be ommitted from the API request if `send_age_if_zero` field is having `false` value.
  /// [sendDaysSinceCustomTimeIfZero] While set true, `days_since_custom_time` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `days_since_custom_time` field. It can be used alone or together with `days_since_custom_time`.
  /// [sendDaysSinceNoncurrentTimeIfZero] While set true, `days_since_noncurrent_time` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `days_since_noncurrent_time` field. It can be used alone or together with `days_since_noncurrent_time`.
  /// [sendNumNewerVersionsIfZero] While set true, `num_newer_versions` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `num_newer_versions` field. It can be used alone or together with `num_newer_versions`.
  /// [withState] Match to live and/or archived objects. Unversioned buckets have only live objects. Supported values include: `"LIVE"`, `"ARCHIVED"`, `"ANY"`.
  BucketLifecycleRuleCondition({
    this.age,
    this.createdBefore,
    this.customTimeBefore,
    this.daysSinceCustomTime,
    this.daysSinceNoncurrentTime,
    this.matchesPrefixes,
    this.matchesStorageClasses,
    this.matchesSuffixes,
    this.noncurrentTimeBefore,
    this.numNewerVersions,
    this.sendAgeIfZero,
    this.sendDaysSinceCustomTimeIfZero,
    this.sendDaysSinceNoncurrentTimeIfZero,
    this.sendNumNewerVersionsIfZero,
    this.withState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'age': ?age,
      'createdBefore': ?createdBefore,
      'customTimeBefore': ?customTimeBefore,
      'daysSinceCustomTime': ?daysSinceCustomTime,
      'daysSinceNoncurrentTime': ?daysSinceNoncurrentTime,
      'matchesPrefixes': ?matchesPrefixes,
      'matchesStorageClasses': ?matchesStorageClasses,
      'matchesSuffixes': ?matchesSuffixes,
      'noncurrentTimeBefore': ?noncurrentTimeBefore,
      'numNewerVersions': ?numNewerVersions,
      'sendAgeIfZero': ?sendAgeIfZero,
      'sendDaysSinceCustomTimeIfZero': ?sendDaysSinceCustomTimeIfZero,
      'sendDaysSinceNoncurrentTimeIfZero': ?sendDaysSinceNoncurrentTimeIfZero,
      'sendNumNewerVersionsIfZero': ?sendNumNewerVersionsIfZero,
      'withState': ?withState,
    };
  }

  factory BucketLifecycleRuleCondition.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleCondition(
      age: map['age'] == null ? null : map['age'] as int,
      createdBefore: map['createdBefore'] == null
          ? null
          : map['createdBefore'] as String,
      customTimeBefore: map['customTimeBefore'] == null
          ? null
          : map['customTimeBefore'] as String,
      daysSinceCustomTime: map['daysSinceCustomTime'] == null
          ? null
          : map['daysSinceCustomTime'] as int,
      daysSinceNoncurrentTime: map['daysSinceNoncurrentTime'] == null
          ? null
          : map['daysSinceNoncurrentTime'] as int,
      matchesPrefixes: map['matchesPrefixes'] == null
          ? null
          : (map['matchesPrefixes'] as List).cast<String>(),
      matchesStorageClasses: map['matchesStorageClasses'] == null
          ? null
          : (map['matchesStorageClasses'] as List).cast<String>(),
      matchesSuffixes: map['matchesSuffixes'] == null
          ? null
          : (map['matchesSuffixes'] as List).cast<String>(),
      noncurrentTimeBefore: map['noncurrentTimeBefore'] == null
          ? null
          : map['noncurrentTimeBefore'] as String,
      numNewerVersions: map['numNewerVersions'] == null
          ? null
          : map['numNewerVersions'] as int,
      sendAgeIfZero: map['sendAgeIfZero'] == null
          ? null
          : map['sendAgeIfZero'] as bool,
      sendDaysSinceCustomTimeIfZero:
          map['sendDaysSinceCustomTimeIfZero'] == null
          ? null
          : map['sendDaysSinceCustomTimeIfZero'] as bool,
      sendDaysSinceNoncurrentTimeIfZero:
          map['sendDaysSinceNoncurrentTimeIfZero'] == null
          ? null
          : map['sendDaysSinceNoncurrentTimeIfZero'] as bool,
      sendNumNewerVersionsIfZero: map['sendNumNewerVersionsIfZero'] == null
          ? null
          : map['sendNumNewerVersionsIfZero'] as bool,
      withState: map['withState'] == null ? null : map['withState'] as String,
    );
  }
}
