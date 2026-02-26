import 'package:pulumi/pulumi.dart';
import 'alloy_db_connection_profile_response.dart';
import 'cloud_sql_connection_profile_response.dart';
import 'connection_profile_args.dart';
import 'my_sql_connection_profile_response.dart';
import 'oracle_connection_profile_response.dart';
import 'postgre_sql_connection_profile_response.dart';
import 'status_response15.dart';

/// Creates a new connection profile in a given project and location.
class ConnectionProfile extends CustomResource {
  /// An AlloyDB cluster connection profile.
  late final Output<AlloyDbConnectionProfileResponse> alloydb;

  /// A CloudSQL database connection profile.
  late final Output<CloudSqlConnectionProfileResponse> cloudsql;

  /// Required. The connection profile identifier.
  late final Output<String> connectionProfileId;

  /// The timestamp when the resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// The connection profile display name.
  late final Output<String> displayName;

  /// The error details in case of state FAILED.
  late final Output<StatusResponse15> error;

  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// A MySQL database connection profile.
  late final Output<MySqlConnectionProfileResponse> mysql;

  /// The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  late final Output<String> name;

  /// An Oracle database connection profile.
  late final Output<OracleConnectionProfileResponse> oracle;

  /// A PostgreSQL database connection profile.
  late final Output<PostgreSqlConnectionProfileResponse> postgresql;
  late final Output<String> project;

  /// The database provider.
  late final Output<String> provider;

  /// Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final Output<String?> requestId;

  /// Optional. Create the connection profile without validating it. The default is false. Only supported for Oracle connection profiles.
  late final Output<bool?> skipValidation;

  /// The current connection profile state (e.g. DRAFT, READY, or FAILED).
  late final Output<String> state;

  /// The timestamp when the resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  ConnectionProfile(
    String name, {
    ConnectionProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datamigration/v1:ConnectionProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alloydb = Output.createUnknown<AlloyDbConnectionProfileResponse>();
    this.cloudsql = Output.createUnknown<CloudSqlConnectionProfileResponse>();
    this.connectionProfileId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.error = Output.createUnknown<StatusResponse15>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.mysql = Output.createUnknown<MySqlConnectionProfileResponse>();
    this.name = Output.createUnknown<String>();
    this.oracle = Output.createUnknown<OracleConnectionProfileResponse>();
    this.postgresql =
        Output.createUnknown<PostgreSqlConnectionProfileResponse>();
    this.project = Output.createUnknown<String>();
    this.provider = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.skipValidation = Output.createUnknown<bool?>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
