import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_args.dart';

/// A Google Stackdriver dashboard. Dashboards define the content and layout of pages in the Stackdriver web application.
///
/// To get more information about Dashboards, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v1/projects.dashboards)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/monitoring/dashboards)
///
/// ## Example Usage
///
/// ### Monitoring Dashboard Basic
///
///
///
///
/// ### Monitoring Dashboard GridLayout
///
///
///
///
/// ## Import
///
/// Dashboard can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/dashboards/{{dashboard_id}}`
///
/// * `{{dashboard_id}}`
///
/// When using the `pulumi import` command, Dashboard can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/dashboard:Dashboard default projects/{{project}}/dashboards/{{dashboard_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/dashboard:Dashboard default {{dashboard_id}}
/// ```
class Dashboard extends pulumi.CustomResource {
  /// The JSON representation of a dashboard, following the format at https://cloud.google.com/monitoring/api/ref_v3/rest/v1/projects.dashboards.
  late final pulumi.Output<String> dashboardJson;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  Dashboard(
    String name, {
    DashboardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/dashboard:Dashboard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dashboardJson = registerOutput<String>('dashboardJson');
    this.project = registerOutput<String>('project');
  }
}
