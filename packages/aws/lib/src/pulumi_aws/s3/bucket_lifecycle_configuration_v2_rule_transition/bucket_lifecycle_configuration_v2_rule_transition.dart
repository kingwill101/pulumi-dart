// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationV2RuleTransition {
  /// Date objects are transitioned to the specified storage class. The date value must be in [RFC3339 full-date format](https://datatracker.ietf.org/doc/html/rfc3339#section-5.6) e.g. `2023-08-22`.
  final String? date;

  /// Number of days after creation when objects are transitioned to the specified storage class. The value must be a positive integer. If both <span pulumi-lang-nodejs="`days`" pulumi-lang-dotnet="`Days`" pulumi-lang-go="`days`" pulumi-lang-python="`days`" pulumi-lang-yaml="`days`" pulumi-lang-java="`days`">`days`</span> and <span pulumi-lang-nodejs="`date`" pulumi-lang-dotnet="`Date`" pulumi-lang-go="`date`" pulumi-lang-python="`date`" pulumi-lang-yaml="`date`" pulumi-lang-java="`date`">`date`</span> are not specified, defaults to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. Valid values depend on <span pulumi-lang-nodejs="`storageClass`" pulumi-lang-dotnet="`StorageClass`" pulumi-lang-go="`storageClass`" pulumi-lang-python="`storage_class`" pulumi-lang-yaml="`storageClass`" pulumi-lang-java="`storageClass`">`storage_class`</span>, see [Transition objects using Amazon S3 Lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/userguide/lifecycle-transition-general-considerations.html) for more details.
  final int? days;

  /// Class of storage used to store the object. Valid Values: `GLACIER`, `STANDARD_IA`, `ONEZONE_IA`, `INTELLIGENT_TIERING`, `DEEP_ARCHIVE`, `GLACIER_IR`.
  final String storageClass;

  BucketLifecycleConfigurationV2RuleTransition({
    this.date,
    this.days,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dateValue = date;
    if (dateValue != null) {
      map['date'] = dateValue;
    }
    final daysValue = days;
    if (daysValue != null) {
      map['days'] = daysValue;
    }
    map['storageClass'] = storageClass;
    return map;
  }

  factory BucketLifecycleConfigurationV2RuleTransition.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationV2RuleTransition(
      date: map['date'] == null ? null : map['date'] as String,
      days: map['days'] == null ? null : map['days'] as int,
      storageClass: map['storageClass'] as String,
    );
  }
}
