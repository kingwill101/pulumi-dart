import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitored_project_args.dart';

/// A [project being monitored](https://cloud.google.com/monitoring/settings/multiple-projects#create-multi) by a Metrics Scope.
///
///
/// To get more information about MonitoredProject, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v1/locations.global.metricsScopes.projects)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/monitoring/settings/manage-api)
///
/// ## Example Usage
///
/// ### Monitoring Monitored Project Basic
///
///
///
///
/// ## Import
///
/// MonitoredProject can be imported using any of these accepted formats:
///
/// * `v1/locations/global/metricsScopes/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, MonitoredProject can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/monitoredProject:MonitoredProject default v1/locations/global/metricsScopes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/monitoredProject:MonitoredProject default {{name}}
/// ```
class MonitoredProject extends pulumi.CustomResource {
  /// Output only. The time when this `MonitoredProject` was created.
  late final pulumi.Output<String> createTime;

  /// Required. The resource name of the existing Metrics Scope that will monitor this project. Example: locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}
  late final pulumi.Output<String> metricsScope;

  /// Immutable. The resource name of the `MonitoredProject`. On input, the resource name includes the scoping project ID and monitored project ID. On output, it contains the equivalent project numbers. Example: `locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}/projects/{MONITORED_PROJECT_ID_OR_NUMBER}`
  late final pulumi.Output<String> name;

  MonitoredProject(
    String name, {
    MonitoredProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/monitoredProject:MonitoredProject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.metricsScope = registerOutput<String>('metricsScope');
    this.name = registerOutput<String>('name');
  }
}
