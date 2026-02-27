// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionHealthCheck.
class GetRegionHealthCheckArgs2 {
  final Input<String> healthCheck;
  final Input<String>? project;
  final Input<String> region;

  GetRegionHealthCheckArgs2({
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

  factory GetRegionHealthCheckArgs2.fromMap(Map<String, dynamic> map) {
    return GetRegionHealthCheckArgs2(
      healthCheck: Input.asInput<String>(map['healthCheck']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
