import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_args.dart';
import 'system_data_response.dart';

/// An Azure Sphere catalog
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Catalogs_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var catalog = new AzureNative.AzureSphere.Catalog("catalog", new()
///     {
///         CatalogName = "MyCatalog1",
///         Location = "global",
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
/// 		_, err := azuresphere.NewCatalog(ctx, "catalog", &azuresphere.CatalogArgs{
/// 			CatalogName:       pulumi.String("MyCatalog1"),
/// 			Location:          pulumi.String("global"),
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
/// import com.pulumi.azurenative.azuresphere.Catalog;
/// import com.pulumi.azurenative.azuresphere.CatalogArgs;
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
///         var catalog = new Catalog("catalog", CatalogArgs.builder()
///             .catalogName("MyCatalog1")
///             .location("global")
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
/// const catalog = new azure_native.azuresphere.Catalog("catalog", {
///     catalogName: "MyCatalog1",
///     location: "global",
///     resourceGroupName: "MyResourceGroup1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// catalog = azure_native.azuresphere.Catalog("catalog",
///     catalog_name="MyCatalog1",
///     location="global",
///     resource_group_name="MyResourceGroup1")
///
/// ```
///
/// ```yaml
/// resources:
///   catalog:
///     type: azure-native:azuresphere:Catalog
///     properties:
///       catalogName: MyCatalog1
///       location: global
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
/// $ pulumi import azure-native:azuresphere:Catalog MyCatalog1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureSphere/catalogs/{catalogName}
/// ```
class Catalog extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The Azure Sphere tenant ID associated with the catalog.
  late final pulumi.Output<String> tenantId;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Catalog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Catalog]. {@macro pulumi_azuresphere_catalog_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Catalog(
    String name, {
    CatalogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:azuresphere:Catalog',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}
