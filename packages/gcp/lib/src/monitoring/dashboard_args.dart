// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_dashboard_dashboard_args_doc}
/// The set of arguments for Dashboard.
/// {@endtemplate}
/// {@macro pulumi_monitoring_dashboard_dashboard_args_doc}
class DashboardArgs {
  /// The JSON representation of a dashboard, following the format at https://cloud.google.com/monitoring/api/ref_v3/rest/v1/projects.dashboards.
  final pulumi.Input<String> dashboardJson;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [DashboardArgs].
  /// [dashboardJson] The JSON representation of a dashboard, following the format at https://cloud.google.com/monitoring/api/ref_v3/rest/v1/projects.dashboards.
  /// [project] The ID of the project in which the resource belongs.
  DashboardArgs({
    required String dashboardJson,
    String? project,
  }) :
      dashboardJson = pulumi.Input.asInput<String>(dashboardJson),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardJson': dashboardJson,
      'project': ?project,
    };
  }

  factory DashboardArgs.fromMap(Map<String, dynamic> map) {
    return DashboardArgs(
      dashboardJson: map['dashboardJson'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

