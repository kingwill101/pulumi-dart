import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_product_link_args.dart';

/// Tag-product link details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateTagProductLink
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tagProductLink = new AzureNative.ApiManagement.TagProductLink("tagProductLink", new()
///     {
///         ProductId = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/product1",
///         ProductLinkId = "link1",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         TagId = "tag1",
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
/// 		_, err := apimanagement.NewTagProductLink(ctx, "tagProductLink", &apimanagement.TagProductLinkArgs{
/// 			ProductId:         pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/product1"),
/// 			ProductLinkId:     pulumi.String("link1"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			TagId:             pulumi.String("tag1"),
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
/// import com.pulumi.azurenative.apimanagement.TagProductLink;
/// import com.pulumi.azurenative.apimanagement.TagProductLinkArgs;
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
///         var tagProductLink = new TagProductLink("tagProductLink", TagProductLinkArgs.builder()
///             .productId("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/product1")
///             .productLinkId("link1")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .tagId("tag1")
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
/// const tagProductLink = new azure_native.apimanagement.TagProductLink("tagProductLink", {
///     productId: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/product1",
///     productLinkId: "link1",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     tagId: "tag1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// tag_product_link = azure_native.apimanagement.TagProductLink("tagProductLink",
///     product_id="/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/product1",
///     product_link_id="link1",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     tag_id="tag1")
///
/// ```
///
/// ```yaml
/// resources:
///   tagProductLink:
///     type: azure-native:apimanagement:TagProductLink
///     properties:
///       productId: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/product1
///       productLinkId: link1
///       resourceGroupName: rg1
///       serviceName: apimService1
///       tagId: tag1
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
/// $ pulumi import azure-native:apimanagement:TagProductLink link1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/tags/{tagId}/productLinks/{productLinkId}
/// ```
class TagProductLink extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Full resource Id of a product.
  late final pulumi.Output<String> productId;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [TagProductLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagProductLink]. {@macro pulumi_apimanagement_tag_product_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagProductLink(
    String name, {
    TagProductLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:TagProductLink',
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
