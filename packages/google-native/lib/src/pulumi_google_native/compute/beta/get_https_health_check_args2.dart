// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getHttpsHealthCheck.
class GetHttpsHealthCheckArgs2 {
  final Input<String> httpsHealthCheck;
  final Input<String>? project;

  GetHttpsHealthCheckArgs2({
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

  factory GetHttpsHealthCheckArgs2.fromMap(Map<String, dynamic> map) {
    return GetHttpsHealthCheckArgs2(
      httpsHealthCheck: Input.asInput<String>(map['httpsHealthCheck']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
