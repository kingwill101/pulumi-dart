import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_args.dart';
import 'system_data_response.dart';

/// An product resource belonging to a catalog resource.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Products_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var product = new AzureNative.AzureSphere.Product("product", new()
///     {
///         CatalogName = "MyCatalog1",
///         ProductName = "MyProduct1",
///         ResourceGroupName = "MyResourceGroup1",
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
/// 	azuresphere "github.com/pulumi/pulumi-azure-native-sdk/azuresphere/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuresphere.NewProduct(ctx, "product", &azuresphere.ProductArgs{
/// 			CatalogName:       pulumi.String("MyCatalog1"),
/// 			ProductName:       pulumi.String("MyProduct1"),
/// 			ResourceGroupName: pulumi.String("MyResourceGroup1"),
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
/// import com.pulumi.azurenative.azuresphere.Product;
/// import com.pulumi.azurenative.azuresphere.ProductArgs;
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
///         var product = new Product("product", ProductArgs.builder()
///             .catalogName("MyCatalog1")
///             .productName("MyProduct1")
///             .resourceGroupName("MyResourceGroup1")
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
/// const product = new azure_native.azuresphere.Product("product", {
///     catalogName: "MyCatalog1",
///     productName: "MyProduct1",
///     resourceGroupName: "MyResourceGroup1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// product = azure_native.azuresphere.Product("product",
///     catalog_name="MyCatalog1",
///     product_name="MyProduct1",
///     resource_group_name="MyResourceGroup1")
///
/// ```
///
/// ```yaml
/// resources:
///   product:
///     type: azure-native:azuresphere:Product
///     properties:
///       catalogName: MyCatalog1
///       productName: MyProduct1
///       resourceGroupName: MyResourceGroup1
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
/// $ pulumi import azure-native:azuresphere:Product MyProduct1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureSphere/catalogs/{catalogName}/products/{productName}
/// ```
class Product extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Description of the product
  late final pulumi.Output<String?> description;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Product].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Product]. {@macro pulumi_azuresphere_product_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Product(
    String name, {
    ProductArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azuresphere:Product',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
