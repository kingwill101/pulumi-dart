// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataLakeConfigurationLifecycleConfigurationTransition {
  /// Number of days before data transition to a different S3 Storage Class in the Amazon Security Lake object.
  final pulumi.Input<int>? days;
  /// The range of storage classes that you can choose from based on the data access, resiliency, and cost requirements of your workloads.
  final pulumi.Input<String>? storageClass;

  /// Creates a new [DataLakeConfigurationLifecycleConfigurationTransition].
  /// [days] Number of days before data transition to a different S3 Storage Class in the Amazon Security Lake object.
  /// [storageClass] The range of storage classes that you can choose from based on the data access, resiliency, and cost requirements of your workloads.
  DataLakeConfigurationLifecycleConfigurationTransition({
    this.days,
    this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'storageClass': ?storageClass,
    };
  }

  factory DataLakeConfigurationLifecycleConfigurationTransition.fromMap(Map<String, dynamic> map) {
    return DataLakeConfigurationLifecycleConfigurationTransition(
      days: map['days'] == null ? null : ((map['days'] as int).input()).input(),
      storageClass: map['storageClass'] == null ? null : ((map['storageClass'] as String).input()).input(),
    );
  }
}

