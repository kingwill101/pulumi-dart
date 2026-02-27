// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHttpsHealthCheck.
class GetHttpsHealthCheckComputeV1Args {
  final pulumi.Input<String> httpsHealthCheck;
  final pulumi.Input<String>? project;

  GetHttpsHealthCheckComputeV1Args({
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

  factory GetHttpsHealthCheckComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetHttpsHealthCheckComputeV1Args(
      httpsHealthCheck: pulumi.Input.asInput<String>(map['httpsHealthCheck']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
