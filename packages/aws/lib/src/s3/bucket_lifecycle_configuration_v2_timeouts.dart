// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationV2Timeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? create;

  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? update;

  /// Creates a new [BucketLifecycleConfigurationV2Timeouts].
  /// [create] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  /// [update] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  BucketLifecycleConfigurationV2Timeouts({this.create, this.update});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'create': ?create, 'update': ?update};
  }

  factory BucketLifecycleConfigurationV2Timeouts.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketLifecycleConfigurationV2Timeouts(
      create: map['create'] == null ? null : map['create'] as String,
      update: map['update'] == null ? null : map['update'] as String,
    );
  }
}
