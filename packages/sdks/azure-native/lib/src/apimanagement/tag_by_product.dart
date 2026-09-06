import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_by_product_args.dart';

/// Tag Contract details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateProductTag
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tagByProduct = new AzureNative.ApiManagement.TagByProduct("tagByProduct", new()
///     {
///         ProductId = "5931a75ae4bbd512a88c680b",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         TagId = "tagId1",
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
/// 		_, err := apimanagement.NewTagByProduct(ctx, "tagByProduct", &apimanagement.TagByProductArgs{
/// 			ProductId:         pulumi.String("5931a75ae4bbd512a88c680b"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			TagId:             pulumi.String("tagId1"),
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
/// resource "azure-native_apimanagement_tagbyproduct" "tagByProduct" {
///   product_id          = "5931a75ae4bbd512a88c680b"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   tag_id              = "tagId1"
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
/// import com.pulumi.azurenative.apimanagement.TagByProduct;
/// import com.pulumi.azurenative.apimanagement.TagByProductArgs;
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
///         var tagByProduct = new TagByProduct("tagByProduct", TagByProductArgs.builder()
///             .productId("5931a75ae4bbd512a88c680b")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .tagId("tagId1")
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
/// const tagByProduct = new azure_native.apimanagement.TagByProduct("tagByProduct", {
///     productId: "5931a75ae4bbd512a88c680b",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     tagId: "tagId1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// tag_by_product = azure_native.apimanagement.TagByProduct("tagByProduct",
///     product_id="5931a75ae4bbd512a88c680b",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     tag_id="tagId1")
///
/// ```
///
/// ```yaml
/// resources:
///   tagByProduct:
///     type: azure-native:apimanagement:TagByProduct
///     properties:
///       productId: 5931a75ae4bbd512a88c680b
///       resourceGroupName: rg1
///       serviceName: apimService1
///       tagId: tagId1
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
/// $ pulumi import azure-native:apimanagement:TagByProduct tagId1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/products/{productId}/tags/{tagId}
/// ```
class TagByProduct extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Tag name.
  late final pulumi.Output<String> displayName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [TagByProduct].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagByProduct]. {@macro pulumi_apimanagement_tag_by_product_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagByProduct(
    String name, {
    TagByProductArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:TagByProduct',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [TagByProduct] resource.
  TagByProduct.reference(String urn)
    : super(
        'azure-native:apimanagement:TagByProduct',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
