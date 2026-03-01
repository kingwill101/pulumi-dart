// ignore_for_file: unused_element, unnecessary_cast

import 'aml_token_compute_identity.dart';

/// Monitor serverless spark compute definition.
class MonitorServerlessSparkCompute {
  /// [Required] The identity scheme leveraged to by the spark jobs running on serverless Spark.
  final AmlTokenComputeIdentity computeIdentity;
  /// Monitor compute type enum.
  /// Expected value is 'ServerlessSpark'.
  final String computeType;
  /// [Required] The instance type running the Spark job.
  final String instanceType;
  /// [Required] The Spark runtime version.
  final String runtimeVersion;

  /// Creates a new [MonitorServerlessSparkCompute].
  /// [computeIdentity] [Required] The identity scheme leveraged to by the spark jobs running on serverless Spark.
  /// [computeType] Monitor compute type enum.
  /// [instanceType] [Required] The instance type running the Spark job.
  /// [runtimeVersion] [Required] The Spark runtime version.
  MonitorServerlessSparkCompute({
    required this.computeIdentity,
    required this.computeType,
    required this.instanceType,
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeIdentity': computeIdentity.toMap(),
      'computeType': computeType,
      'instanceType': instanceType,
      'runtimeVersion': runtimeVersion,
    };
  }

  factory MonitorServerlessSparkCompute.fromMap(Map<String, dynamic> map) {
    return MonitorServerlessSparkCompute(
      computeIdentity: AmlTokenComputeIdentity.fromMap((map['computeIdentity'] as Map).cast<String, dynamic>()),
      computeType: map['computeType'] as String,
      instanceType: map['instanceType'] as String,
      runtimeVersion: map['runtimeVersion'] as String,
    );
  }
}

