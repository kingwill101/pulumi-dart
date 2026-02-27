// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHttpsHealthCheck.
class GetHttpsHealthCheckComputeBetaArgs {
  final pulumi.Input<String> httpsHealthCheck;
  final pulumi.Input<String>? project;

  GetHttpsHealthCheckComputeBetaArgs({
    required this.httpsHealthCheck,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpsHealthCheck'] = httpsHealthCheck;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetHttpsHealthCheckComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetHttpsHealthCheckComputeBetaArgs(
      httpsHealthCheck: pulumi.Input.asInput<String>(map['httpsHealthCheck']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
