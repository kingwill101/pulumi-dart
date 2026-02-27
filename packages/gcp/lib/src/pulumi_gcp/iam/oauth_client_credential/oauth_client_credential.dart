import 'package:pulumi/pulumi.dart' as pulumi;
import 'oauth_client_credential_args.dart';

/// Represents an OAuth Client Credential. Used to authenticate an OAuth Client
/// while accessing Google Cloud resources on behalf of a Workforce Identity Federation user
/// by using OAuth 2.0 Protocol.
///
///
/// To get more information about OauthClientCredential, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/projects.locations.oauthClients.credentials)
/// * How-to Guides
/// * [Managing OAuth clients](https://cloud.google.com/iam/docs/workforce-manage-oauth-app#manage-clients)
///
///
///
/// ## Example Usage
///
/// ### Iam Oauth Client Credential Full
///
///
///
///
/// ## Import
///
/// OauthClientCredential can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/oauthClients/{{oauthclient}}/credentials/{{oauth_client_credential_id}}`
///
/// * `{{project}}/{{location}}/{{oauthclient}}/{{oauth_client_credential_id}}`
///
/// * `{{location}}/{{oauthclient}}/{{oauth_client_credential_id}}`
///
/// When using the `pulumi import` command, OauthClientCredential can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/oauthClientCredential:OauthClientCredential default projects/{{project}}/locations/{{location}}/oauthClients/{{oauthclient}}/credentials/{{oauth_client_credential_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/oauthClientCredential:OauthClientCredential default {{project}}/{{location}}/{{oauthclient}}/{{oauth_client_credential_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/oauthClientCredential:OauthClientCredential default {{location}}/{{oauthclient}}/{{oauth_client_credential_id}}
/// ```
class OauthClientCredential extends pulumi.CustomResource {
  /// The system-generated OAuth client secret.
  /// The client secret must be stored securely. If the client secret is
  /// leaked, you must delete and re-create the client credential. To learn
  /// more, see [OAuth client and credential security risks and
  /// mitigations](https://cloud.google.com/iam/docs/workforce-oauth-app#security)
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> clientSecret;

  /// Whether the OauthClientCredential is disabled. You cannot use a
  /// disabled OauthClientCredential.
  late final pulumi.Output<bool?> disabled;

  /// A user-specified display name of the OauthClientCredential.
  /// Cannot exceed 32 characters.
  late final pulumi.Output<String?> displayName;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Immutable. Identifier. The resource name of the OauthClientCredential.
  /// Format:
  /// `projects/{project}/locations/{location}/oauthClients/{oauth_client}/credentials/{credential}`
  late final pulumi.Output<String> name;

  /// Required. The ID to use for the OauthClientCredential, which becomes the
  /// final component of the resource name. This value should be 4-32 characters,
  /// and may contain the characters [a-z0-9-]. The prefix `gcp-` is
  /// reserved for use by Google, and may not be specified.
  late final pulumi.Output<String> oauthClientCredentialId;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> oauthclient;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  OauthClientCredential(
    String name, {
    OauthClientCredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/oauthClientCredential:OauthClientCredential',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientSecret = registerOutput<String>('clientSecret');
    this.disabled = registerOutput<bool?>('disabled');
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.oauthClientCredentialId =
        registerOutput<String>('oauthClientCredentialId');
    this.oauthclient = registerOutput<String>('oauthclient');
    this.project = registerOutput<String>('project');
  }
}
