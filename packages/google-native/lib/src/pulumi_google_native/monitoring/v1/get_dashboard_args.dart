// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDashboard.
class GetDashboardArgs {
  final Input<String> dashboardId;
  final Input<String>? project;

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
      dashboardId: Input.asInput<String>(map['dashboardId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
