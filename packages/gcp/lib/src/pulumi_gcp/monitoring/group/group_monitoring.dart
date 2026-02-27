import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_monitoring_args.dart';

/// The description of a dynamic collection of monitored resources. Each group
/// has a filter that is matched against monitored resources and their
/// associated metadata. If a group's filter matches an available monitored
/// resource, then that resource is a member of that group.
///
///
/// To get more information about Group, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.groups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/monitoring/groups/)
///
/// ## Example Usage
///
/// ### Monitoring Group Basic
///
///
///
/// ### Monitoring Group Subgroup
///
///
///
///
/// ## Import
///
/// Group can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Group can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/group:Group default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/group:Group default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/group:Group default {{name}}
/// ```
class GroupMonitoring extends pulumi.CustomResource {
  /// A user-assigned name for this group, used only for display
  /// purposes.
  late final pulumi.Output<String> displayName;

  /// The filter used to determine which monitored resources
  /// belong to this group.
  late final pulumi.Output<String> filter;

  /// If true, the members of this group are considered to be a
  /// cluster. The system can perform additional analysis on
  /// groups that are clusters.
  late final pulumi.Output<bool?> isCluster;

  /// A unique identifier for this group. The format is
  /// "projects/{project_id_or_number}/groups/{group_id}".
  late final pulumi.Output<String> name;

  /// The name of the group's parent, if it has one. The format is
  /// "projects/{project_id_or_number}/groups/{group_id}". For
  /// groups with no parent, parentName is the empty string, "".
  late final pulumi.Output<String?> parentName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  GroupMonitoring(
    String name, {
    GroupMonitoringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.filter = registerOutput<String>('filter');
    this.isCluster = registerOutput<bool?>('isCluster');
    this.name = registerOutput<String>('name');
    this.parentName = registerOutput<String?>('parentName');
    this.project = registerOutput<String>('project');
  }
}
