import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_sql_args.dart';

/// Represents a SQL database inside the Cloud SQL instance, hosted in
/// Google's cloud.
///
///
///
/// ## Example Usage
///
/// ### Sql Database Basic
///
///
///
/// ### Sql Database Deletion Policy
///
///
///
///
/// ## Import
///
/// Database can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance}}/databases/{{name}}`
///
/// * `instances/{{instance}}/databases/{{name}}`
///
/// * `{{project}}/{{instance}}/{{name}}`
///
/// * `{{instance}}/{{name}}`
///
/// When using the `pulumi import` command, Database can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:sql/database:Database default projects/{{project}}/instances/{{instance}}/databases/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:sql/database:Database default instances/{{instance}}/databases/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:sql/database:Database default {{project}}/{{instance}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:sql/database:Database default {{instance}}/{{name}}
/// ```
class DatabaseSql extends pulumi.CustomResource {
  /// The charset value. See MySQL's
  /// [Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
  /// and Postgres' [Character Set Support](https://www.postgresql.org/docs/9.6/static/multibyte.html)
  /// for more details and supported values. Postgres databases only support
  /// a value of `UTF8` at creation time.
  late final pulumi.Output<String> charset;

  /// The collation value. See MySQL's
  /// [Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
  /// and Postgres' [Collation Support](https://www.postgresql.org/docs/9.6/static/collation.html)
  /// for more details and supported values. Postgres databases only support
  /// a value of `en_US.UTF8` at creation time.
  late final pulumi.Output<String> collation;

  /// The deletion policy for the database. Setting ABANDON allows the resource
  /// to be abandoned rather than deleted. This is useful for Postgres, where databases cannot be
  /// deleted from the API if there are users other than cloudsqlsuperuser with access. Possible
  /// values are: "ABANDON", "DELETE". Defaults to "DELETE".
  late final pulumi.Output<String?> deletionPolicy;

  /// The name of the Cloud SQL instance. This does not include the project
  /// ID.
  late final pulumi.Output<String> instance;

  /// The name of the database in the Cloud SQL instance.
  /// This does not include the project ID or instance name.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  DatabaseSql(
    String name, {
    DatabaseSqlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:sql/database:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.charset = registerOutput<String>('charset');
    this.collation = registerOutput<String>('collation');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
