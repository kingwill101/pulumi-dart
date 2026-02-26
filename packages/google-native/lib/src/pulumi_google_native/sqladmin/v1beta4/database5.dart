import 'package:pulumi/pulumi.dart';
import 'database_args5.dart';
import 'sql_server_database_details_response2.dart';

/// Inserts a resource containing information about a database inside a Cloud SQL instance. **Note:** You can't modify the default character set and collation.
class Database5 extends CustomResource {
  /// The Cloud SQL charset value.
  late final Output<String> charset;

  /// The Cloud SQL collation value.
  late final Output<String> collation;

  /// This field is deprecated and will be removed from a future version of the API.
  late final Output<String> etag;
  late final Output<String> instance;

  /// This is always `sql#database`.
  late final Output<String> kind;

  /// The name of the database in the Cloud SQL instance. This does not include the project ID or instance name.
  late final Output<String> name;
  late final Output<String> project;

  /// The URI of this resource.
  late final Output<String> selfLink;
  late final Output<SqlServerDatabaseDetailsResponse2> sqlserverDatabaseDetails;

  Database5(
    String name, {
    DatabaseArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:sqladmin/v1beta4:Database',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
        registerOutput<SqlServerDatabaseDetailsResponse2>(
            'sqlserverDatabaseDetails');
  }
}
