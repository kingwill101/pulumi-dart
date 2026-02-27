// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionHealthCheckService.
class GetRegionHealthCheckServiceComputeV1Args {
  final pulumi.Input<String> healthCheckService;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetRegionHealthCheckServiceComputeV1Args({
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

  factory GetRegionHealthCheckServiceComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetRegionHealthCheckServiceComputeV1Args(
      healthCheckService:
          pulumi.Input.asInput<String>(map['healthCheckService']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
