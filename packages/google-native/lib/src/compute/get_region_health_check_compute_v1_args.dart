// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_health_check_compute_v1_args_doc}
/// Arguments for getRegionHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_health_check_compute_v1_args_doc}
class GetRegionHealthCheckComputeV1Args {
  final pulumi.Input<String> healthCheck;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionHealthCheckComputeV1Args].
  /// [healthCheck] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionHealthCheckComputeV1Args({
    required String healthCheck,
    String? project,
    required String region,
  }) : healthCheck = pulumi.Input.asInput<String>(healthCheck),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheck': healthCheck,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionHealthCheckComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionHealthCheckComputeV1Args(
      healthCheck: map['healthCheck'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
