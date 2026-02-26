// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getHttpHealthCheck.
class GetHttpHealthCheckArgs3 {
  final Input<String> httpHealthCheck;
  final Input<String>? project;

  GetHttpHealthCheckArgs3({
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

  factory GetHttpHealthCheckArgs3.fromMap(Map<String, dynamic> map) {
    return GetHttpHealthCheckArgs3(
      httpHealthCheck: Input.asInput<String>(map['httpHealthCheck']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
