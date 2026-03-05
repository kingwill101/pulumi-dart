import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_application_args.dart';

/// Client application details.
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateProduct
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var clientApplication = new AzureNative.ApiManagement.ClientApplication("clientApplication", new()
///     {
///         ClientApplicationId = "testAppId",
///         Description = "This is just an example application",
///         DisplayName = "Test Application",
///         OwnerId = "/users/userId",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewClientApplication(ctx, "clientApplication", &apimanagement.ClientApplicationArgs{
/// 			ClientApplicationId: pulumi.String("testAppId"),
/// 			Description:         pulumi.String("This is just an example application"),
/// 			DisplayName:         pulumi.String("Test Application"),
/// 			OwnerId:             pulumi.String("/users/userId"),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			ServiceName:         pulumi.String("apimService1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.apimanagement.ClientApplication;
/// import com.pulumi.azurenative.apimanagement.ClientApplicationArgs;
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
///         var clientApplication = new ClientApplication("clientApplication", ClientApplicationArgs.builder()
///             .clientApplicationId("testAppId")
///             .description("This is just an example application")
///             .displayName("Test Application")
///             .ownerId("/users/userId")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const clientApplication = new azure_native.apimanagement.ClientApplication("clientApplication", {
///     clientApplicationId: "testAppId",
///     description: "This is just an example application",
///     displayName: "Test Application",
///     ownerId: "/users/userId",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// client_application = azure_native.apimanagement.ClientApplication("clientApplication",
///     client_application_id="testAppId",
///     description="This is just an example application",
///     display_name="Test Application",
///     owner_id="/users/userId",
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   clientApplication:
///     type: azure-native:apimanagement:ClientApplication
///     properties:
///       clientApplicationId: testAppId
///       description: This is just an example application
///       displayName: Test Application
///       ownerId: /users/userId
///       resourceGroupName: rg1
///       serviceName: apimService1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:apimanagement:ClientApplication testAppId /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/clientApplications/{clientApplicationId}
/// ```
class ClientApplication extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Client application description.
  late final pulumi.Output<String?> description;
  /// Client application name.
  late final pulumi.Output<String> displayName;
  /// Microsoft EntraID Application ID (Client ID). This is the value that is used to identify the application when it is requesting access tokens from Microsoft EntraID. This property is read-only and will be set by the system when the application is created.
  late final pulumi.Output<String> entraApplicationId;
  /// Tenant ID is a unique identifier (a GUID) for an organization directory in Microsoft’s cloud. It’s used to identify tenants across Microsoft services.
  late final pulumi.Output<String> entraTenantId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// A resource identifier for the user who owns the application.
  late final pulumi.Output<String> ownerId;
  /// Client application state. The value derives the state of an application based on the statuses of its associated ClientApplicationProductLinks.
  late final pulumi.Output<String> state;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ClientApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClientApplication]. {@macro pulumi_apimanagement_client_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClientApplication(
    String name, {
    ClientApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:ClientApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    entraApplicationId = registerOutput<String>('entraApplicationId');
    entraTenantId = registerOutput<String>('entraTenantId');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
  }
}
