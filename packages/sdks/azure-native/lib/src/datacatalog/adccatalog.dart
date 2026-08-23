import 'package:pulumi/pulumi.dart' as pulumi;
import 'adccatalog_args.dart';

/// Azure Data Catalog.
///
/// Uses Azure REST API version 2016-03-30. In version 2.x of the Azure Native provider, it used API version 2016-03-30.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Azure Data Catalog Service
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var adcCatalog = new AzureNative.DataCatalog.ADCCatalog("adcCatalog", new()
///     {
///         Admins = new[]
///         {
///             new AzureNative.DataCatalog.Inputs.PrincipalsArgs
///             {
///                 ObjectId = "99999999-9999-9999-999999999999",
///                 Upn = "myupn@microsoft.com",
///             },
///         },
///         CatalogName = "exampleCatalog",
///         EnableAutomaticUnitAdjustment = false,
///         Location = "North US",
///         ResourceGroupName = "exampleResourceGroup",
///         Sku = AzureNative.DataCatalog.SkuType.Standard,
///         Tags =
///         {
///             { "mykey", "myvalue" },
///             { "mykey2", "myvalue2" },
///         },
///         Units = 1,
///         Users = new[]
///         {
///             new AzureNative.DataCatalog.Inputs.PrincipalsArgs
///             {
///                 ObjectId = "99999999-9999-9999-999999999999",
///                 Upn = "myupn@microsoft.com",
///             },
///         },
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
/// 	datacatalog "github.com/pulumi/pulumi-azure-native-sdk/datacatalog/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datacatalog.NewADCCatalog(ctx, "adcCatalog", &datacatalog.ADCCatalogArgs{
/// 			Admins: datacatalog.PrincipalsArray{
/// 				&datacatalog.PrincipalsArgs{
/// 					ObjectId: pulumi.String("99999999-9999-9999-999999999999"),
/// 					Upn:      pulumi.String("myupn@microsoft.com"),
/// 				},
/// 			},
/// 			CatalogName:                   pulumi.String("exampleCatalog"),
/// 			EnableAutomaticUnitAdjustment: pulumi.Bool(false),
/// 			Location:                      pulumi.String("North US"),
/// 			ResourceGroupName:             pulumi.String("exampleResourceGroup"),
/// 			Sku:                           pulumi.String(datacatalog.SkuTypeStandard),
/// 			Tags: pulumi.StringMap{
/// 				"mykey":  pulumi.String("myvalue"),
/// 				"mykey2": pulumi.String("myvalue2"),
/// 			},
/// 			Units: pulumi.Int(1),
/// 			Users: datacatalog.PrincipalsArray{
/// 				&datacatalog.PrincipalsArgs{
/// 					ObjectId: pulumi.String("99999999-9999-9999-999999999999"),
/// 					Upn:      pulumi.String("myupn@microsoft.com"),
/// 				},
/// 			},
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
/// resource "azure-native_datacatalog_adccatalog" "adcCatalog" {
///   admins {
///     object_id = "99999999-9999-9999-999999999999"
///     upn       = "myupn@microsoft.com"
///   }
///   catalog_name                     = "exampleCatalog"
///   enable_automatic_unit_adjustment = false
///   location                         = "North US"
///   resource_group_name              = "exampleResourceGroup"
///   sku                              = "Standard"
///   tags = {
///     "mykey"  = "myvalue"
///     "mykey2" = "myvalue2"
///   }
///   units = 1
///   users {
///     object_id = "99999999-9999-9999-999999999999"
///     upn       = "myupn@microsoft.com"
///   }
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
/// import com.pulumi.azurenative.datacatalog.ADCCatalog;
/// import com.pulumi.azurenative.datacatalog.ADCCatalogArgs;
/// import com.pulumi.azurenative.datacatalog.inputs.PrincipalsArgs;
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
///         var adcCatalog = new ADCCatalog("adcCatalog", ADCCatalogArgs.builder()
///             .admins(PrincipalsArgs.builder()
///                 .objectId("99999999-9999-9999-999999999999")
///                 .upn("myupn@microsoft.com")
///                 .build())
///             .catalogName("exampleCatalog")
///             .enableAutomaticUnitAdjustment(false)
///             .location("North US")
///             .resourceGroupName("exampleResourceGroup")
///             .sku("Standard")
///             .tags(Map.ofEntries(
///                 Map.entry("mykey", "myvalue"),
///                 Map.entry("mykey2", "myvalue2")
///             ))
///             .units(1)
///             .users(PrincipalsArgs.builder()
///                 .objectId("99999999-9999-9999-999999999999")
///                 .upn("myupn@microsoft.com")
///                 .build())
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
/// const adcCatalog = new azure_native.datacatalog.ADCCatalog("adcCatalog", {
///     admins: [{
///         objectId: "99999999-9999-9999-999999999999",
///         upn: "myupn@microsoft.com",
///     }],
///     catalogName: "exampleCatalog",
///     enableAutomaticUnitAdjustment: false,
///     location: "North US",
///     resourceGroupName: "exampleResourceGroup",
///     sku: azure_native.datacatalog.SkuType.Standard,
///     tags: {
///         mykey: "myvalue",
///         mykey2: "myvalue2",
///     },
///     units: 1,
///     users: [{
///         objectId: "99999999-9999-9999-999999999999",
///         upn: "myupn@microsoft.com",
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// adc_catalog = azure_native.datacatalog.ADCCatalog("adcCatalog",
///     admins=[{
///         "object_id": "99999999-9999-9999-999999999999",
///         "upn": "myupn@microsoft.com",
///     }],
///     catalog_name="exampleCatalog",
///     enable_automatic_unit_adjustment=False,
///     location="North US",
///     resource_group_name="exampleResourceGroup",
///     sku=azure_native.datacatalog.SkuType.STANDARD,
///     tags={
///         "mykey": "myvalue",
///         "mykey2": "myvalue2",
///     },
///     units=1,
///     users=[{
///         "object_id": "99999999-9999-9999-999999999999",
///         "upn": "myupn@microsoft.com",
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   adcCatalog:
///     type: azure-native:datacatalog:ADCCatalog
///     properties:
///       admins:
///         - objectId: 99999999-9999-9999-999999999999
///           upn: myupn@microsoft.com
///       catalogName: exampleCatalog
///       enableAutomaticUnitAdjustment: false
///       location: North US
///       resourceGroupName: exampleResourceGroup
///       sku: Standard
///       tags:
///         mykey: myvalue
///         mykey2: myvalue2
///       units: 1
///       users:
///         - objectId: 99999999-9999-9999-999999999999
///           upn: myupn@microsoft.com
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
/// $ pulumi import azure-native:datacatalog:ADCCatalog exampleCatalog /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataCatalog/catalogs/{catalogName}
/// ```
class ADCCatalog extends pulumi.CustomResource {
  /// Azure data catalog admin list.
  late final pulumi.Output<List<Map<String, dynamic>>?> admins;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Automatic unit adjustment enabled or not.
  late final pulumi.Output<bool?> enableAutomaticUnitAdjustment;
  /// Resource etag
  late final pulumi.Output<String?> etag;
  /// Resource location
  late final pulumi.Output<String?> location;
  /// Resource name
  late final pulumi.Output<String> name;
  /// Azure data catalog SKU.
  late final pulumi.Output<String?> sku;
  /// Azure data catalog provision status.
  late final pulumi.Output<bool?> successfullyProvisioned;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type
  late final pulumi.Output<String> type;
  /// Azure data catalog units.
  late final pulumi.Output<int?> units;
  /// Azure data catalog user list.
  late final pulumi.Output<List<Map<String, dynamic>>?> users;

  /// Creates a new [ADCCatalog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ADCCatalog]. {@macro pulumi_datacatalog_adccatalog_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ADCCatalog(
    String name, {
    ADCCatalogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datacatalog:ADCCatalog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    admins = registerOutput<List<Map<String, dynamic>>?>('admins');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    enableAutomaticUnitAdjustment = registerOutput<bool?>('enableAutomaticUnitAdjustment');
    etag = registerOutput<String?>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    sku = registerOutput<String?>('sku');
    successfullyProvisioned = registerOutput<bool?>('successfullyProvisioned');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    units = registerOutput<int?>('units');
    users = registerOutput<List<Map<String, dynamic>>?>('users');
  }
}
