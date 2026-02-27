import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_sql_properties_response.dart';
import 'connection_bigqueryconnection_v1beta1_args.dart';

/// Creates a new connection.
class ConnectionBigqueryconnectionV1beta1 extends pulumi.CustomResource {
  /// Cloud SQL properties.
  late final pulumi.Output<CloudSqlPropertiesResponse> cloudSql;

  /// Optional. Connection id that should be assigned to the created connection.
  late final pulumi.Output<String?> connectionId;

  /// The creation timestamp of the connection.
  late final pulumi.Output<String> creationTime;

  /// User provided description.
  late final pulumi.Output<String> description;

  /// User provided display name for the connection.
  late final pulumi.Output<String> friendlyName;

  /// True, if credential is configured for this connection.
  late final pulumi.Output<bool> hasCredential;

  /// The last update timestamp of the connection.
  late final pulumi.Output<String> lastModifiedTime;
  late final pulumi.Output<String> location;

  /// The resource name of the connection in the form of: `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  ConnectionBigqueryconnectionV1beta1(
    String name, {
    ConnectionBigqueryconnectionV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:bigqueryconnection/v1beta1:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cloudSql = registerOutput<CloudSqlPropertiesResponse>('cloudSql');
    this.connectionId = registerOutput<String?>('connectionId');
    this.creationTime = registerOutput<String>('creationTime');
    this.description = registerOutput<String>('description');
    this.friendlyName = registerOutput<String>('friendlyName');
    this.hasCredential = registerOutput<bool>('hasCredential');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
