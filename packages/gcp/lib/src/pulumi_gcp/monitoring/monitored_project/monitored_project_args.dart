// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for MonitoredProject.
class MonitoredProjectArgs {
  /// Required. The resource name of the existing Metrics Scope that will monitor this project. Example: locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}
  final pulumi.Input<String> metricsScope;

  /// Immutable. The resource name of the `MonitoredProject`. On input, the resource name includes the scoping project ID and monitored project ID. On output, it contains the equivalent project numbers. Example: `locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}/projects/{MONITORED_PROJECT_ID_OR_NUMBER}`
  final pulumi.Input<String>? name;

  MonitoredProjectArgs({
    required this.metricsScope,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metricsScope'] = metricsScope;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory MonitoredProjectArgs.fromMap(Map<String, dynamic> map) {
    return MonitoredProjectArgs(
      metricsScope: pulumi.Input.asInput<String>(map['metricsScope']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
