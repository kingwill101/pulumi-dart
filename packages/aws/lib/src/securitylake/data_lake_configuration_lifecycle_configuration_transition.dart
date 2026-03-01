// ignore_for_file: unused_element, unnecessary_cast

class DataLakeConfigurationLifecycleConfigurationTransition {
  /// Number of days before data transition to a different S3 Storage Class in the Amazon Security Lake object.
  final int? days;

  /// The range of storage classes that you can choose from based on the data access, resiliency, and cost requirements of your workloads.
  final String? storageClass;

  /// Creates a new [DataLakeConfigurationLifecycleConfigurationTransition].
  /// [days] Number of days before data transition to a different S3 Storage Class in the Amazon Security Lake object.
  /// [storageClass] The range of storage classes that you can choose from based on the data access, resiliency, and cost requirements of your workloads.
  DataLakeConfigurationLifecycleConfigurationTransition({
    this.days,
    this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'days': ?days, 'storageClass': ?storageClass};
  }

  factory DataLakeConfigurationLifecycleConfigurationTransition.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataLakeConfigurationLifecycleConfigurationTransition(
      days: map['days'] == null ? null : map['days'] as int,
      storageClass: map['storageClass'] == null
          ? null
          : map['storageClass'] as String,
    );
  }
}
