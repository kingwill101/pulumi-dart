import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_sqladmin_v1beta4_args.dart';
import 'sql_server_database_details_response_sqladmin_v1beta4.dart';

/// Inserts a resource containing information about a database inside a Cloud SQL instance. **Note:** You can't modify the default character set and collation.
class DatabaseSqladminV1beta4 extends pulumi.CustomResource {
  /// The Cloud SQL charset value.
  late final pulumi.Output<String> charset;

  /// The Cloud SQL collation value.
  late final pulumi.Output<String> collation;

  /// This field is deprecated and will be removed from a future version of the API.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> instance;

  /// This is always `sql#database`.
  late final pulumi.Output<String> kind;

  /// The name of the database in the Cloud SQL instance. This does not include the project ID or instance name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The URI of this resource.
  late final pulumi.Output<String> selfLink;
  late final pulumi.Output<SqlServerDatabaseDetailsResponseSqladminV1beta4>
      sqlserverDatabaseDetails;

  /// Creates a new [DatabaseSqladminV1beta4].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseSqladminV1beta4]. {@macro pulumi_sqladmin_v1beta4_database_sqladmin_v1beta4_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseSqladminV1beta4(
    String name, {
    DatabaseSqladminV1beta4Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:sqladmin/v1beta4:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.charset = registerOutput<String>('charset');
    this.collation = registerOutput<String>('collation');
    this.etag = registerOutput<String>('etag');
    this.instance = registerOutput<String>('instance');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.sqlserverDatabaseDetails =
        registerOutput<SqlServerDatabaseDetailsResponseSqladminV1beta4>(
            'sqlserverDatabaseDetails');
  }
}
