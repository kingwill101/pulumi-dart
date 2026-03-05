// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppJobConfig {
  /// Size of the build instance. Valid values: `STANDARD_8GB`, `LARGE_16GB`, and `XLARGE_72GB`. Default: `STANDARD_8GB`.
  final pulumi.Input<String>? buildComputeType;

  /// Creates a new [AppJobConfig].
  /// [buildComputeType] Size of the build instance. Valid values: `STANDARD_8GB`, `LARGE_16GB`, and `XLARGE_72GB`. Default: `STANDARD_8GB`.
  AppJobConfig({
    this.buildComputeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildComputeType': ?buildComputeType,
    };
  }

  factory AppJobConfig.fromMap(Map<String, dynamic> map) {
    return AppJobConfig(
      buildComputeType: (() { final guardedValue = map['buildComputeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

