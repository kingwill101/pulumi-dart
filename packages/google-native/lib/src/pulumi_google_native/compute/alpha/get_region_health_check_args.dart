// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionHealthCheck.
class GetRegionHealthCheckArgs {
  final Input<String> healthCheck;
  final Input<String>? project;
  final Input<String> region;

  GetRegionHealthCheckArgs({
    required this.healthCheck,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['healthCheck'] = healthCheck;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionHealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionHealthCheckArgs(
      healthCheck: Input.asInput<String>(map['healthCheck']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
