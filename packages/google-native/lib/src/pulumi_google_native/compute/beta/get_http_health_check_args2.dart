// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getHttpHealthCheck.
class GetHttpHealthCheckArgs2 {
  final Input<String> httpHealthCheck;
  final Input<String>? project;

  GetHttpHealthCheckArgs2({
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

  factory GetHttpHealthCheckArgs2.fromMap(Map<String, dynamic> map) {
    return GetHttpHealthCheckArgs2(
      httpHealthCheck: Input.asInput<String>(map['httpHealthCheck']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
