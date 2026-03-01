import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_identifier_uri_args.dart';

/// Manages a single Identifier URI for an application registration.
///
/// This resource is analogous to the `identifier_uris` property in the `azuread.Application` resource. When using these resources together, you should use the `ignore_changes` lifecycle meta-argument (see example below).
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.OwnedBy` or `Application.ReadWrite.All`
///
/// > When using the `Application.ReadWrite.OwnedBy` application role, the principal being used to run Terraform must be an owner of the application.
///
/// When authenticated with a user principal, this resource may require one of the following directory roles: `Application Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.ApplicationRegistration("example", {displayName: "example"});
/// const exampleApplicationIdentifierUri = new azuread.ApplicationIdentifierUri("example", {
///     applicationId: example.id,
///     identifierUri: "https://app.example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.ApplicationRegistration("example", display_name="example")
/// example_application_identifier_uri = azuread.ApplicationIdentifierUri("example",
///     application_id=example.id,
///     identifier_uri="https://app.example.com")
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
///     var exampleApplicationIdentifierUri = new AzureAD.ApplicationIdentifierUri("example", new()
///     {
///         ApplicationId = example.Id,
///         IdentifierUri = "https://app.example.com",
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
/// 		_, err = azuread.NewApplicationIdentifierUri(ctx, "example", &azuread.ApplicationIdentifierUriArgs{
/// 			ApplicationId: example.ID(),
/// 			IdentifierUri: pulumi.String("https://app.example.com"),
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
/// import com.pulumi.azuread.ApplicationIdentifierUri;
/// import com.pulumi.azuread.ApplicationIdentifierUriArgs;
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
///         var exampleApplicationIdentifierUri = new ApplicationIdentifierUri("exampleApplicationIdentifierUri", ApplicationIdentifierUriArgs.builder()
///             .applicationId(example.id())
///             .identifierUri("https://app.example.com")
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
///   exampleApplicationIdentifierUri:
///     type: azuread:ApplicationIdentifierUri
///     name: example
///     properties:
///       applicationId: ${example.id}
///       identifierUri: https://app.example.com
/// ```
///
///
/// > **Tip** For managing multiple identifier URIs for the same application, create another instance of this resource
///
/// *Usage with azuread.Application resource*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.Application("example", {displayName: "example"});
/// const exampleApplicationIdentifierUri = new azuread.ApplicationIdentifierUri("example", {applicationId: example.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.Application("example", display_name="example")
/// example_application_identifier_uri = azuread.ApplicationIdentifierUri("example", application_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleApplicationIdentifierUri = new AzureAD.ApplicationIdentifierUri("example", new()
///     {
///         ApplicationId = example.Id,
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
/// 		example, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewApplicationIdentifierUri(ctx, "example", &azuread.ApplicationIdentifierUriArgs{
/// 			ApplicationId: example.ID(),
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
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.ApplicationIdentifierUri;
/// import com.pulumi.azuread.ApplicationIdentifierUriArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleApplicationIdentifierUri = new ApplicationIdentifierUri("exampleApplicationIdentifierUri", ApplicationIdentifierUriArgs.builder()
///             .applicationId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Application
///     properties:
///       displayName: example
///   exampleApplicationIdentifierUri:
///     type: azuread:ApplicationIdentifierUri
///     name: example
///     properties:
///       applicationId: ${example.id}
/// ```
///
///
/// ## Import
///
/// Application Identifier URIs can be imported using the object ID of the application and the base64-encoded identifier URI, in the following format.
///
/// ```sh
/// $ pulumi import azuread:index/applicationIdentifierUri:ApplicationIdentifierUri example /applications/00000000-0000-0000-0000-000000000000/identifierUris/aHR0cHM6Ly9leGFtcGxlLm5ldC8=
/// ```
class ApplicationIdentifierUri extends pulumi.CustomResource {
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationId;
  /// The user-defined URI that uniquely identifies an application within its Azure AD tenant, or within a verified custom domain if the application is multi-tenant. Changing this forces a new resource to be created.
  late final pulumi.Output<String> identifierUri;

  /// Creates a new [ApplicationIdentifierUri].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationIdentifierUri]. {@macro pulumi_index_application_identifier_uri_application_identifier_uri_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationIdentifierUri(
    String name, {
    ApplicationIdentifierUriArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationIdentifierUri:ApplicationIdentifierUri',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.identifierUri = registerOutput<String>('identifierUri');
  }
}
