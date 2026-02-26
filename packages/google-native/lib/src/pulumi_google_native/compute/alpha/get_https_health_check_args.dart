// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getHttpsHealthCheck.
class GetHttpsHealthCheckArgs {
  final Input<String> httpsHealthCheck;
  final Input<String>? project;

  GetHttpsHealthCheckArgs({
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

  factory GetHttpsHealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return GetHttpsHealthCheckArgs(
      httpsHealthCheck: Input.asInput<String>(map['httpsHealthCheck']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
