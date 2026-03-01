import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'hive_database_options_response.dart';

/// Creates a new database.
/// Auto-naming is currently not supported for this resource.
class Database extends pulumi.CustomResource {
  late final pulumi.Output<String> catalogId;

  /// The creation time of the database.
  late final pulumi.Output<String> createTime;

  /// Required. The ID to use for the database, which will become the final component of the database's resource name.
  late final pulumi.Output<String> databaseId;

  /// The deletion time of the database. Only set after the database is deleted.
  late final pulumi.Output<String> deleteTime;

  /// The time when this database is considered expired. Only set after the database is deleted.
  late final pulumi.Output<String> expireTime;

  /// Options of a Hive database.
  late final pulumi.Output<HiveDatabaseOptionsResponse> hiveOptions;
  late final pulumi.Output<String> location;

  /// The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The database type.
  late final pulumi.Output<String> type;

  /// The last modification time of the database.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_biglake_v1_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:biglake/v1:Database',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.createTime = registerOutput<String>('createTime');
    this.databaseId = registerOutput<String>('databaseId');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.expireTime = registerOutput<String>('expireTime');
    this.hiveOptions = registerOutput<HiveDatabaseOptionsResponse>(
      'hiveOptions',
    );
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
