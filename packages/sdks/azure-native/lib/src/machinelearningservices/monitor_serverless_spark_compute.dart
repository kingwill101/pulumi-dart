// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Monitor serverless spark compute definition.
class MonitorServerlessSparkCompute {
  /// [Required] The identity scheme leveraged to by the spark jobs running on serverless Spark.
  final pulumi.Input<dynamic> computeIdentity;
  /// Monitor compute type enum.
  /// Expected value is 'ServerlessSpark'.
  final pulumi.Input<String> computeType;
  /// [Required] The instance type running the Spark job.
  final pulumi.Input<String> instanceType;
  /// [Required] The Spark runtime version.
  final pulumi.Input<String> runtimeVersion;

  /// Creates a new [MonitorServerlessSparkCompute].
  /// [computeIdentity] [Required] The identity scheme leveraged to by the spark jobs running on serverless Spark.
  /// [computeType] Monitor compute type enum.
  /// [instanceType] [Required] The instance type running the Spark job.
  /// [runtimeVersion] [Required] The Spark runtime version.
  const MonitorServerlessSparkCompute({
    required this.computeIdentity,
    required this.computeType,
    required this.instanceType,
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeIdentity': computeIdentity,
      'computeType': computeType,
      'instanceType': instanceType,
      'runtimeVersion': runtimeVersion,
    };
  }

  factory MonitorServerlessSparkCompute.fromMap(Map<String, dynamic> map) {
    return MonitorServerlessSparkCompute(
      computeIdentity: pulumi.Input.fromValue(map['computeIdentity']),
      computeType: pulumi.Input.fromValue(map['computeType'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
    );
  }
}
