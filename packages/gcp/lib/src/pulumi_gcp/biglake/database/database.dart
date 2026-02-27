import 'package:pulumi/pulumi.dart' as pulumi;
import '../database_hive_options/database_hive_options.dart';
import 'database_args.dart';

/// Databases are containers of tables.
///
///
/// To get more information about Database, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/biglake/rest/v1/projects.locations.catalogs.databases)
/// * How-to Guides
/// * [Manage open source metadata with BigLake Metastore](https://cloud.google.com/bigquery/docs/manage-open-source-metadata#create_databases)
///
/// ## Example Usage
///
/// ### Biglake Database
///
///
///
///
/// ## Import
///
/// Database can be imported using any of these accepted formats:
///
/// * `{{catalog}}/databases/{{name}}`
///
/// When using the `pulumi import` command, Database can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:biglake/database:Database default {{catalog}}/databases/{{name}}
/// ```
class Database extends pulumi.CustomResource {
  /// The parent catalog.
  late final pulumi.Output<String> catalog;

  /// Output only. The creation time of the database. A timestamp in RFC3339
  /// UTC "Zulu" format, with nanosecond resolution and up to nine fractional
  /// digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// Output only. The deletion time of the database. Only set after the
  /// database is deleted. A timestamp in RFC3339 UTC "Zulu" format, with
  /// nanosecond resolution and up to nine fractional digits. Examples:
  /// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> deleteTime;

  /// Output only. The time when this database is considered expired. Only set
  /// after the database is deleted. A timestamp in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits. Examples:
  /// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> expireTime;

  /// Options of a Hive database.
  /// Structure is documented below.
  late final pulumi.Output<DatabaseHiveOptions> hiveOptions;

  /// The name of the database.
  late final pulumi.Output<String> name;

  /// The database type.
  late final pulumi.Output<String> type;

  /// Output only. The last modification time of the database. A timestamp in
  /// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/database:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.catalog = registerOutput<String>('catalog');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.expireTime = registerOutput<String>('expireTime');
    this.hiveOptions = registerOutput<DatabaseHiveOptions>('hiveOptions');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
