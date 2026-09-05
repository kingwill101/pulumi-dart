// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataLakeConfigurationLifecycleConfigurationExpiration {
  /// Number of days before data transition to a different S3 Storage Class in the Amazon Security Lake object.
  final pulumi.Input<int?>? days;

  /// Creates a new [DataLakeConfigurationLifecycleConfigurationExpiration].
  /// [days] Number of days before data transition to a different S3 Storage Class in the Amazon Security Lake object.
  const DataLakeConfigurationLifecycleConfigurationExpiration({
    this.days,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
    };
  }

  factory DataLakeConfigurationLifecycleConfigurationExpiration.fromMap(Map<String, dynamic> map) {
    return DataLakeConfigurationLifecycleConfigurationExpiration(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
