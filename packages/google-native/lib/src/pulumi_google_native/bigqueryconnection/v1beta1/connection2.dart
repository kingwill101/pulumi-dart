import 'package:pulumi/pulumi.dart';
import 'cloud_sql_properties_response.dart';
import 'connection_args2.dart';

/// Creates a new connection.
class Connection2 extends CustomResource {
  /// Cloud SQL properties.
  late final Output<CloudSqlPropertiesResponse> cloudSql;

  /// Optional. Connection id that should be assigned to the created connection.
  late final Output<String?> connectionId;

  /// The creation timestamp of the connection.
  late final Output<String> creationTime;

  /// User provided description.
  late final Output<String> description;

  /// User provided display name for the connection.
  late final Output<String> friendlyName;

  /// True, if credential is configured for this connection.
  late final Output<bool> hasCredential;

  /// The last update timestamp of the connection.
  late final Output<String> lastModifiedTime;
  late final Output<String> location;

  /// The resource name of the connection in the form of: `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
  late final Output<String> name;
  late final Output<String> project;

  Connection2(
    String name, {
    ConnectionArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:bigqueryconnection/v1beta1:Connection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cloudSql = Output.createUnknown<CloudSqlPropertiesResponse>();
    this.connectionId = Output.createUnknown<String?>();
    this.creationTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.friendlyName = Output.createUnknown<String>();
    this.hasCredential = Output.createUnknown<bool>();
    this.lastModifiedTime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
