import 'package:pulumi/pulumi.dart' hide Config;
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
    this.catalogId = registerOutput<String>('catalogId');
    this.createTime = registerOutput<String>('createTime');
    this.databaseId = registerOutput<String>('databaseId');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.expireTime = registerOutput<String>('expireTime');
    this.hiveOptions =
        registerOutput<HiveDatabaseOptionsResponse>('hiveOptions');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
