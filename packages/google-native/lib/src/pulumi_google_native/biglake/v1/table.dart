import 'package:pulumi/pulumi.dart';
import 'hive_table_options_response.dart';
import 'table_args.dart';

/// Creates a new table.
/// Auto-naming is currently not supported for this resource.
class Table extends CustomResource {
  late final Output<String> catalogId;

  /// The creation time of the table.
  late final Output<String> createTime;
  late final Output<String> databaseId;

  /// The deletion time of the table. Only set after the table is deleted.
  late final Output<String> deleteTime;

  /// The checksum of a table object computed by the server based on the value of other fields. It may be sent on update requests to ensure the client has an up-to-date value before proceeding. It is only checked for update table operations.
  late final Output<String> etag;

  /// The time when this table is considered expired. Only set after the table is deleted.
  late final Output<String> expireTime;

  /// Options of a Hive table.
  late final Output<HiveTableOptionsResponse> hiveOptions;
  late final Output<String> location;

  /// The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  late final Output<String> name;
  late final Output<String> project;

  /// Required. The ID to use for the table, which will become the final component of the table's resource name.
  late final Output<String> tableId;

  /// The table type.
  late final Output<String> type;

  /// The last modification time of the table.
  late final Output<String> updateTime;

  Table(
    String name, {
    TableArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:biglake/v1:Table',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.catalogId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.databaseId = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.expireTime = Output.createUnknown<String>();
    this.hiveOptions = Output.createUnknown<HiveTableOptionsResponse>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.tableId = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
