import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'managed_service_identity_response.dart';
import 'maps_account_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// An Azure resource which represents access to a suite of Maps REST APIs.
///
/// Uses Azure REST API version 2024-07-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-02-01.
///
/// Other available API versions: 2020-02-01-preview, 2021-02-01, 2021-07-01-preview, 2021-12-01-preview, 2023-06-01, 2023-08-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native maps [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Gen2 Account
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.Maps.Account("account", new()
///     {
///         AccountName = "myMapsAccount",
///         Kind = AzureNative.Maps.Kind.Gen2,
///         Location = "eastus",
///         Properties = new AzureNative.Maps.Inputs.MapsAccountPropertiesArgs
///         {
///             Cors = new AzureNative.Maps.Inputs.CorsRulesArgs
///             {
///                 CorsRules = new[]
///                 {
///                     new AzureNative.Maps.Inputs.CorsRuleArgs
///                     {
///                         AllowedOrigins = new[]
///                         {
///                             "http://www.contoso.com",
///                             "http://www.fabrikam.com",
///                         },
///                     },
///                 },
///             },
///             DisableLocalAuth = true,
///             Locations = new[]
///             {
///                 new AzureNative.Maps.Inputs.MapsAccountPropertiesLocationsArgs
///                 {
///                     LocationName = "northeurope",
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Maps.Inputs.SkuArgs
///         {
///             Name = AzureNative.Maps.Name.G2,
///         },
///         Tags =
///         {
///             { "test", "true" },
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
/// 	maps "github.com/pulumi/pulumi-azure-native-sdk/maps/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := maps.NewAccount(ctx, "account", &maps.AccountArgs{
/// 			AccountName: pulumi.String("myMapsAccount"),
/// 			Kind:        pulumi.String(maps.KindGen2),
/// 			Location:    pulumi.String("eastus"),
/// 			Properties: &maps.MapsAccountPropertiesArgs{
/// 				Cors: &maps.CorsRulesArgs{
/// 					CorsRules: maps.CorsRuleArray{
/// 						&maps.CorsRuleArgs{
/// 							AllowedOrigins: pulumi.StringArray{
/// 								pulumi.String("http://www.contoso.com"),
/// 								pulumi.String("http://www.fabrikam.com"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				DisableLocalAuth: pulumi.Bool(true),
/// 				Locations: maps.MapsAccountPropertiesLocationsArray{
/// 					&maps.MapsAccountPropertiesLocationsArgs{
/// 						LocationName: pulumi.String("northeurope"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &maps.SkuArgs{
/// 				Name: pulumi.String(maps.NameG2),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"test": pulumi.String("true"),
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
/// import com.pulumi.azurenative.maps.Account;
/// import com.pulumi.azurenative.maps.AccountArgs;
/// import com.pulumi.azurenative.maps.inputs.MapsAccountPropertiesArgs;
/// import com.pulumi.azurenative.maps.inputs.CorsRulesArgs;
/// import com.pulumi.azurenative.maps.inputs.SkuArgs;
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
///         var account = new Account("account", AccountArgs.builder()
///             .accountName("myMapsAccount")
///             .kind("Gen2")
///             .location("eastus")
///             .properties(MapsAccountPropertiesArgs.builder()
///                 .cors(CorsRulesArgs.builder()
///                     .corsRules(CorsRuleArgs.builder()
///                         .allowedOrigins(
///                             "http://www.contoso.com",
///                             "http://www.fabrikam.com")
///                         .build())
///                     .build())
///                 .disableLocalAuth(true)
///                 .locations(MapsAccountPropertiesLocationsArgs.builder()
///                     .locationName("northeurope")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("G2")
///                 .build())
///             .tags(Map.of("test", "true"))
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
/// const account = new azure_native.maps.Account("account", {
///     accountName: "myMapsAccount",
///     kind: azure_native.maps.Kind.Gen2,
///     location: "eastus",
///     properties: {
///         cors: {
///             corsRules: [{
///                 allowedOrigins: [
///                     "http://www.contoso.com",
///                     "http://www.fabrikam.com",
///                 ],
///             }],
///         },
///         disableLocalAuth: true,
///         locations: [{
///             locationName: "northeurope",
///         }],
///     },
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: azure_native.maps.Name.G2,
///     },
///     tags: {
///         test: "true",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.maps.Account("account",
///     account_name="myMapsAccount",
///     kind=azure_native.maps.Kind.GEN2,
///     location="eastus",
///     properties={
///         "cors": {
///             "cors_rules": [{
///                 "allowed_origins": [
///                     "http://www.contoso.com",
///                     "http://www.fabrikam.com",
///                 ],
///             }],
///         },
///         "disable_local_auth": True,
///         "locations": [{
///             "location_name": "northeurope",
///         }],
///     },
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": azure_native.maps.Name.G2,
///     },
///     tags={
///         "test": "true",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:maps:Account
///     properties:
///       accountName: myMapsAccount
///       kind: Gen2
///       location: eastus
///       properties:
///         cors:
///           corsRules:
///             - allowedOrigins:
///                 - http://www.contoso.com
///                 - http://www.fabrikam.com
///         disableLocalAuth: true
///         locations:
///           - locationName: northeurope
///       resourceGroupName: myResourceGroup
///       sku:
///         name: G2
///       tags:
///         test: 'true'
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
/// $ pulumi import azure-native:maps:Account myMapsAccount /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Maps/accounts/{accountName}
/// ```
class Account extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Managed service identity (system assigned and/or user assigned identities)
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// Get or Set Kind property.
  late final pulumi.Output<String?> kind;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The map account properties.
  late final pulumi.Output<MapsAccountPropertiesResponse> properties;
  /// The SKU of this account.
  late final pulumi.Output<SkuResponse> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_maps_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:maps:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<MapsAccountPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MapsAccountPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
