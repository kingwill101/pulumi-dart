import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_server_args.dart';
import 'management_uriresponse.dart';
import 'network_config_response_backupdr_v1.dart';
import 'workforce_identity_based_management_uriresponse.dart';
import 'workforce_identity_based_oauth2_client_idresponse.dart';

/// Creates a new ManagementServer in a given project and location.
/// Auto-naming is currently not supported for this resource.
class ManagementServer extends pulumi.CustomResource {
  /// The time when the instance was created.
  late final pulumi.Output<String> createTime;

  /// Optional. The description of the ManagementServer instance (2048 characters or less).
  late final pulumi.Output<String> description;

  /// Optional. Server specified ETag for the ManagementServer resource to prevent simultaneous updates from overwiting each other.
  late final pulumi.Output<String> etag;

  /// Optional. Resource labels to represent user provided metadata. Labels currently defined: 1. migrate_from_go= If set to true, the MS is created in migration ready mode.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Required. The name of the management server to create. The name must be unique for the specified project and location.
  late final pulumi.Output<String> managementServerId;

  /// The hostname or ip address of the exposed AGM endpoints, used by clients to connect to AGM/RD graphical user interface and APIs.
  late final pulumi.Output<ManagementURIResponse> managementUri;

  /// The resource name.
  late final pulumi.Output<String> name;

  /// VPC networks to which the ManagementServer instance is connected. For this version, only a single network is supported.
  late final pulumi.Output<List<NetworkConfigResponseBackupdrV1>> networks;

  /// The OAuth 2.0 client id is required to make API calls to the BackupDR instance API of this ManagementServer. This is the value that should be provided in the ‘aud’ field of the OIDC ID Token (see openid specification https://openid.net/specs/openid-connect-core-1_0.html#IDToken).
  late final pulumi.Output<String> oauth2ClientId;
  late final pulumi.Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The ManagementServer state.
  late final pulumi.Output<String> state;

  /// The type of the ManagementServer resource.
  late final pulumi.Output<String> type;

  /// The time when the instance was updated.
  late final pulumi.Output<String> updateTime;

  /// The hostnames of the exposed AGM endpoints for both types of user i.e. 1p and 3p, used to connect AGM/RM UI.
  late final pulumi.Output<WorkforceIdentityBasedManagementURIResponse>
      workforceIdentityBasedManagementUri;

  /// The OAuth client IDs for both types of user i.e. 1p and 3p.
  late final pulumi.Output<WorkforceIdentityBasedOAuth2ClientIDResponse>
      workforceIdentityBasedOauth2ClientId;

  ManagementServer(
    String name, {
    ManagementServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:backupdr/v1:ManagementServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.managementServerId = registerOutput<String>('managementServerId');
    this.managementUri = registerOutput<ManagementURIResponse>('managementUri');
    this.name = registerOutput<String>('name');
    this.networks =
        registerOutput<List<NetworkConfigResponseBackupdrV1>>('networks');
    this.oauth2ClientId = registerOutput<String>('oauth2ClientId');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
    this.workforceIdentityBasedManagementUri =
        registerOutput<WorkforceIdentityBasedManagementURIResponse>(
            'workforceIdentityBasedManagementUri');
    this.workforceIdentityBasedOauth2ClientId =
        registerOutput<WorkforceIdentityBasedOAuth2ClientIDResponse>(
            'workforceIdentityBasedOauth2ClientId');
  }
}
