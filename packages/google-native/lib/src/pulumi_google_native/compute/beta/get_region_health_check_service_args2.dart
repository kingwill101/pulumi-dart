// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionHealthCheckService.
class GetRegionHealthCheckServiceArgs2 {
  final Input<String> healthCheckService;
  final Input<String>? project;
  final Input<String> region;

  GetRegionHealthCheckServiceArgs2({
    required this.healthCheckService,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['healthCheckService'] = healthCheckService;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionHealthCheckServiceArgs2.fromMap(Map<String, dynamic> map) {
    return GetRegionHealthCheckServiceArgs2(
      healthCheckService: Input.asInput<String>(map['healthCheckService']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
