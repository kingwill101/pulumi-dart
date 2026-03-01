import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';

/// Manages an API Management User.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "My Company",
///     publisherEmail: "company@exmaple.com",
///     skuName: "Developer_1",
/// });
/// const exampleUser = new azure.apimanagement.User("example", {
///     userId: "5931a75ae4bbd512288c680b",
///     apiManagementName: exampleService.name,
///     resourceGroupName: example.name,
///     firstName: "Example",
///     lastName: "User",
///     email: "user@example.com",
///     state: "active",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="My Company",
///     publisher_email="company@exmaple.com",
///     sku_name="Developer_1")
/// example_user = azure.apimanagement.User("example",
///     user_id="5931a75ae4bbd512288c680b",
///     api_management_name=example_service.name,
///     resource_group_name=example.name,
///     first_name="Example",
///     last_name="User",
///     email="user@example.com",
///     state="active")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apim",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PublisherName = "My Company",
///         PublisherEmail = "company@exmaple.com",
///         SkuName = "Developer_1",
///     });
///
///     var exampleUser = new Azure.ApiManagement.User("example", new()
///     {
///         UserId = "5931a75ae4bbd512288c680b",
///         ApiManagementName = exampleService.Name,
///         ResourceGroupName = example.Name,
///         FirstName = "Example",
///         LastName = "User",
///         Email = "user@example.com",
///         State = "active",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("My Company"),
/// 			PublisherEmail:    pulumi.String("company@exmaple.com"),
/// 			SkuName:           pulumi.String("Developer_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewUser(ctx, "example", &apimanagement.UserArgs{
/// 			UserId:            pulumi.String("5931a75ae4bbd512288c680b"),
/// 			ApiManagementName: exampleService.Name,
/// 			ResourceGroupName: example.Name,
/// 			FirstName:         pulumi.String("Example"),
/// 			LastName:          pulumi.String("User"),
/// 			Email:             pulumi.String("user@example.com"),
/// 			State:             pulumi.String("active"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.apimanagement.User;
/// import com.pulumi.azure.apimanagement.UserArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apim")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .publisherName("My Company")
///             .publisherEmail("company@exmaple.com")
///             .skuName("Developer_1")
///             .build());
///
///         var exampleUser = new User("exampleUser", UserArgs.builder()
///             .userId("5931a75ae4bbd512288c680b")
///             .apiManagementName(exampleService.name())
///             .resourceGroupName(example.name())
///             .firstName("Example")
///             .lastName("User")
///             .email("user@example.com")
///             .state("active")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apim
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       publisherName: My Company
///       publisherEmail: company@exmaple.com
///       skuName: Developer_1
///   exampleUser:
///     type: azure:apimanagement:User
///     name: example
///     properties:
///       userId: 5931a75ae4bbd512288c680b
///       apiManagementName: ${exampleService.name}
///       resourceGroupName: ${example.name}
///       firstName: Example
///       lastName: User
///       email: user@example.com
///       state: active
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management Users can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/user:User example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/users/abc123
/// ```
class User extends pulumi.CustomResource {
  /// The name of the API Management Service in which the User should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The kind of confirmation email which will be sent to this user. Possible values are `invite` and `signup`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> confirmation;
  /// The email address associated with this user.
  late final pulumi.Output<String> email;
  /// The first name for this user.
  late final pulumi.Output<String> firstName;
  /// The last name for this user.
  late final pulumi.Output<String> lastName;
  /// A note about this user.
  late final pulumi.Output<String?> note;
  /// The password associated with this user.
  late final pulumi.Output<String?> password;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The state of this user. Possible values are `active`, `blocked` and `pending`.
  ///
  /// > **Note:** the State can be changed from Pending > Active/Blocked but not from Active/Blocked > Pending.
  late final pulumi.Output<String> state;
  /// The Identifier for this User, which must be unique within the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> userId;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_apimanagement_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.confirmation = registerOutput<String?>('confirmation');
    this.email = registerOutput<String>('email');
    this.firstName = registerOutput<String>('firstName');
    this.lastName = registerOutput<String>('lastName');
    this.note = registerOutput<String?>('note');
    this.password = registerOutput<String?>('password');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.state = registerOutput<String>('state');
    this.userId = registerOutput<String>('userId');
  }
}
