// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_token_compute_identity_response.dart';

/// Monitor serverless spark compute definition.
class MonitorServerlessSparkComputeResponse {
  /// [Required] The identity scheme leveraged to by the spark jobs running on serverless Spark.
  final pulumi.Input<AmlTokenComputeIdentityResponse> computeIdentity;
  /// Monitor compute type enum.
  /// Expected value is 'ServerlessSpark'.
  final pulumi.Input<String> computeType;
  /// [Required] The instance type running the Spark job.
  final pulumi.Input<String> instanceType;
  /// [Required] The Spark runtime version.
  final pulumi.Input<String> runtimeVersion;

  /// Creates a new [MonitorServerlessSparkComputeResponse].
  /// [computeIdentity] [Required] The identity scheme leveraged to by the spark jobs running on serverless Spark.
  /// [computeType] Monitor compute type enum.
  /// [instanceType] [Required] The instance type running the Spark job.
  /// [runtimeVersion] [Required] The Spark runtime version.
  MonitorServerlessSparkComputeResponse({
    required this.computeIdentity,
    required this.computeType,
    required this.instanceType,
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeIdentity': pulumi.Input.mapInputValue<AmlTokenComputeIdentityResponse, Map<String, dynamic>>(computeIdentity, (value) => value.toMap()),
      'computeType': computeType,
      'instanceType': instanceType,
      'runtimeVersion': runtimeVersion,
    };
  }

  factory MonitorServerlessSparkComputeResponse.fromMap(Map<String, dynamic> map) {
    return MonitorServerlessSparkComputeResponse(
      computeIdentity: (AmlTokenComputeIdentityResponse.fromMap((map['computeIdentity'] as Map).cast<String, dynamic>())).input(),
      computeType: (map['computeType'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      runtimeVersion: (map['runtimeVersion'] as String).input(),
    );
  }
}

