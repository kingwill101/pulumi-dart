// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHealthCheck.
class GetHealthCheckComputeV1Args {
  final pulumi.Input<String> healthCheck;
  final pulumi.Input<String>? project;

  GetHealthCheckComputeV1Args({
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

  factory GetHealthCheckComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckComputeV1Args(
      healthCheck: pulumi.Input.asInput<String>(map['healthCheck']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
