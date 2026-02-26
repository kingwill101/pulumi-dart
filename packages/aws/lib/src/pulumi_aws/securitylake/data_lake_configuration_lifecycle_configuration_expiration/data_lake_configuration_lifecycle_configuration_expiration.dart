// ignore_for_file: unused_element, unnecessary_cast

class DataLakeConfigurationLifecycleConfigurationExpiration {
  /// Number of days before data transition to a different S3 Storage Class in the Amazon Security Lake object.
  final int? days;

  DataLakeConfigurationLifecycleConfigurationExpiration({
    this.days,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final daysValue = days;
    if (daysValue != null) {
      map['days'] = daysValue;
    }
    return map;
  }

  factory DataLakeConfigurationLifecycleConfigurationExpiration.fromMap(
      Map<String, dynamic> map) {
    return DataLakeConfigurationLifecycleConfigurationExpiration(
      days: map['days'] == null ? null : map['days'] as int,
    );
  }
}
