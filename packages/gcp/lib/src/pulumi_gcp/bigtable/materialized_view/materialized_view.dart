import 'package:pulumi/pulumi.dart' as pulumi;
import 'materialized_view_args.dart';

/// A materialized view object that can be referenced in SQL queries.
///
///
/// To get more information about MaterializedView, see:
///
/// * [API documentation](https://cloud.google.com/bigtable/docs/reference/admin/rest/v2/projects.instances.materializedViews)
///
/// ## Example Usage
///
/// ### Bigtable Materialized View
///
///
///
///
/// ## Import
///
/// MaterializedView can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance}}/materializedViews/{{materialized_view_id}}`
///
/// * `{{project}}/{{instance}}/{{materialized_view_id}}`
///
/// * `{{instance}}/{{materialized_view_id}}`
///
/// When using the `pulumi import` command, MaterializedView can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigtable/materializedView:MaterializedView default projects/{{project}}/instances/{{instance}}/materializedViews/{{materialized_view_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/materializedView:MaterializedView default {{project}}/{{instance}}/{{materialized_view_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/materializedView:MaterializedView default {{instance}}/{{materialized_view_id}}
/// ```
class MaterializedView extends pulumi.CustomResource {
  /// Set to true to make the MaterializedView protected against deletion.
  late final pulumi.Output<bool?> deletionProtection;

  /// The name of the instance to create the materialized view within.
  late final pulumi.Output<String?> instance;

  /// The unique name of the materialized view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  late final pulumi.Output<String> materializedViewId;

  /// The unique name of the requested materialized view. Values are of the form `projects/<project>/instances/<instance>/materializedViews/<materializedViewId>`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The materialized view's select query.
  late final pulumi.Output<String> query;

  MaterializedView(
    String name, {
    MaterializedViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/materializedView:MaterializedView',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.instance = registerOutput<String?>('instance');
    this.materializedViewId = registerOutput<String>('materializedViewId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.query = registerOutput<String>('query');
  }
}
