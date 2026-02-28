// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_http_health_check_compute_v1_args_doc}
/// Arguments for getHttpHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_http_health_check_compute_v1_args_doc}
class GetHttpHealthCheckComputeV1Args {
  final pulumi.Input<String> httpHealthCheck;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHttpHealthCheckComputeV1Args].
  /// [httpHealthCheck] Required.
  /// [project] Optional.
  GetHttpHealthCheckComputeV1Args({
    required String httpHealthCheck,
    String? project,
  })  : httpHealthCheck = pulumi.Input.asInput<String>(httpHealthCheck),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpHealthCheck'] = httpHealthCheck;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetHttpHealthCheckComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetHttpHealthCheckComputeV1Args(
      httpHealthCheck: map['httpHealthCheck'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
