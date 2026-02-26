// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getHealthCheck.
class GetHealthCheckArgs2 {
  final Input<String> healthCheck;
  final Input<String>? project;

  GetHealthCheckArgs2({
    required this.healthCheck,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['healthCheck'] = healthCheck;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetHealthCheckArgs2.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckArgs2(
      healthCheck: Input.asInput<String>(map['healthCheck']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
