import 'package:pulumi/pulumi.dart';
import '../connection_profile_forward_ssh_connectivity/connection_profile_forward_ssh_connectivity.dart';
import '../connection_profile_gcs_profile/connection_profile_gcs_profile.dart';
import '../connection_profile_mongodb_profile/connection_profile_mongodb_profile.dart';
import '../connection_profile_mysql_profile/connection_profile_mysql_profile.dart';
import '../connection_profile_oracle_profile/connection_profile_oracle_profile.dart';
import '../connection_profile_postgresql_profile/connection_profile_postgresql_profile.dart';
import '../connection_profile_private_connectivity/connection_profile_private_connectivity.dart';
import '../connection_profile_salesforce_profile/connection_profile_salesforce_profile.dart';
import '../connection_profile_spanner_profile/connection_profile_spanner_profile.dart';
import '../connection_profile_sql_server_profile/connection_profile_sql_server_profile.dart';
import 'connection_profile_args2.dart';

/// A set of reusable connection configurations to be used as a source or destination for a stream.
///
///
/// To get more information about ConnectionProfile, see:
///
/// * [API documentation](https://cloud.google.com/datastream/docs/reference/rest/v1/projects.locations.connectionProfiles)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/datastream/docs/create-connection-profiles)
///
///
///
/// ## Example Usage
///
/// ### Datastream Connection Profile Basic
///
///
///
/// ### Datastream Connection Profile Postgresql Private Connection
///
///
///
/// ### Datastream Connection Profile Full
///
///
///
/// ### Datastream Connection Profile Postgres
///
///
///
/// ### Datastream Connection Profile Sql Server
///
///
///
/// ### Datastream Stream Postgresql Sslconfig Server And Client Verification
///
///
///
/// ### Datastream Connection Profile Salesforce
///
///
///
/// ### Datastream Connection Profile Spanner
///
///
///
/// ### Datastream Connection Profile Postgres Secret Manager
///
///
///
/// ### Datastream Connection Profile Mongodb
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
/// $ pulumi import gcp:datastream/connectionProfile:ConnectionProfile default projects/{{project}}/locations/{{location}}/connectionProfiles/{{connection_profile_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:datastream/connectionProfile:ConnectionProfile default {{project}}/{{location}}/{{connection_profile_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:datastream/connectionProfile:ConnectionProfile default {{location}}/{{connection_profile_id}}
/// ```
class ConnectionProfile2 extends CustomResource {
  /// BigQuery warehouse profile.
  late final Output<Map<String, dynamic>?> bigqueryProfile;

  /// The connection profile identifier.
  late final Output<String> connectionProfileId;

  /// Create the connection profile without validating it.
  late final Output<bool?> createWithoutValidation;

  /// Display name.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Forward SSH tunnel connectivity.
  /// Structure is documented below.
  late final Output<ConnectionProfileForwardSshConnectivity?>
      forwardSshConnectivity;

  /// Cloud Storage bucket profile.
  /// Structure is documented below.
  late final Output<ConnectionProfileGcsProfile?> gcsProfile;

  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The name of the location this connection profile is located in.
  late final Output<String> location;

  /// Configuration for connecting to a MongoDB database.
  /// Structure is documented below.
  late final Output<ConnectionProfileMongodbProfile?> mongodbProfile;

  /// MySQL database profile.
  /// Structure is documented below.
  late final Output<ConnectionProfileMysqlProfile?> mysqlProfile;

  /// The resource's name.
  late final Output<String> name;

  /// Oracle database profile.
  /// Structure is documented below.
  late final Output<ConnectionProfileOracleProfile?> oracleProfile;

  /// PostgreSQL database profile.
  /// Structure is documented below.
  late final Output<ConnectionProfilePostgresqlProfile?> postgresqlProfile;

  /// Private connectivity.
  /// Structure is documented below.
  late final Output<ConnectionProfilePrivateConnectivity?> privateConnectivity;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Salesforce profile.
  /// Structure is documented below.
  late final Output<ConnectionProfileSalesforceProfile?> salesforceProfile;

  /// Spanner profile.
  /// Structure is documented below.
  late final Output<ConnectionProfileSpannerProfile?> spannerProfile;

  /// SQL Server database profile.
  /// Structure is documented below.
  late final Output<ConnectionProfileSqlServerProfile?> sqlServerProfile;

  ConnectionProfile2(
    String name, {
    ConnectionProfileArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:datastream/connectionProfile:ConnectionProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bigqueryProfile =
        registerOutput<Map<String, dynamic>?>('bigqueryProfile');
    this.connectionProfileId = registerOutput<String>('connectionProfileId');
    this.createWithoutValidation =
        registerOutput<bool?>('createWithoutValidation');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.forwardSshConnectivity =
        registerOutput<ConnectionProfileForwardSshConnectivity?>(
            'forwardSshConnectivity');
    this.gcsProfile =
        registerOutput<ConnectionProfileGcsProfile?>('gcsProfile');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.mongodbProfile =
        registerOutput<ConnectionProfileMongodbProfile?>('mongodbProfile');
    this.mysqlProfile =
        registerOutput<ConnectionProfileMysqlProfile?>('mysqlProfile');
    this.name = registerOutput<String>('name');
    this.oracleProfile =
        registerOutput<ConnectionProfileOracleProfile?>('oracleProfile');
    this.postgresqlProfile =
        registerOutput<ConnectionProfilePostgresqlProfile?>(
            'postgresqlProfile');
    this.privateConnectivity =
        registerOutput<ConnectionProfilePrivateConnectivity?>(
            'privateConnectivity');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.salesforceProfile =
        registerOutput<ConnectionProfileSalesforceProfile?>(
            'salesforceProfile');
    this.spannerProfile =
        registerOutput<ConnectionProfileSpannerProfile?>('spannerProfile');
    this.sqlServerProfile =
        registerOutput<ConnectionProfileSqlServerProfile?>('sqlServerProfile');
  }
}
