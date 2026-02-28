import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_args.dart';
import 'auth_config_client_certificate.dart';
import 'auth_config_decrypted_credential.dart';

/// The AuthConfig resource use to hold channels and connection config data.
///
///
/// To get more information about AuthConfig, see:
///
/// * [API documentation](https://cloud.google.com/application-integration/docs/reference/rest/v1/projects.locations.authConfigs)
/// * How-to Guides
/// * [Manage authentication profiles](https://cloud.google.com/application-integration/docs/configure-authentication-profiles)
/// * [Official Documentation](https://cloud.google.com/application-integration/docs/overview)
///
/// ## Example Usage
///
/// ### Integrations Auth Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const client = new gcp.applicationintegration.Client("client", {location: "us-west1"});
/// const basicExample = new gcp.applicationintegration.AuthConfig("basic_example", {
///     location: "us-west1",
///     displayName: "test-authconfig",
///     description: "Test auth config created via terraform",
///     decryptedCredential: {
///         credentialType: "USERNAME_AND_PASSWORD",
///         usernameAndPassword: {
///             username: "test-username",
///             password: "test-password",
///         },
///     },
/// }, {
///     dependsOn: [client],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// client = gcp.applicationintegration.Client("client", location="us-west1")
/// basic_example = gcp.applicationintegration.AuthConfig("basic_example",
///     location="us-west1",
///     display_name="test-authconfig",
///     description="Test auth config created via terraform",
///     decrypted_credential={
///         "credential_type": "USERNAME_AND_PASSWORD",
///         "username_and_password": {
///             "username": "test-username",
///             "password": "test-password",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[client]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var client = new Gcp.ApplicationIntegration.Client("client", new()
///     {
///         Location = "us-west1",
///     });
///
///     var basicExample = new Gcp.ApplicationIntegration.AuthConfig("basic_example", new()
///     {
///         Location = "us-west1",
///         DisplayName = "test-authconfig",
///         Description = "Test auth config created via terraform",
///         DecryptedCredential = new Gcp.ApplicationIntegration.Inputs.AuthConfigDecryptedCredentialArgs
///         {
///             CredentialType = "USERNAME_AND_PASSWORD",
///             UsernameAndPassword = new Gcp.ApplicationIntegration.Inputs.AuthConfigDecryptedCredentialUsernameAndPasswordArgs
///             {
///                 Username = "test-username",
///                 Password = "test-password",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             client,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/applicationintegration"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		client, err := applicationintegration.NewClient(ctx, "client", &applicationintegration.ClientArgs{
/// 			Location: pulumi.String("us-west1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = applicationintegration.NewAuthConfig(ctx, "basic_example", &applicationintegration.AuthConfigArgs{
/// 			Location:    pulumi.String("us-west1"),
/// 			DisplayName: pulumi.String("test-authconfig"),
/// 			Description: pulumi.String("Test auth config created via terraform"),
/// 			DecryptedCredential: &applicationintegration.AuthConfigDecryptedCredentialArgs{
/// 				CredentialType: pulumi.String("USERNAME_AND_PASSWORD"),
/// 				UsernameAndPassword: &applicationintegration.AuthConfigDecryptedCredentialUsernameAndPasswordArgs{
/// 					Username: pulumi.String("test-username"),
/// 					Password: pulumi.String("test-password"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			client,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.applicationintegration.Client;
/// import com.pulumi.gcp.applicationintegration.ClientArgs;
/// import com.pulumi.gcp.applicationintegration.AuthConfig;
/// import com.pulumi.gcp.applicationintegration.AuthConfigArgs;
/// import com.pulumi.gcp.applicationintegration.inputs.AuthConfigDecryptedCredentialArgs;
/// import com.pulumi.gcp.applicationintegration.inputs.AuthConfigDecryptedCredentialUsernameAndPasswordArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var client = new Client("client", ClientArgs.builder()
///             .location("us-west1")
///             .build());
///
///         var basicExample = new AuthConfig("basicExample", AuthConfigArgs.builder()
///             .location("us-west1")
///             .displayName("test-authconfig")
///             .description("Test auth config created via terraform")
///             .decryptedCredential(AuthConfigDecryptedCredentialArgs.builder()
///                 .credentialType("USERNAME_AND_PASSWORD")
///                 .usernameAndPassword(AuthConfigDecryptedCredentialUsernameAndPasswordArgs.builder()
///                     .username("test-username")
///                     .password("test-password")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(client)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   client:
///     type: gcp:applicationintegration:Client
///     properties:
///       location: us-west1
///   basicExample:
///     type: gcp:applicationintegration:AuthConfig
///     name: basic_example
///     properties:
///       location: us-west1
///       displayName: test-authconfig
///       description: Test auth config created via terraform
///       decryptedCredential:
///         credentialType: USERNAME_AND_PASSWORD
///         usernameAndPassword:
///           username: test-username
///           password: test-password
///     options:
///       dependsOn:
///         - ${client}
/// ```
///
///
/// ## Import
///
/// AuthConfig can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AuthConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:applicationintegration/authConfig:AuthConfig default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:applicationintegration/authConfig:AuthConfig default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:applicationintegration/authConfig:AuthConfig default {{name}}
/// ```
class AuthConfig extends pulumi.CustomResource {
  /// Certificate id for client certificate.
  late final pulumi.Output<String> certificateId;

  /// Raw client certificate
  /// Structure is documented below.
  late final pulumi.Output<AuthConfigClientCertificate?> clientCertificate;

  /// The timestamp when the auth config is created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  late final pulumi.Output<String> creatorEmail;

  /// Credential type of the encrypted credential.
  late final pulumi.Output<String> credentialType;

  /// Raw auth credentials.
  /// Structure is documented below.
  late final pulumi.Output<AuthConfigDecryptedCredential?> decryptedCredential;

  /// A description of the auth config.
  late final pulumi.Output<String?> description;

  /// The name of the auth config.
  late final pulumi.Output<String> displayName;

  /// Auth credential encrypted by Cloud KMS. Can be decrypted as Credential with proper KMS key.
  /// A base64-encoded string.
  late final pulumi.Output<String> encryptedCredential;

  /// User can define the time to receive notification after which the auth config becomes invalid. Support up to 30 days. Support granularity in hours.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final pulumi.Output<List<String>?> expiryNotificationDurations;

  /// The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  late final pulumi.Output<String> lastModifierEmail;

  /// Location in which client needs to be provisioned.
  late final pulumi.Output<String> location;

  /// Resource name of the auth config.
  late final pulumi.Output<String> name;

  /// User provided expiry time to override. For the example of Salesforce, username/password credentials can be valid for 6 months depending on the instance settings.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String?> overrideValidTime;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The reason / details of the current status.
  late final pulumi.Output<String> reason;

  /// The status of the auth config.
  late final pulumi.Output<String> state;

  /// The timestamp when the auth config is modified.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// The time until the auth config is valid. Empty or max value is considered the auth config won't expire.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> validTime;

  /// The visibility of the auth config.
  /// Possible values are: `PRIVATE`, `CLIENT_VISIBLE`.
  late final pulumi.Output<String?> visibility;

  /// Creates a new [AuthConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthConfig]. {@macro pulumi_applicationintegration_auth_config_auth_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthConfig(
    String name, {
    AuthConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:applicationintegration/authConfig:AuthConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateId = registerOutput<String>('certificateId');
    this.clientCertificate =
        registerOutput<AuthConfigClientCertificate?>('clientCertificate');
    this.createTime = registerOutput<String>('createTime');
    this.creatorEmail = registerOutput<String>('creatorEmail');
    this.credentialType = registerOutput<String>('credentialType');
    this.decryptedCredential =
        registerOutput<AuthConfigDecryptedCredential?>('decryptedCredential');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.encryptedCredential = registerOutput<String>('encryptedCredential');
    this.expiryNotificationDurations =
        registerOutput<List<String>?>('expiryNotificationDurations');
    this.lastModifierEmail = registerOutput<String>('lastModifierEmail');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.overrideValidTime = registerOutput<String?>('overrideValidTime');
    this.project = registerOutput<String>('project');
    this.reason = registerOutput<String>('reason');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.validTime = registerOutput<String>('validTime');
    this.visibility = registerOutput<String?>('visibility');
  }
}
