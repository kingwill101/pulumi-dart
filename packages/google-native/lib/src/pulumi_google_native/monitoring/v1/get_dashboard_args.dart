// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDashboard.
class GetDashboardArgs {
  final pulumi.Input<String> dashboardId;
  final pulumi.Input<String>? project;

  GetDashboardArgs({
    required this.dashboardId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dashboardId'] = dashboardId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDashboardArgs.fromMap(Map<String, dynamic> map) {
    return GetDashboardArgs(
      dashboardId: pulumi.Input.asInput<String>(map['dashboardId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
