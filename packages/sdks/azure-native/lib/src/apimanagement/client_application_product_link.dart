import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_application_product_link_args.dart';

/// Specifies Client Application - Product link assignment
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateClientApplicationProductLink
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var clientApplicationProductLink = new AzureNative.ApiManagement.ClientApplicationProductLink("clientApplicationProductLink", new()
///     {
///         ClientApplicationId = "testAppId",
///         ClientApplicationProductLinkId = "link1",
///         ProductId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/starter",
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
/// 		_, err := apimanagement.NewClientApplicationProductLink(ctx, "clientApplicationProductLink", &apimanagement.ClientApplicationProductLinkArgs{
/// 			ClientApplicationId:            pulumi.String("testAppId"),
/// 			ClientApplicationProductLinkId: pulumi.String("link1"),
/// 			ProductId:                      pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/starter"),
/// 			ResourceGroupName:              pulumi.String("rg1"),
/// 			ServiceName:                    pulumi.String("apimService1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_apimanagement_clientapplicationproductlink" "clientApplicationProductLink" {
///   client_application_id              = "testAppId"
///   client_application_product_link_id = "link1"
///   product_id                         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/starter"
///   resource_group_name                = "rg1"
///   service_name                       = "apimService1"
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
/// import com.pulumi.azurenative.apimanagement.ClientApplicationProductLink;
/// import com.pulumi.azurenative.apimanagement.ClientApplicationProductLinkArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var clientApplicationProductLink = new ClientApplicationProductLink("clientApplicationProductLink", ClientApplicationProductLinkArgs.builder()
///             .clientApplicationId("testAppId")
///             .clientApplicationProductLinkId("link1")
///             .productId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/starter")
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
/// const clientApplicationProductLink = new azure_native.apimanagement.ClientApplicationProductLink("clientApplicationProductLink", {
///     clientApplicationId: "testAppId",
///     clientApplicationProductLinkId: "link1",
///     productId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/starter",
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
/// client_application_product_link = azure_native.apimanagement.ClientApplicationProductLink("clientApplicationProductLink",
///     client_application_id="testAppId",
///     client_application_product_link_id="link1",
///     product_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/starter",
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   clientApplicationProductLink:
///     type: azure-native:apimanagement:ClientApplicationProductLink
///     properties:
///       clientApplicationId: testAppId
///       clientApplicationProductLinkId: link1
///       productId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/starter
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
/// $ pulumi import azure-native:apimanagement:ClientApplicationProductLink link1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/clientApplications/{clientApplicationId}/productLinks/{clientApplicationProductLinkId}
/// ```
class ClientApplicationProductLink extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The unique resource identifier of the Product.
  late final pulumi.Output<String> productId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ClientApplicationProductLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClientApplicationProductLink]. {@macro pulumi_apimanagement_client_application_product_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClientApplicationProductLink(
    String name, {
    ClientApplicationProductLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:ClientApplicationProductLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    productId = registerOutput<String>('productId');
    type = registerOutput<String>('type');
  }
}
