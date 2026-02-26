// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionHealthCheckService.
class GetRegionHealthCheckServiceArgs3 {
  final Input<String> healthCheckService;
  final Input<String>? project;
  final Input<String> region;

  GetRegionHealthCheckServiceArgs3({
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

  factory GetRegionHealthCheckServiceArgs3.fromMap(Map<String, dynamic> map) {
    return GetRegionHealthCheckServiceArgs3(
      healthCheckService: Input.asInput<String>(map['healthCheckService']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
