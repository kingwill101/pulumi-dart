import 'package:pulumi/pulumi.dart';
import 'logical_view_args.dart';

/// A logical view object that can be referenced in SQL queries.
///
///
/// To get more information about LogicalView, see:
///
/// * [API documentation](https://cloud.google.com/bigtable/docs/reference/admin/rest/v2/projects.instances.logicalViews)
///
/// ## Example Usage
///
/// ### Bigtable Logical View
///
///
///
///
/// ## Import
///
/// LogicalView can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance}}/logicalViews/{{logical_view_id}}`
///
/// * `{{project}}/{{instance}}/{{logical_view_id}}`
///
/// * `{{instance}}/{{logical_view_id}}`
///
/// When using the `pulumi import` command, LogicalView can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigtable/logicalView:LogicalView default projects/{{project}}/instances/{{instance}}/logicalViews/{{logical_view_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/logicalView:LogicalView default {{project}}/{{instance}}/{{logical_view_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/logicalView:LogicalView default {{instance}}/{{logical_view_id}}
/// ```
class LogicalView extends CustomResource {
  /// Set to true to make the logical view protected against deletion.
  late final Output<bool?> deletionProtection;

  /// The name of the instance to create the logical view within.
  late final Output<String?> instance;

  /// The unique name of the logical view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  late final Output<String> logicalViewId;

  /// The unique name of the requested logical view. Values are of the form `projects/<project>/instances/<instance>/logicalViews/<logicalViewId>`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The logical view's select query.
  late final Output<String> query;

  LogicalView(
    String name, {
    LogicalViewArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/logicalView:LogicalView',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.instance = registerOutput<String?>('instance');
    this.logicalViewId = registerOutput<String>('logicalViewId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.query = registerOutput<String>('query');
  }
}
