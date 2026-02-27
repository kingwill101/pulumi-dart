// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionHealthCheck.
class GetRegionHealthCheckComputeBetaArgs {
  final pulumi.Input<String> healthCheck;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetRegionHealthCheckComputeBetaArgs({
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

  factory GetRegionHealthCheckComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetRegionHealthCheckComputeBetaArgs(
      healthCheck: pulumi.Input.asInput<String>(map['healthCheck']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
