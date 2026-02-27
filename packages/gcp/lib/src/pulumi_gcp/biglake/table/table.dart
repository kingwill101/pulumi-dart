import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_hive_options/table_hive_options.dart';
import 'table_args.dart';

/// Represents a table.
///
///
/// To get more information about Table, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/biglake/rest/v1/projects.locations.catalogs.databases.tables)
/// * How-to Guides
/// * [Manage open source metadata with BigLake Metastore](https://cloud.google.com/bigquery/docs/manage-open-source-metadata#create_tables)
///
/// ## Example Usage
///
/// ### Biglake Table
///
///
///
///
/// ## Import
///
/// Table can be imported using any of these accepted formats:
///
/// * `{{database}}/tables/{{name}}`
///
/// When using the `pulumi import` command, Table can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:biglake/table:Table default {{database}}/tables/{{name}}
/// ```
class Table extends pulumi.CustomResource {
  /// Output only. The creation time of the table. A timestamp in RFC3339 UTC
  /// "Zulu" format, with nanosecond resolution and up to nine fractional
  /// digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// The id of the parent database.
  late final pulumi.Output<String?> database;

  /// Output only. The deletion time of the table. Only set after the
  /// table is deleted. A timestamp in RFC3339 UTC "Zulu" format, with
  /// nanosecond resolution and up to nine fractional digits. Examples:
  /// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> deleteTime;

  /// The checksum of a table object computed by the server based on the value
  /// of other fields. It may be sent on update requests to ensure the client
  /// has an up-to-date value before proceeding. It is only checked for update
  /// table operations.
  late final pulumi.Output<String> etag;

  /// Output only. The time when this table is considered expired. Only set
  /// after the table is deleted. A timestamp in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits. Examples:
  /// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> expireTime;

  /// Options of a Hive table.
  /// Structure is documented below.
  late final pulumi.Output<TableHiveOptions?> hiveOptions;

  /// Output only. The name of the Table. Format:
  /// projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}/databases/{databaseId}/tables/{tableId}
  late final pulumi.Output<String> name;

  /// The database type.
  /// Possible values are: `HIVE`.
  late final pulumi.Output<String?> type;

  /// Output only. The last modification time of the table. A timestamp in
  /// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  Table(
    String name, {
    TableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/table:Table',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.database = registerOutput<String?>('database');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.etag = registerOutput<String>('etag');
    this.expireTime = registerOutput<String>('expireTime');
    this.hiveOptions = registerOutput<TableHiveOptions?>('hiveOptions');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String?>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
