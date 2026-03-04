import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_group_args.dart';

/// Contract details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateProductGroup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var productGroup = new AzureNative.ApiManagement.ProductGroup("productGroup", new()
///     {
///         GroupId = "templateGroup",
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
/// 		_, err := apimanagement.NewProductGroup(ctx, "productGroup", &apimanagement.ProductGroupArgs{
/// 			GroupId:           pulumi.String("templateGroup"),
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
/// import com.pulumi.azurenative.apimanagement.ProductGroup;
/// import com.pulumi.azurenative.apimanagement.ProductGroupArgs;
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
///         var productGroup = new ProductGroup("productGroup", ProductGroupArgs.builder()
///             .groupId("templateGroup")
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
/// const productGroup = new azure_native.apimanagement.ProductGroup("productGroup", {
///     groupId: "templateGroup",
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
/// product_group = azure_native.apimanagement.ProductGroup("productGroup",
///     group_id="templateGroup",
///     product_id="testproduct",
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   productGroup:
///     type: azure-native:apimanagement:ProductGroup
///     properties:
///       groupId: templateGroup
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
/// $ pulumi import azure-native:apimanagement:ProductGroup templateGroup /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/products/{productId}/groups/{groupId}
/// ```
class ProductGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// true if the group is one of the three system groups (Administrators, Developers, or Guests); otherwise false.
  late final pulumi.Output<bool> builtIn;

  /// Group description. Can contain HTML formatting tags.
  late final pulumi.Output<String?> description;

  /// Group name.
  late final pulumi.Output<String> displayName;

  /// For external groups, this property contains the id of the group from the external identity provider, e.g. for Azure Active Directory `aad://&lt;tenant&gt;.onmicrosoft.com/groups/&lt;group object id&gt;`; otherwise the value is null.
  late final pulumi.Output<String?> externalId;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ProductGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProductGroup]. {@macro pulumi_apimanagement_product_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProductGroup(
    String name, {
    ProductGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:ProductGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    builtIn = registerOutput<bool>('builtIn');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    externalId = registerOutput<String?>('externalId');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
