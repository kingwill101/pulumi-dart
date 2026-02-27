import 'package:pulumi/pulumi.dart' as pulumi;
import 'oauth_client_args.dart';

/// Represents an OAuth Client. Used to access Google Cloud resources on behalf of a
/// Workforce Identity Federation user by using OAuth 2.0 Protocol to obtain an access
/// token from Google Cloud.
///
///
/// To get more information about OauthClient, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/projects.locations.oauthClients)
/// * How-to Guides
/// * [Managing OAuth clients](https://cloud.google.com/iam/docs/workforce-manage-oauth-app#manage-clients)
///
/// ## Example Usage
///
/// ### Iam Oauth Client Full
///
///
///
///
/// ## Import
///
/// OauthClient can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/oauthClients/{{oauth_client_id}}`
///
/// * `{{project}}/{{location}}/{{oauth_client_id}}`
///
/// * `{{location}}/{{oauth_client_id}}`
///
/// When using the `pulumi import` command, OauthClient can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/oauthClient:OauthClient default projects/{{project}}/locations/{{location}}/oauthClients/{{oauth_client_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/oauthClient:OauthClient default {{project}}/{{location}}/{{oauth_client_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/oauthClient:OauthClient default {{location}}/{{oauth_client_id}}
/// ```
class OauthClient extends pulumi.CustomResource {
  /// Required. The list of OAuth grant types is allowed for the OauthClient.
  late final pulumi.Output<List<String>> allowedGrantTypes;

  /// Required. The list of redirect uris that is allowed to redirect back
  /// when authorization process is completed.
  late final pulumi.Output<List<String>> allowedRedirectUris;

  /// Required. The list of scopes that the OauthClient is allowed to request during
  /// OAuth flows.
  /// The following scopes are supported:
  /// * `https://www.googleapis.com/auth/cloud-platform`: See, edit, configure,
  /// and delete your Google Cloud data and see the email address for your Google
  /// Account.
  late final pulumi.Output<List<String>> allowedScopes;

  /// Output only. The system-generated OauthClient id.
  late final pulumi.Output<String> clientId;

  /// Immutable. The type of OauthClient. Either public or private.
  /// For private clients, the client secret can be managed using the dedicated
  /// OauthClientCredential resource.
  /// Possible values:
  /// CLIENT_TYPE_UNSPECIFIED
  /// PUBLIC_CLIENT
  /// CONFIDENTIAL_CLIENT
  late final pulumi.Output<String?> clientType;

  /// A user-specified description of the OauthClient.
  /// Cannot exceed 256 characters.
  late final pulumi.Output<String?> description;

  /// Whether the OauthClient is disabled. You cannot use a disabled OAuth
  /// client.
  late final pulumi.Output<bool?> disabled;

  /// A user-specified display name of the OauthClient.
  /// Cannot exceed 32 characters.
  late final pulumi.Output<String?> displayName;

  /// Time after which the OauthClient will be permanently purged and cannot
  /// be recovered.
  late final pulumi.Output<String> expireTime;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Immutable. Identifier. The resource name of the OauthClient.
  /// Format:`projects/{project}/locations/{location}/oauthClients/{oauth_client}`.
  late final pulumi.Output<String> name;

  /// Required. The ID to use for the OauthClient, which becomes the final component of
  /// the resource name. This value should be a string of 6 to 63 lowercase
  /// letters, digits, or hyphens. It must start with a letter, and cannot have a
  /// trailing hyphen. The prefix `gcp-` is reserved for use by Google, and may
  /// not be specified.
  late final pulumi.Output<String> oauthClientId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The state of the OauthClient.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// DELETED
  late final pulumi.Output<String> state;

  OauthClient(
    String name, {
    OauthClientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/oauthClient:OauthClient',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedGrantTypes = registerOutput<List<String>>('allowedGrantTypes');
    this.allowedRedirectUris =
        registerOutput<List<String>>('allowedRedirectUris');
    this.allowedScopes = registerOutput<List<String>>('allowedScopes');
    this.clientId = registerOutput<String>('clientId');
    this.clientType = registerOutput<String?>('clientType');
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.displayName = registerOutput<String?>('displayName');
    this.expireTime = registerOutput<String>('expireTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.oauthClientId = registerOutput<String>('oauthClientId');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
  }
}
