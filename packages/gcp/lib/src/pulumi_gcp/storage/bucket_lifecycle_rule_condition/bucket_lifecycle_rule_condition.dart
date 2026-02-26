// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleRuleCondition {
  /// Minimum age of an object in days to satisfy this condition. **Note** To set <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> value of <span pulumi-lang-nodejs="`age`" pulumi-lang-dotnet="`Age`" pulumi-lang-go="`age`" pulumi-lang-python="`age`" pulumi-lang-yaml="`age`" pulumi-lang-java="`age`">`age`</span>, <span pulumi-lang-nodejs="`sendAgeIfZero`" pulumi-lang-dotnet="`SendAgeIfZero`" pulumi-lang-go="`sendAgeIfZero`" pulumi-lang-python="`send_age_if_zero`" pulumi-lang-yaml="`sendAgeIfZero`" pulumi-lang-java="`sendAgeIfZero`">`send_age_if_zero`</span> should be set <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> otherwise <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> value of <span pulumi-lang-nodejs="`age`" pulumi-lang-dotnet="`Age`" pulumi-lang-go="`age`" pulumi-lang-python="`age`" pulumi-lang-yaml="`age`" pulumi-lang-java="`age`">`age`</span> field will be ignored.
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

  /// While set true, <span pulumi-lang-nodejs="`age`" pulumi-lang-dotnet="`Age`" pulumi-lang-go="`age`" pulumi-lang-python="`age`" pulumi-lang-yaml="`age`" pulumi-lang-java="`age`">`age`</span> value will be sent in the request even for zero value of the field. This field is only useful and required for setting 0 value to the <span pulumi-lang-nodejs="`age`" pulumi-lang-dotnet="`Age`" pulumi-lang-go="`age`" pulumi-lang-python="`age`" pulumi-lang-yaml="`age`" pulumi-lang-java="`age`">`age`</span> field. It can be used alone or together with <span pulumi-lang-nodejs="`age`" pulumi-lang-dotnet="`Age`" pulumi-lang-go="`age`" pulumi-lang-python="`age`" pulumi-lang-yaml="`age`" pulumi-lang-java="`age`">`age`</span> attribute. **NOTE** <span pulumi-lang-nodejs="`age`" pulumi-lang-dotnet="`Age`" pulumi-lang-go="`age`" pulumi-lang-python="`age`" pulumi-lang-yaml="`age`" pulumi-lang-java="`age`">`age`</span> attibute with <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> value will be ommitted from the API request if <span pulumi-lang-nodejs="`sendAgeIfZero`" pulumi-lang-dotnet="`SendAgeIfZero`" pulumi-lang-go="`sendAgeIfZero`" pulumi-lang-python="`send_age_if_zero`" pulumi-lang-yaml="`sendAgeIfZero`" pulumi-lang-java="`sendAgeIfZero`">`send_age_if_zero`</span> field is having <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> value.
  final bool? sendAgeIfZero;

  /// While set true, <span pulumi-lang-nodejs="`daysSinceCustomTime`" pulumi-lang-dotnet="`DaysSinceCustomTime`" pulumi-lang-go="`daysSinceCustomTime`" pulumi-lang-python="`days_since_custom_time`" pulumi-lang-yaml="`daysSinceCustomTime`" pulumi-lang-java="`daysSinceCustomTime`">`days_since_custom_time`</span> value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the <span pulumi-lang-nodejs="`daysSinceCustomTime`" pulumi-lang-dotnet="`DaysSinceCustomTime`" pulumi-lang-go="`daysSinceCustomTime`" pulumi-lang-python="`days_since_custom_time`" pulumi-lang-yaml="`daysSinceCustomTime`" pulumi-lang-java="`daysSinceCustomTime`">`days_since_custom_time`</span> field. It can be used alone or together with <span pulumi-lang-nodejs="`daysSinceCustomTime`" pulumi-lang-dotnet="`DaysSinceCustomTime`" pulumi-lang-go="`daysSinceCustomTime`" pulumi-lang-python="`days_since_custom_time`" pulumi-lang-yaml="`daysSinceCustomTime`" pulumi-lang-java="`daysSinceCustomTime`">`days_since_custom_time`</span>.
  final bool? sendDaysSinceCustomTimeIfZero;

  /// While set true, <span pulumi-lang-nodejs="`daysSinceNoncurrentTime`" pulumi-lang-dotnet="`DaysSinceNoncurrentTime`" pulumi-lang-go="`daysSinceNoncurrentTime`" pulumi-lang-python="`days_since_noncurrent_time`" pulumi-lang-yaml="`daysSinceNoncurrentTime`" pulumi-lang-java="`daysSinceNoncurrentTime`">`days_since_noncurrent_time`</span> value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the <span pulumi-lang-nodejs="`daysSinceNoncurrentTime`" pulumi-lang-dotnet="`DaysSinceNoncurrentTime`" pulumi-lang-go="`daysSinceNoncurrentTime`" pulumi-lang-python="`days_since_noncurrent_time`" pulumi-lang-yaml="`daysSinceNoncurrentTime`" pulumi-lang-java="`daysSinceNoncurrentTime`">`days_since_noncurrent_time`</span> field. It can be used alone or together with <span pulumi-lang-nodejs="`daysSinceNoncurrentTime`" pulumi-lang-dotnet="`DaysSinceNoncurrentTime`" pulumi-lang-go="`daysSinceNoncurrentTime`" pulumi-lang-python="`days_since_noncurrent_time`" pulumi-lang-yaml="`daysSinceNoncurrentTime`" pulumi-lang-java="`daysSinceNoncurrentTime`">`days_since_noncurrent_time`</span>.
  final bool? sendDaysSinceNoncurrentTimeIfZero;

  /// While set true, <span pulumi-lang-nodejs="`numNewerVersions`" pulumi-lang-dotnet="`NumNewerVersions`" pulumi-lang-go="`numNewerVersions`" pulumi-lang-python="`num_newer_versions`" pulumi-lang-yaml="`numNewerVersions`" pulumi-lang-java="`numNewerVersions`">`num_newer_versions`</span> value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the <span pulumi-lang-nodejs="`numNewerVersions`" pulumi-lang-dotnet="`NumNewerVersions`" pulumi-lang-go="`numNewerVersions`" pulumi-lang-python="`num_newer_versions`" pulumi-lang-yaml="`numNewerVersions`" pulumi-lang-java="`numNewerVersions`">`num_newer_versions`</span> field. It can be used alone or together with <span pulumi-lang-nodejs="`numNewerVersions`" pulumi-lang-dotnet="`NumNewerVersions`" pulumi-lang-go="`numNewerVersions`" pulumi-lang-python="`num_newer_versions`" pulumi-lang-yaml="`numNewerVersions`" pulumi-lang-java="`numNewerVersions`">`num_newer_versions`</span>.
  final bool? sendNumNewerVersionsIfZero;

  /// Match to live and/or archived objects. Unversioned buckets have only live objects. Supported values include: `"LIVE"`, `"ARCHIVED"`, `"ANY"`.
  final String? withState;

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
    final map = <String, dynamic>{};
    final ageValue = age;
    if (ageValue != null) {
      map['age'] = ageValue;
    }
    final createdBeforeValue = createdBefore;
    if (createdBeforeValue != null) {
      map['createdBefore'] = createdBeforeValue;
    }
    final customTimeBeforeValue = customTimeBefore;
    if (customTimeBeforeValue != null) {
      map['customTimeBefore'] = customTimeBeforeValue;
    }
    final daysSinceCustomTimeValue = daysSinceCustomTime;
    if (daysSinceCustomTimeValue != null) {
      map['daysSinceCustomTime'] = daysSinceCustomTimeValue;
    }
    final daysSinceNoncurrentTimeValue = daysSinceNoncurrentTime;
    if (daysSinceNoncurrentTimeValue != null) {
      map['daysSinceNoncurrentTime'] = daysSinceNoncurrentTimeValue;
    }
    final matchesPrefixesValue = matchesPrefixes;
    if (matchesPrefixesValue != null) {
      map['matchesPrefixes'] = matchesPrefixesValue;
    }
    final matchesStorageClassesValue = matchesStorageClasses;
    if (matchesStorageClassesValue != null) {
      map['matchesStorageClasses'] = matchesStorageClassesValue;
    }
    final matchesSuffixesValue = matchesSuffixes;
    if (matchesSuffixesValue != null) {
      map['matchesSuffixes'] = matchesSuffixesValue;
    }
    final noncurrentTimeBeforeValue = noncurrentTimeBefore;
    if (noncurrentTimeBeforeValue != null) {
      map['noncurrentTimeBefore'] = noncurrentTimeBeforeValue;
    }
    final numNewerVersionsValue = numNewerVersions;
    if (numNewerVersionsValue != null) {
      map['numNewerVersions'] = numNewerVersionsValue;
    }
    final sendAgeIfZeroValue = sendAgeIfZero;
    if (sendAgeIfZeroValue != null) {
      map['sendAgeIfZero'] = sendAgeIfZeroValue;
    }
    final sendDaysSinceCustomTimeIfZeroValue = sendDaysSinceCustomTimeIfZero;
    if (sendDaysSinceCustomTimeIfZeroValue != null) {
      map['sendDaysSinceCustomTimeIfZero'] = sendDaysSinceCustomTimeIfZeroValue;
    }
    final sendDaysSinceNoncurrentTimeIfZeroValue =
        sendDaysSinceNoncurrentTimeIfZero;
    if (sendDaysSinceNoncurrentTimeIfZeroValue != null) {
      map['sendDaysSinceNoncurrentTimeIfZero'] =
          sendDaysSinceNoncurrentTimeIfZeroValue;
    }
    final sendNumNewerVersionsIfZeroValue = sendNumNewerVersionsIfZero;
    if (sendNumNewerVersionsIfZeroValue != null) {
      map['sendNumNewerVersionsIfZero'] = sendNumNewerVersionsIfZeroValue;
    }
    final withStateValue = withState;
    if (withStateValue != null) {
      map['withState'] = withStateValue;
    }
    return map;
  }

  factory BucketLifecycleRuleCondition.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleCondition(
      age: map['age'] == null ? null : map['age'] as int,
      createdBefore:
          map['createdBefore'] == null ? null : map['createdBefore'] as String,
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
      sendAgeIfZero:
          map['sendAgeIfZero'] == null ? null : map['sendAgeIfZero'] as bool,
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
