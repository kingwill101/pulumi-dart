import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'my_sqlsite_args.dart';
import 'system_data_response.dart';

/// The MySQLSite resource definition.
///
/// Uses Azure REST API version 2024-09-30-preview. In version 2.x of the Azure Native provider, it used API version 2024-09-30-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MySQLSites_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mySQLSite = new AzureNative.MySQLDiscovery.MySQLSite("mySQLSite", new()
///     {
///         ExtendedLocation = new AzureNative.MySQLDiscovery.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///             Type = "customLocation",
///         },
///         Location = "East US",
///         MasterSiteId = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.OffAzure/MasterSites/xxx",
///         MigrateProjectId = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourcegroups/demoRG/providers/microsoft.migrate/migrateprojects/xxx",
///         ResourceGroupName = "testrg",
///         SiteName = "testSite",
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
/// 	mysqldiscovery "github.com/pulumi/pulumi-azure-native-sdk/mysqldiscovery/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mysqldiscovery.NewMySQLSite(ctx, "mySQLSite", &mysqldiscovery.MySQLSiteArgs{
/// 			ExtendedLocation: &mysqldiscovery.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso"),
/// 				Type: pulumi.String("customLocation"),
/// 			},
/// 			Location:          pulumi.String("East US"),
/// 			MasterSiteId:      pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.OffAzure/MasterSites/xxx"),
/// 			MigrateProjectId:  pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourcegroups/demoRG/providers/microsoft.migrate/migrateprojects/xxx"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			SiteName:          pulumi.String("testSite"),
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
/// resource "azure-native_mysqldiscovery_mysqlsite" "mySQLSite" {
///   extended_location = {
///     name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso"
///     type = "customLocation"
///   }
///   location            = "East US"
///   master_site_id      = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.OffAzure/MasterSites/xxx"
///   migrate_project_id  = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourcegroups/demoRG/providers/microsoft.migrate/migrateprojects/xxx"
///   resource_group_name = "testrg"
///   site_name           = "testSite"
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
/// import com.pulumi.azurenative.mysqldiscovery.MySQLSite;
/// import com.pulumi.azurenative.mysqldiscovery.MySQLSiteArgs;
/// import com.pulumi.azurenative.mysqldiscovery.inputs.ExtendedLocationArgs;
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
///         var mySQLSite = new MySQLSite("mySQLSite", MySQLSiteArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso")
///                 .type("customLocation")
///                 .build())
///             .location("East US")
///             .masterSiteId("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.OffAzure/MasterSites/xxx")
///             .migrateProjectId("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourcegroups/demoRG/providers/microsoft.migrate/migrateprojects/xxx")
///             .resourceGroupName("testrg")
///             .siteName("testSite")
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
/// const mySQLSite = new azure_native.mysqldiscovery.MySQLSite("mySQLSite", {
///     extendedLocation: {
///         name: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         type: "customLocation",
///     },
///     location: "East US",
///     masterSiteId: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.OffAzure/MasterSites/xxx",
///     migrateProjectId: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourcegroups/demoRG/providers/microsoft.migrate/migrateprojects/xxx",
///     resourceGroupName: "testrg",
///     siteName: "testSite",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// my_sql_site = azure_native.mysqldiscovery.MySQLSite("mySQLSite",
///     extended_location={
///         "name": "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         "type": "customLocation",
///     },
///     location="East US",
///     master_site_id="/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.OffAzure/MasterSites/xxx",
///     migrate_project_id="/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourcegroups/demoRG/providers/microsoft.migrate/migrateprojects/xxx",
///     resource_group_name="testrg",
///     site_name="testSite")
///
/// ```
///
/// ```yaml
/// resources:
///   mySQLSite:
///     type: azure-native:mysqldiscovery:MySQLSite
///     properties:
///       extendedLocation:
///         name: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso
///         type: customLocation
///       location: East US
///       masterSiteId: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.OffAzure/MasterSites/xxx
///       migrateProjectId: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourcegroups/demoRG/providers/microsoft.migrate/migrateprojects/xxx
///       resourceGroupName: testrg
///       siteName: testSite
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
/// $ pulumi import azure-native:mysqldiscovery:MySQLSite testSite /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MySQLDiscovery/MySQLSites/{siteName}
/// ```
class MySQLSite extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The extended location.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The mapped master Site Id.
  late final pulumi.Output<String> masterSiteId;
  /// The mapped migrate project Id.
  late final pulumi.Output<String> migrateProjectId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets or sets the provisioning state.
  late final pulumi.Output<String?> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MySQLSite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MySQLSite]. {@macro pulumi_mysqldiscovery_my_sqlsite_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MySQLSite(
    String name, {
    MySQLSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:mysqldiscovery:MySQLSite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    masterSiteId = registerOutput<String>('masterSiteId');
    migrateProjectId = registerOutput<String>('migrateProjectId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String?>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [MySQLSite] resource.
  MySQLSite.reference(String urn)
    : super(
        'azure-native:mysqldiscovery:MySQLSite',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    masterSiteId = registerOutput<String>('masterSiteId');
    migrateProjectId = registerOutput<String>('migrateProjectId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String?>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
