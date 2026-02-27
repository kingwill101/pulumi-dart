// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHttpHealthCheck.
class GetHttpHealthCheckComputeBetaArgs {
  final pulumi.Input<String> httpHealthCheck;
  final pulumi.Input<String>? project;

  GetHttpHealthCheckComputeBetaArgs({
    required this.httpHealthCheck,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpHealthCheck'] = httpHealthCheck;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetHttpHealthCheckComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetHttpHealthCheckComputeBetaArgs(
      httpHealthCheck: pulumi.Input.asInput<String>(map['httpHealthCheck']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
