// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_https_health_check_compute_v1_args_doc}
/// Arguments for getHttpsHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_https_health_check_compute_v1_args_doc}
class GetHttpsHealthCheckComputeV1Args {
  final pulumi.Input<String> httpsHealthCheck;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHttpsHealthCheckComputeV1Args].
  /// [httpsHealthCheck] Required.
  /// [project] Optional.
  GetHttpsHealthCheckComputeV1Args({
    required String httpsHealthCheck,
    String? project,
  }) :
      httpsHealthCheck = pulumi.Input.asInput<String>(httpsHealthCheck),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpsHealthCheck': httpsHealthCheck,
      'project': ?project,
    };
  }

  factory GetHttpsHealthCheckComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetHttpsHealthCheckComputeV1Args(
      httpsHealthCheck: map['httpsHealthCheck'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

