import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_owner_args.dart';

/// Manages a single owner of an application registration.
///
/// > This resource is incompatible with the `azuread.Application` resource, instead use this with the `azuread.ApplicationRegistration` resource.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.OwnedBy` or `Application.ReadWrite.All`
///
/// > When using the `Application.ReadWrite.OwnedBy` application role, the principal being used to run Pulumi must be an owner of the application.
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
/// const jane = new azuread.User("jane", {
///     userPrincipalName: "jane.fischer@example.com",
///     displayName: "Jane Fischer",
///     password: "Ch@ngeMe",
/// });
/// const exampleJane = new azuread.ApplicationOwner("example_jane", {
///     applicationId: example.id,
///     ownerObjectId: jane.objectId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.ApplicationRegistration("example", display_name="example")
/// jane = azuread.User("jane",
///     user_principal_name="jane.fischer@example.com",
///     display_name="Jane Fischer",
///     password="Ch@ngeMe")
/// example_jane = azuread.ApplicationOwner("example_jane",
///     application_id=example.id,
///     owner_object_id=jane.object_id)
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
///     var jane = new AzureAD.User("jane", new()
///     {
///         UserPrincipalName = "jane.fischer@example.com",
///         DisplayName = "Jane Fischer",
///         Password = "Ch@ngeMe",
///     });
///
///     var exampleJane = new AzureAD.ApplicationOwner("example_jane", new()
///     {
///         ApplicationId = example.Id,
///         OwnerObjectId = jane.ObjectId,
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
/// 		jane, err := azuread.NewUser(ctx, "jane", &azuread.UserArgs{
/// 			UserPrincipalName: pulumi.String("jane.fischer@example.com"),
/// 			DisplayName:       pulumi.String("Jane Fischer"),
/// 			Password:          pulumi.String("Ch@ngeMe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewApplicationOwner(ctx, "example_jane", &azuread.ApplicationOwnerArgs{
/// 			ApplicationId: example.ID(),
/// 			OwnerObjectId: jane.ObjectId,
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
/// import com.pulumi.azuread.User;
/// import com.pulumi.azuread.UserArgs;
/// import com.pulumi.azuread.ApplicationOwner;
/// import com.pulumi.azuread.ApplicationOwnerArgs;
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
///         var jane = new User("jane", UserArgs.builder()
///             .userPrincipalName("jane.fischer@example.com")
///             .displayName("Jane Fischer")
///             .password("Ch@ngeMe")
///             .build());
///
///         var exampleJane = new ApplicationOwner("exampleJane", ApplicationOwnerArgs.builder()
///             .applicationId(example.id())
///             .ownerObjectId(jane.objectId())
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
///   jane:
///     type: azuread:User
///     properties:
///       userPrincipalName: jane.fischer@example.com
///       displayName: Jane Fischer
///       password: Ch@ngeMe
///   exampleJane:
///     type: azuread:ApplicationOwner
///     name: example_jane
///     properties:
///       applicationId: ${example.id}
///       ownerObjectId: ${jane.objectId}
/// ```
///
///
/// > **Tip** For managing more application owners, create additional instances of this resource
///
/// ## Import
///
/// Application Owners can be imported using the object ID of the application and the object ID of the owner, in the following format.
///
/// ```sh
/// $ pulumi import azuread:index/applicationOwner:ApplicationOwner example /applications/00000000-0000-0000-0000-000000000000/owners/11111111-1111-1111-1111-111111111111
/// ```
class ApplicationOwner extends pulumi.CustomResource {
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationId;
  /// The object ID of the owner to assign to the application, typically a user or service principal. Changing this forces a new resource to be created.
  late final pulumi.Output<String> ownerObjectId;

  /// Creates a new [ApplicationOwner].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationOwner]. {@macro pulumi_index_application_owner_application_owner_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationOwner(
    String name, {
    ApplicationOwnerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationOwner:ApplicationOwner',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.ownerObjectId = registerOutput<String>('ownerObjectId');
  }
}
