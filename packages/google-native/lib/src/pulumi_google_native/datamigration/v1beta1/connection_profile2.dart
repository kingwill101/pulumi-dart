import 'package:pulumi/pulumi.dart';
import 'cloud_sql_connection_profile_response2.dart';
import 'connection_profile_args2.dart';
import 'my_sql_connection_profile_response2.dart';
import 'status_response16.dart';

/// Creates a new connection profile in a given project and location.
class ConnectionProfile2 extends CustomResource {
  /// A CloudSQL database connection profile.
  late final Output<CloudSqlConnectionProfileResponse2> cloudsql;

  /// Required. The connection profile identifier.
  late final Output<String> connectionProfileId;

  /// The timestamp when the resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// The connection profile display name.
  late final Output<String> displayName;

  /// The error details in case of state FAILED.
  late final Output<StatusResponse16> error;

  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// A MySQL database connection profile.
  late final Output<MySqlConnectionProfileResponse2> mysql;

  /// The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  late final Output<String> name;
  late final Output<String> project;

  /// The database provider.
  late final Output<String> provider;

  /// A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final Output<String?> requestId;

  /// The current connection profile state (e.g. DRAFT, READY, or FAILED).
  late final Output<String> state;

  /// The timestamp when the resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  ConnectionProfile2(
    String name, {
    ConnectionProfileArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datamigration/v1beta1:ConnectionProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cloudsql = Output.createUnknown<CloudSqlConnectionProfileResponse2>();
    this.connectionProfileId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.error = Output.createUnknown<StatusResponse16>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.mysql = Output.createUnknown<MySqlConnectionProfileResponse2>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.provider = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
