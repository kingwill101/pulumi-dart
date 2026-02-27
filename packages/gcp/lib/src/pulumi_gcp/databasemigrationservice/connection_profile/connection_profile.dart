import 'package:pulumi/pulumi.dart';
import '../connection_profile_alloydb/connection_profile_alloydb.dart';
import '../connection_profile_cloudsql/connection_profile_cloudsql.dart';
import '../connection_profile_error/connection_profile_error.dart';
import '../connection_profile_mysql/connection_profile_mysql.dart';
import '../connection_profile_oracle/connection_profile_oracle.dart';
import '../connection_profile_postgresql/connection_profile_postgresql.dart';
import 'connection_profile_args.dart';

/// A connection profile definition.
///
///
/// To get more information about ConnectionProfile, see:
///
/// * [API documentation](https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.connectionProfiles/create)
/// * How-to Guides
/// * [Database Migration](https://cloud.google.com/database-migration/docs/)
///
///
///
/// ## Example Usage
///
/// ### Database Migration Service Connection Profile Cloudsql
///
///
///
/// ### Database Migration Service Connection Profile Postgres
///
///
///
/// ### Database Migration Service Connection Profile Postgres No Ssl
///
///
///
/// ### Database Migration Service Connection Profile Postgres Required Ssl
///
///
///
/// ### Database Migration Service Connection Profile Oracle
///
///
///
/// ### Database Migration Service Connection Profile Alloydb
///
///
///
/// ### Database Migration Service Connection Profile Existing Mysql
///
///
///
/// ### Database Migration Service Connection Profile Existing Postgres
///
///
///
/// ### Database Migration Service Connection Profile Existing Alloydb
///
///
///
///
/// ## Import
///
/// ConnectionProfile can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connectionProfiles/{{connection_profile_id}}`
///
/// * `{{project}}/{{location}}/{{connection_profile_id}}`
///
/// * `{{location}}/{{connection_profile_id}}`
///
/// When using the `pulumi import` command, ConnectionProfile can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:databasemigrationservice/connectionProfile:ConnectionProfile default projects/{{project}}/locations/{{location}}/connectionProfiles/{{connection_profile_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:databasemigrationservice/connectionProfile:ConnectionProfile default {{project}}/{{location}}/{{connection_profile_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:databasemigrationservice/connectionProfile:ConnectionProfile default {{location}}/{{connection_profile_id}}
/// ```
class ConnectionProfile extends CustomResource {
  /// Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster.
  /// Structure is documented below.
  late final Output<ConnectionProfileAlloydb?> alloydb;

  /// Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
  /// Structure is documented below.
  late final Output<ConnectionProfileCloudsql?> cloudsql;

  /// The ID of the connection profile.
  late final Output<String> connectionProfileId;

  /// Output only. The timestamp when the resource was created. A timestamp in RFC3339 UTC 'Zulu' format, accurate to nanoseconds. Example: '2014-10-02T15:01:23.045123456Z'.
  late final Output<String> createTime;

  /// The database provider.
  late final Output<String> dbprovider;

  /// The connection profile display name.
  late final Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Output only. The error details in case of state FAILED.
  /// Structure is documented below.
  late final Output<List<ConnectionProfileError>> errors;

  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location where the connection profile should reside.
  late final Output<String?> location;

  /// Specifies connection parameters required specifically for MySQL databases.
  /// Structure is documented below.
  late final Output<ConnectionProfileMysql?> mysql;

  /// The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  late final Output<String> name;

  /// Specifies connection parameters required specifically for Oracle databases.
  /// Structure is documented below.
  late final Output<ConnectionProfileOracle?> oracle;

  /// Specifies connection parameters required specifically for PostgreSQL databases.
  /// Structure is documented below.
  late final Output<ConnectionProfilePostgresql?> postgresql;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The current connection profile state.
  late final Output<String> state;

  ConnectionProfile(
    String name, {
    ConnectionProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:databasemigrationservice/connectionProfile:ConnectionProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alloydb = registerOutput<ConnectionProfileAlloydb?>('alloydb');
    this.cloudsql = registerOutput<ConnectionProfileCloudsql?>('cloudsql');
    this.connectionProfileId = registerOutput<String>('connectionProfileId');
    this.createTime = registerOutput<String>('createTime');
    this.dbprovider = registerOutput<String>('dbprovider');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.errors = registerOutput<List<ConnectionProfileError>>('errors');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.mysql = registerOutput<ConnectionProfileMysql?>('mysql');
    this.name = registerOutput<String>('name');
    this.oracle = registerOutput<ConnectionProfileOracle?>('oracle');
    this.postgresql =
        registerOutput<ConnectionProfilePostgresql?>('postgresql');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
  }
}
