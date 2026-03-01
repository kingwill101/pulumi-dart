// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_health_check_compute_beta_args_doc}
/// Arguments for getRegionHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_health_check_compute_beta_args_doc}
class GetRegionHealthCheckComputeBetaArgs {
  final pulumi.Input<String> healthCheck;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionHealthCheckComputeBetaArgs].
  /// [healthCheck] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionHealthCheckComputeBetaArgs({
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

  factory GetRegionHealthCheckComputeBetaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionHealthCheckComputeBetaArgs(
      healthCheck: map['healthCheck'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
