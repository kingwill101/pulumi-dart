import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_flexible_federated_identity_credential_args.dart';

/// Manages a flexible federated identity credential associated with an application within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.OwnedBy` or `Application.ReadWrite.All`
///
/// > When using the `Application.ReadWrite.OwnedBy` application role, the principal being used to run Terraform must be an owner of the application.
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Application Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.ApplicationRegistration("example", {displayName: "example"});
/// const exampleApplicationFlexibleFederatedIdentityCredential = new azuread.ApplicationFlexibleFederatedIdentityCredential("example", {
///     applicationId: example.id,
///     claimsMatchingExpression: "claims['sub'] matches 'repo:contoso/contoso-repo:ref:refs/heads/*' and claims['job_workflow_ref'] matches 'contoso/contoso-prod/.github/workflows/*.yml@refs/heads/main'",
///     displayName: "my-repo-deploy",
///     description: "Deployments for my-repo",
///     audience: "api://AzureADTokenExchange",
///     issuer: "https://token.actions.githubusercontent.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.ApplicationRegistration("example", display_name="example")
/// example_application_flexible_federated_identity_credential = azuread.ApplicationFlexibleFederatedIdentityCredential("example",
///     application_id=example.id,
///     claims_matching_expression="claims['sub'] matches 'repo:contoso/contoso-repo:ref:refs/heads/*' and claims['job_workflow_ref'] matches 'contoso/contoso-prod/.github/workflows/*.yml@refs/heads/main'",
///     display_name="my-repo-deploy",
///     description="Deployments for my-repo",
///     audience="api://AzureADTokenExchange",
///     issuer="https://token.actions.githubusercontent.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.ApplicationRegistration("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleApplicationFlexibleFederatedIdentityCredential = new AzureAD.ApplicationFlexibleFederatedIdentityCredential("example", new()
///     {
///         ApplicationId = example.Id,
///         ClaimsMatchingExpression = "claims['sub'] matches 'repo:contoso/contoso-repo:ref:refs/heads/*' and claims['job_workflow_ref'] matches 'contoso/contoso-prod/.github/workflows/*.yml@refs/heads/main'",
///         DisplayName = "my-repo-deploy",
///         Description = "Deployments for my-repo",
///         Audience = "api://AzureADTokenExchange",
///         Issuer = "https://token.actions.githubusercontent.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := azuread.NewApplicationRegistration(ctx, "example", &azuread.ApplicationRegistrationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewApplicationFlexibleFederatedIdentityCredential(ctx, "example", &azuread.ApplicationFlexibleFederatedIdentityCredentialArgs{
/// 			ApplicationId:            example.ID(),
/// 			ClaimsMatchingExpression: pulumi.String("claims['sub'] matches 'repo:contoso/contoso-repo:ref:refs/heads/*' and claims['job_workflow_ref'] matches 'contoso/contoso-prod/.github/workflows/*.yml@refs/heads/main'"),
/// 			DisplayName:              pulumi.String("my-repo-deploy"),
/// 			Description:              pulumi.String("Deployments for my-repo"),
/// 			Audience:                 pulumi.String("api://AzureADTokenExchange"),
/// 			Issuer:                   pulumi.String("https://token.actions.githubusercontent.com"),
/// 		})
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
/// import com.pulumi.azuread.ApplicationRegistration;
/// import com.pulumi.azuread.ApplicationRegistrationArgs;
/// import com.pulumi.azuread.ApplicationFlexibleFederatedIdentityCredential;
/// import com.pulumi.azuread.ApplicationFlexibleFederatedIdentityCredentialArgs;
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
///         var example = new ApplicationRegistration("example", ApplicationRegistrationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleApplicationFlexibleFederatedIdentityCredential = new ApplicationFlexibleFederatedIdentityCredential("exampleApplicationFlexibleFederatedIdentityCredential", ApplicationFlexibleFederatedIdentityCredentialArgs.builder()
///             .applicationId(example.id())
///             .claimsMatchingExpression("claims['sub'] matches 'repo:contoso/contoso-repo:ref:refs/heads/*' and claims['job_workflow_ref'] matches 'contoso/contoso-prod/.github/workflows/*.yml@refs/heads/main'")
///             .displayName("my-repo-deploy")
///             .description("Deployments for my-repo")
///             .audience("api://AzureADTokenExchange")
///             .issuer("https://token.actions.githubusercontent.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:ApplicationRegistration
///     properties:
///       displayName: example
///   exampleApplicationFlexibleFederatedIdentityCredential:
///     type: azuread:ApplicationFlexibleFederatedIdentityCredential
///     name: example
///     properties:
///       applicationId: ${example.id}
///       claimsMatchingExpression: claims['sub'] matches 'repo:contoso/contoso-repo:ref:refs/heads/*' and claims['job_workflow_ref'] matches 'contoso/contoso-prod/.github/workflows/*.yml@refs/heads/main'
///       displayName: my-repo-deploy
///       description: Deployments for my-repo
///       audience: api://AzureADTokenExchange
///       issuer: https://token.actions.githubusercontent.com
/// ```
///
///
/// ## Import
///
/// Flexible Federated Identity Credentials can be imported using the object ID of the associated application and the ID of the flexible federated identity credential, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/applicationFlexibleFederatedIdentityCredential:ApplicationFlexibleFederatedIdentityCredential example 00000000-0000-0000-0000-000000000000/federatedIdentityCredential/11111111-1111-1111-1111-111111111111
/// ```
///
/// > This ID format is unique to Terraform and is composed of the application's object ID, the string "federatedIdentityCredential" and the credential ID in the format `{ObjectId}/federatedIdentityCredential/{CredentialId}`.
class ApplicationFlexibleFederatedIdentityCredential extends pulumi.CustomResource {
  /// The resource ID of the application for which this federated identity credential should be created. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> applicationId;
  /// The audience that can appear in the external token. This specifies what should be accepted in the `aud` claim of incoming tokens.
  late final pulumi.Output<String> audience;
  /// The expression to match for claims. See the Preview Documentation for more information.
  late final pulumi.Output<String> claimsMatchingExpression;
  /// A UUID used to uniquely identify this federated identity credential.
  late final pulumi.Output<String> credentialId;
  /// A description for the federated identity credential.
  late final pulumi.Output<String?> description;
  /// A unique display name for the federated identity credential. Changing this forces a new resource to be created.
  late final pulumi.Output<String> displayName;
  /// The URL of the external identity provider, which must match the issuer claim of the external token being exchanged.
  late final pulumi.Output<String> issuer;

  /// Creates a new [ApplicationFlexibleFederatedIdentityCredential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationFlexibleFederatedIdentityCredential]. {@macro pulumi_index_application_flexible_federated_identity_credential_application_flexible_federated_identity_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationFlexibleFederatedIdentityCredential(
    String name, {
    ApplicationFlexibleFederatedIdentityCredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationFlexibleFederatedIdentityCredential:ApplicationFlexibleFederatedIdentityCredential',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.audience = registerOutput<String>('audience');
    this.claimsMatchingExpression = registerOutput<String>('claimsMatchingExpression');
    this.credentialId = registerOutput<String>('credentialId');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.issuer = registerOutput<String>('issuer');
  }
}
