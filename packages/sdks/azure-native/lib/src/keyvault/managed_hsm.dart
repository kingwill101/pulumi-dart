import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_hsm_args.dart';
import 'managed_hsm_properties_response.dart';
import 'managed_hsm_sku_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Resource information with extended details.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-07-01, 2024-04-01-preview, 2024-12-01-preview, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native keyvault [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a new managed HSM Pool or update an existing managed HSM Pool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedHsm = new AzureNative.KeyVault.ManagedHsm("managedHsm", new()
///     {
///         Location = "westus",
///         Name = "hsm1",
///         Properties = new AzureNative.KeyVault.Inputs.ManagedHsmPropertiesArgs
///         {
///             EnablePurgeProtection = false,
///             EnableSoftDelete = true,
///             InitialAdminObjectIds = new[]
///             {
///                 "00000000-0000-0000-0000-000000000000",
///             },
///             SoftDeleteRetentionInDays = 90,
///             TenantId = "00000000-0000-0000-0000-000000000000",
///         },
///         ResourceGroupName = "hsm-group",
///         Sku = new AzureNative.KeyVault.Inputs.ManagedHsmSkuArgs
///         {
///             Family = AzureNative.KeyVault.ManagedHsmSkuFamily.B,
///             Name = AzureNative.KeyVault.ManagedHsmSkuName.Standard_B1,
///         },
///         Tags =
///         {
///             { "Dept", "hsm" },
///             { "Environment", "dogfood" },
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
/// 	keyvault "github.com/pulumi/pulumi-azure-native-sdk/keyvault/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := keyvault.NewManagedHsm(ctx, "managedHsm", &keyvault.ManagedHsmArgs{
/// 			Location: pulumi.String("westus"),
/// 			Name:     pulumi.String("hsm1"),
/// 			Properties: &keyvault.ManagedHsmPropertiesArgs{
/// 				EnablePurgeProtection: pulumi.Bool(false),
/// 				EnableSoftDelete:      pulumi.Bool(true),
/// 				InitialAdminObjectIds: pulumi.StringArray{
/// 					pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 				},
/// 				SoftDeleteRetentionInDays: pulumi.Int(90),
/// 				TenantId:                  pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			},
/// 			ResourceGroupName: pulumi.String("hsm-group"),
/// 			Sku: &keyvault.ManagedHsmSkuArgs{
/// 				Family: pulumi.String(keyvault.ManagedHsmSkuFamilyB),
/// 				Name:   keyvault.ManagedHsmSkuName_Standard_B1,
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Dept":        pulumi.String("hsm"),
/// 				"Environment": pulumi.String("dogfood"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.keyvault.ManagedHsm;
/// import com.pulumi.azurenative.keyvault.ManagedHsmArgs;
/// import com.pulumi.azurenative.keyvault.inputs.ManagedHsmPropertiesArgs;
/// import com.pulumi.azurenative.keyvault.inputs.ManagedHsmSkuArgs;
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
///         var managedHsm = new ManagedHsm("managedHsm", ManagedHsmArgs.builder()
///             .location("westus")
///             .name("hsm1")
///             .properties(ManagedHsmPropertiesArgs.builder()
///                 .enablePurgeProtection(false)
///                 .enableSoftDelete(true)
///                 .initialAdminObjectIds("00000000-0000-0000-0000-000000000000")
///                 .softDeleteRetentionInDays(90)
///                 .tenantId("00000000-0000-0000-0000-000000000000")
///                 .build())
///             .resourceGroupName("hsm-group")
///             .sku(ManagedHsmSkuArgs.builder()
///                 .family("B")
///                 .name("Standard_B1")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Dept", "hsm"),
///                 Map.entry("Environment", "dogfood")
///             ))
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
/// const managedHsm = new azure_native.keyvault.ManagedHsm("managedHsm", {
///     location: "westus",
///     name: "hsm1",
///     properties: {
///         enablePurgeProtection: false,
///         enableSoftDelete: true,
///         initialAdminObjectIds: ["00000000-0000-0000-0000-000000000000"],
///         softDeleteRetentionInDays: 90,
///         tenantId: "00000000-0000-0000-0000-000000000000",
///     },
///     resourceGroupName: "hsm-group",
///     sku: {
///         family: azure_native.keyvault.ManagedHsmSkuFamily.B,
///         name: azure_native.keyvault.ManagedHsmSkuName.Standard_B1,
///     },
///     tags: {
///         Dept: "hsm",
///         Environment: "dogfood",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_hsm = azure_native.keyvault.ManagedHsm("managedHsm",
///     location="westus",
///     name="hsm1",
///     properties={
///         "enable_purge_protection": False,
///         "enable_soft_delete": True,
///         "initial_admin_object_ids": ["00000000-0000-0000-0000-000000000000"],
///         "soft_delete_retention_in_days": 90,
///         "tenant_id": "00000000-0000-0000-0000-000000000000",
///     },
///     resource_group_name="hsm-group",
///     sku={
///         "family": azure_native.keyvault.ManagedHsmSkuFamily.B,
///         "name": azure_native.keyvault.ManagedHsmSkuName.STANDARD_B1,
///     },
///     tags={
///         "Dept": "hsm",
///         "Environment": "dogfood",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedHsm:
///     type: azure-native:keyvault:ManagedHsm
///     properties:
///       location: westus
///       name: hsm1
///       properties:
///         enablePurgeProtection: false
///         enableSoftDelete: true
///         initialAdminObjectIds:
///           - 00000000-0000-0000-0000-000000000000
///         softDeleteRetentionInDays: 90
///         tenantId: 00000000-0000-0000-0000-000000000000
///       resourceGroupName: hsm-group
///       sku:
///         family: B
///         name: Standard_B1
///       tags:
///         Dept: hsm
///         Environment: dogfood
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
/// $ pulumi import azure-native:keyvault:ManagedHsm hsm1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name}
/// ```
class ManagedHsm extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Managed service identity (system assigned and/or user assigned identities)
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The supported Azure location where the managed HSM Pool should be created.
  late final pulumi.Output<String?> location;
  /// The name of the managed HSM Pool.
  late final pulumi.Output<String> name;
  /// Properties of the managed HSM
  late final pulumi.Output<ManagedHsmPropertiesResponse> properties;
  /// SKU details
  late final pulumi.Output<ManagedHsmSkuResponse?> sku;
  /// Metadata pertaining to creation and last modification of the key vault resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// The resource type of the managed HSM Pool.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedHsm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedHsm]. {@macro pulumi_keyvault_managed_hsm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedHsm(
    String name, {
    ManagedHsmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:keyvault:ManagedHsm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ManagedHsmPropertiesResponse>('properties');
    this.sku = registerOutput<ManagedHsmSkuResponse?>('sku');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
