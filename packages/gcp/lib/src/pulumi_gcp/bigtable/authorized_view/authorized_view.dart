import 'package:pulumi/pulumi.dart';
import '../authorized_view_subset_view/authorized_view_subset_view.dart';
import 'authorized_view_args.dart';

/// ## Example Usage
///
///
///
/// ## Import
///
/// Bigtable Authorized Views can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance_name}}/tables/{{table_name}}/authorizedViews/{{name}}`
///
/// * `{{project}}/{{instance_name}}/{{table_name}}/{{name}}`
///
/// * `{{instance_name}}/{{table_name}}/{{name}}`
///
/// When using the `pulumi import` command, Bigtable Authorized Views can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigtable/authorizedView:AuthorizedView default projects/{{project}}/instances/{{instance_name}}/tables/{{table_name}}/authorizedViews/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/authorizedView:AuthorizedView default {{project}}/{{instance_name}}/{{table_name}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/authorizedView:AuthorizedView default {{instance_name}}/{{table_name}}/{{name}}
/// ```
class AuthorizedView extends CustomResource {
  late final Output<String> deletionProtection;

  /// The name of the Bigtable instance in which the authorized view belongs.
  late final Output<String> instanceName;

  /// The name of the authorized view. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  /// An AuthorizedView permitting access to an explicit subset of a Table. Structure is documented below.
  ///
  /// -----
  late final Output<AuthorizedViewSubsetView?> subsetView;

  /// The name of the Bigtable table in which the authorized view belongs.
  late final Output<String> tableName;

  AuthorizedView(
    String name, {
    AuthorizedViewArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/authorizedView:AuthorizedView',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.deletionProtection = registerOutput<String>('deletionProtection');
    this.instanceName = registerOutput<String>('instanceName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.subsetView = registerOutput<AuthorizedViewSubsetView?>('subsetView');
    this.tableName = registerOutput<String>('tableName');
  }
}
