import 'package:pulumi/pulumi.dart';
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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.iam.OauthClient("example", {
/// oauthClientId: "example-client-id",
/// displayName: "Display Name of OAuth client",
/// description: "A sample OAuth client",
/// location: "global",
/// disabled: false,
/// allowedGrantTypes: ["AUTHORIZATION_CODE_GRANT"],
/// allowedRedirectUris: ["https://www.example.com"],
/// allowedScopes: ["https://www.googleapis.com/auth/cloud-platform"],
/// clientType: "CONFIDENTIAL_CLIENT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.iam.OauthClient("example",
/// oauth_client_id="example-client-id",
/// display_name="Display Name of OAuth client",
/// description="A sample OAuth client",
/// location="global",
/// disabled=False,
/// allowed_grant_types=["AUTHORIZATION_CODE_GRANT"],
/// allowed_redirect_uris=["https://www.example.com"],
/// allowed_scopes=["https://www.googleapis.com/auth/cloud-platform"],
/// client_type="CONFIDENTIAL_CLIENT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Iam.OauthClient("example", new()
/// {
/// OauthClientId = "example-client-id",
/// DisplayName = "Display Name of OAuth client",
/// Description = "A sample OAuth client",
/// Location = "global",
/// Disabled = false,
/// AllowedGrantTypes = new[]
/// {
/// "AUTHORIZATION_CODE_GRANT",
/// },
/// AllowedRedirectUris = new[]
/// {
/// "https://www.example.com",
/// },
/// AllowedScopes = new[]
/// {
/// "https://www.googleapis.com/auth/cloud-platform",
/// },
/// ClientType = "CONFIDENTIAL_CLIENT",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewOauthClient(ctx, "example", &iam.OauthClientArgs{
/// OauthClientId: pulumi.String("example-client-id"),
/// DisplayName:   pulumi.String("Display Name of OAuth client"),
/// Description:   pulumi.String("A sample OAuth client"),
/// Location:      pulumi.String("global"),
/// Disabled:      pulumi.Bool(false),
/// AllowedGrantTypes: pulumi.StringArray{
/// pulumi.String("AUTHORIZATION_CODE_GRANT"),
/// },
/// AllowedRedirectUris: pulumi.StringArray{
/// pulumi.String("https://www.example.com"),
/// },
/// AllowedScopes: pulumi.StringArray{
/// pulumi.String("https://www.googleapis.com/auth/cloud-platform"),
/// },
/// ClientType: pulumi.String("CONFIDENTIAL_CLIENT"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iam.OauthClient;
/// import com.pulumi.gcp.iam.OauthClientArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new OauthClient("example", OauthClientArgs.builder()
/// .oauthClientId("example-client-id")
/// .displayName("Display Name of OAuth client")
/// .description("A sample OAuth client")
/// .location("global")
/// .disabled(false)
/// .allowedGrantTypes("AUTHORIZATION_CODE_GRANT")
/// .allowedRedirectUris("https://www.example.com")
/// .allowedScopes("https://www.googleapis.com/auth/cloud-platform")
/// .clientType("CONFIDENTIAL_CLIENT")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:iam:OauthClient
/// properties:
/// oauthClientId: example-client-id
/// displayName: Display Name of OAuth client
/// description: A sample OAuth client
/// location: global
/// disabled: false
/// allowedGrantTypes:
/// - AUTHORIZATION_CODE_GRANT
/// allowedRedirectUris:
/// - https://www.example.com
/// allowedScopes:
/// - https://www.googleapis.com/auth/cloud-platform
/// clientType: CONFIDENTIAL_CLIENT
/// ```
/// <!--End PulumiCodeChooser -->
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
class OauthClient extends CustomResource {
  /// Required. The list of OAuth grant types is allowed for the OauthClient.
  late final Output<List<String>> allowedGrantTypes;

  /// Required. The list of redirect uris that is allowed to redirect back
  /// when authorization process is completed.
  late final Output<List<String>> allowedRedirectUris;

  /// Required. The list of scopes that the OauthClient is allowed to request during
  /// OAuth flows.
  /// The following scopes are supported:
  /// * `https://www.googleapis.com/auth/cloud-platform`: See, edit, configure,
  /// and delete your Google Cloud data and see the email address for your Google
  /// Account.
  late final Output<List<String>> allowedScopes;

  /// Output only. The system-generated OauthClient id.
  late final Output<String> clientId;

  /// Immutable. The type of OauthClient. Either public or private.
  /// For private clients, the client secret can be managed using the dedicated
  /// OauthClientCredential resource.
  /// Possible values:
  /// CLIENT_TYPE_UNSPECIFIED
  /// PUBLIC_CLIENT
  /// CONFIDENTIAL_CLIENT
  late final Output<String?> clientType;

  /// A user-specified description of the OauthClient.
  /// Cannot exceed 256 characters.
  late final Output<String?> description;

  /// Whether the OauthClient is disabled. You cannot use a disabled OAuth
  /// client.
  late final Output<bool?> disabled;

  /// A user-specified display name of the OauthClient.
  /// Cannot exceed 32 characters.
  late final Output<String?> displayName;

  /// Time after which the OauthClient will be permanently purged and cannot
  /// be recovered.
  late final Output<String> expireTime;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Immutable. Identifier. The resource name of the OauthClient.
  /// Format:`projects/{project}/locations/{location}/oauthClients/{oauth_client}`.
  late final Output<String> name;

  /// Required. The ID to use for the OauthClient, which becomes the final component of
  /// the resource name. This value should be a string of 6 to 63 lowercase
  /// letters, digits, or hyphens. It must start with a letter, and cannot have a
  /// trailing hyphen. The prefix `gcp-` is reserved for use by Google, and may
  /// not be specified.
  late final Output<String> oauthClientId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The state of the OauthClient.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// DELETED
  late final Output<String> state;

  OauthClient(
    String name, {
    OauthClientArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iam/oauthClient:OauthClient',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
