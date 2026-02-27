// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionHealthCheckService.
class GetRegionHealthCheckServiceComputeBetaArgs {
  final pulumi.Input<String> healthCheckService;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetRegionHealthCheckServiceComputeBetaArgs({
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

  factory GetRegionHealthCheckServiceComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetRegionHealthCheckServiceComputeBetaArgs(
      healthCheckService:
          pulumi.Input.asInput<String>(map['healthCheckService']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
