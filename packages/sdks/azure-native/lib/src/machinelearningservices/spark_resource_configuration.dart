// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SparkResourceConfiguration {
  /// Optional type of VM used as supported by the compute target.
  final pulumi.Input<String>? instanceType;
  /// Version of spark runtime used for the job.
  final pulumi.Input<String>? runtimeVersion;

  /// Creates a new [SparkResourceConfiguration].
  /// [instanceType] Optional type of VM used as supported by the compute target.
  /// [runtimeVersion] Version of spark runtime used for the job.
  const SparkResourceConfiguration({
    this.instanceType,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': ?instanceType,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory SparkResourceConfiguration.fromMap(Map<String, dynamic> map) {
    return SparkResourceConfiguration(
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
