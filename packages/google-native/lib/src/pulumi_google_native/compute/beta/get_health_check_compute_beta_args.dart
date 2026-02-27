// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHealthCheck.
class GetHealthCheckComputeBetaArgs {
  final pulumi.Input<String> healthCheck;
  final pulumi.Input<String>? project;

  GetHealthCheckComputeBetaArgs({
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

  factory GetHealthCheckComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckComputeBetaArgs(
      healthCheck: pulumi.Input.asInput<String>(map['healthCheck']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
