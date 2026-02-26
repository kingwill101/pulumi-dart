import 'package:pulumi/pulumi.dart';
import 'database_args.dart';
import 'hive_database_options_response.dart';

/// Creates a new database.
/// Auto-naming is currently not supported for this resource.
class Database extends CustomResource {
  late final Output<String> catalogId;

  /// The creation time of the database.
  late final Output<String> createTime;

  /// Required. The ID to use for the database, which will become the final component of the database's resource name.
  late final Output<String> databaseId;

  /// The deletion time of the database. Only set after the database is deleted.
  late final Output<String> deleteTime;

  /// The time when this database is considered expired. Only set after the database is deleted.
  late final Output<String> expireTime;

  /// Options of a Hive database.
  late final Output<HiveDatabaseOptionsResponse> hiveOptions;
  late final Output<String> location;

  /// The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  late final Output<String> name;
  late final Output<String> project;

  /// The database type.
  late final Output<String> type;

  /// The last modification time of the database.
  late final Output<String> updateTime;

  Database(
    String name, {
    DatabaseArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:biglake/v1:Database',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.catalogId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.databaseId = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.expireTime = Output.createUnknown<String>();
    this.hiveOptions = Output.createUnknown<HiveDatabaseOptionsResponse>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
