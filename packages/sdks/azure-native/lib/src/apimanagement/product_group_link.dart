import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_group_link_args.dart';

/// Product-group link details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateProductGroupLink
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var productGroupLink = new AzureNative.ApiManagement.ProductGroupLink("productGroupLink", new()
///     {
///         GroupId = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/groups/group1",
///         GroupLinkId = "link1",
///         ProductId = "testproduct",
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
/// 		_, err := apimanagement.NewProductGroupLink(ctx, "productGroupLink", &apimanagement.ProductGroupLinkArgs{
/// 			GroupId:           pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/groups/group1"),
/// 			GroupLinkId:       pulumi.String("link1"),
/// 			ProductId:         pulumi.String("testproduct"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
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
/// import com.pulumi.azurenative.apimanagement.ProductGroupLink;
/// import com.pulumi.azurenative.apimanagement.ProductGroupLinkArgs;
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
///         var productGroupLink = new ProductGroupLink("productGroupLink", ProductGroupLinkArgs.builder()
///             .groupId("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/groups/group1")
///             .groupLinkId("link1")
///             .productId("testproduct")
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
/// const productGroupLink = new azure_native.apimanagement.ProductGroupLink("productGroupLink", {
///     groupId: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/groups/group1",
///     groupLinkId: "link1",
///     productId: "testproduct",
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
/// product_group_link = azure_native.apimanagement.ProductGroupLink("productGroupLink",
///     group_id="/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/groups/group1",
///     group_link_id="link1",
///     product_id="testproduct",
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   productGroupLink:
///     type: azure-native:apimanagement:ProductGroupLink
///     properties:
///       groupId: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/groups/group1
///       groupLinkId: link1
///       productId: testproduct
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
/// $ pulumi import azure-native:apimanagement:ProductGroupLink link1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/products/{productId}/groupLinks/{groupLinkId}
/// ```
class ProductGroupLink extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Full resource Id of a group.
  late final pulumi.Output<String> groupId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ProductGroupLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProductGroupLink]. {@macro pulumi_apimanagement_product_group_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProductGroupLink(
    String name, {
    ProductGroupLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:ProductGroupLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.groupId = registerOutput<String>('groupId');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
  }
}
