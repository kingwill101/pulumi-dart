import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_args.dart';
import 'bot_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Bot resource definition
///
/// Uses Azure REST API version 2023-09-15-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-15.
///
/// Other available API versions: 2022-09-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native botservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Bot
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bot = new AzureNative.BotService.Bot("bot", new()
///     {
///         Kind = AzureNative.BotService.Kind.Sdk,
///         Location = "West US",
///         Properties = new AzureNative.BotService.Inputs.BotPropertiesArgs
///         {
///             CmekKeyVaultUrl = "https://myCmekKey",
///             Description = "The description of the bot",
///             DeveloperAppInsightKey = "appinsightskey",
///             DeveloperAppInsightsApiKey = "appinsightsapikey",
///             DeveloperAppInsightsApplicationId = "appinsightsappid",
///             DisableLocalAuth = true,
///             DisplayName = "The Name of the bot",
///             Endpoint = "http://mybot.coffee",
///             IconUrl = "http://myicon",
///             IsCmekEnabled = true,
///             LuisAppIds = new[]
///             {
///                 "luisappid1",
///                 "luisappid2",
///             },
///             LuisKey = "luiskey",
///             MsaAppId = "exampleappid",
///             MsaAppMSIResourceId = "/subscriptions/foo/resourcegroups/bar/providers/microsoft.managedidentity/userassignedidentities/sampleId",
///             MsaAppTenantId = "exampleapptenantid",
///             MsaAppType = AzureNative.BotService.MsaAppType.UserAssignedMSI,
///             PublicNetworkAccess = AzureNative.BotService.PublicNetworkAccess.Enabled,
///             SchemaTransformationVersion = "1.0",
///         },
///         ResourceGroupName = "OneResourceGroupName",
///         ResourceName = "samplebotname",
///         Sku = new AzureNative.BotService.Inputs.SkuArgs
///         {
///             Name = AzureNative.BotService.SkuName.S1,
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
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
/// 	botservice "github.com/pulumi/pulumi-azure-native-sdk/botservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := botservice.NewBot(ctx, "bot", &botservice.BotArgs{
/// 			Kind:     pulumi.String(botservice.KindSdk),
/// 			Location: pulumi.String("West US"),
/// 			Properties: &botservice.BotPropertiesArgs{
/// 				CmekKeyVaultUrl:                   pulumi.String("https://myCmekKey"),
/// 				Description:                       pulumi.String("The description of the bot"),
/// 				DeveloperAppInsightKey:            pulumi.String("appinsightskey"),
/// 				DeveloperAppInsightsApiKey:        pulumi.String("appinsightsapikey"),
/// 				DeveloperAppInsightsApplicationId: pulumi.String("appinsightsappid"),
/// 				DisableLocalAuth:                  pulumi.Bool(true),
/// 				DisplayName:                       pulumi.String("The Name of the bot"),
/// 				Endpoint:                          pulumi.String("http://mybot.coffee"),
/// 				IconUrl:                           pulumi.String("http://myicon"),
/// 				IsCmekEnabled:                     pulumi.Bool(true),
/// 				LuisAppIds: pulumi.StringArray{
/// 					pulumi.String("luisappid1"),
/// 					pulumi.String("luisappid2"),
/// 				},
/// 				LuisKey:                     pulumi.String("luiskey"),
/// 				MsaAppId:                    pulumi.String("exampleappid"),
/// 				MsaAppMSIResourceId:         pulumi.String("/subscriptions/foo/resourcegroups/bar/providers/microsoft.managedidentity/userassignedidentities/sampleId"),
/// 				MsaAppTenantId:              pulumi.String("exampleapptenantid"),
/// 				MsaAppType:                  pulumi.String(botservice.MsaAppTypeUserAssignedMSI),
/// 				PublicNetworkAccess:         pulumi.String(botservice.PublicNetworkAccessEnabled),
/// 				SchemaTransformationVersion: pulumi.String("1.0"),
/// 			},
/// 			ResourceGroupName: pulumi.String("OneResourceGroupName"),
/// 			ResourceName:      pulumi.String("samplebotname"),
/// 			Sku: &botservice.SkuArgs{
/// 				Name: pulumi.String(botservice.SkuNameS1),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
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
/// import com.pulumi.azurenative.botservice.Bot;
/// import com.pulumi.azurenative.botservice.BotArgs;
/// import com.pulumi.azurenative.botservice.inputs.BotPropertiesArgs;
/// import com.pulumi.azurenative.botservice.inputs.SkuArgs;
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
///         var bot = new Bot("bot", BotArgs.builder()
///             .kind("sdk")
///             .location("West US")
///             .properties(BotPropertiesArgs.builder()
///                 .cmekKeyVaultUrl("https://myCmekKey")
///                 .description("The description of the bot")
///                 .developerAppInsightKey("appinsightskey")
///                 .developerAppInsightsApiKey("appinsightsapikey")
///                 .developerAppInsightsApplicationId("appinsightsappid")
///                 .disableLocalAuth(true)
///                 .displayName("The Name of the bot")
///                 .endpoint("http://mybot.coffee")
///                 .iconUrl("http://myicon")
///                 .isCmekEnabled(true)
///                 .luisAppIds(
///                     "luisappid1",
///                     "luisappid2")
///                 .luisKey("luiskey")
///                 .msaAppId("exampleappid")
///                 .msaAppMSIResourceId("/subscriptions/foo/resourcegroups/bar/providers/microsoft.managedidentity/userassignedidentities/sampleId")
///                 .msaAppTenantId("exampleapptenantid")
///                 .msaAppType("UserAssignedMSI")
///                 .publicNetworkAccess("Enabled")
///                 .schemaTransformationVersion("1.0")
///                 .build())
///             .resourceGroupName("OneResourceGroupName")
///             .resourceName("samplebotname")
///             .sku(SkuArgs.builder()
///                 .name("S1")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
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
/// const bot = new azure_native.botservice.Bot("bot", {
///     kind: azure_native.botservice.Kind.Sdk,
///     location: "West US",
///     properties: {
///         cmekKeyVaultUrl: "https://myCmekKey",
///         description: "The description of the bot",
///         developerAppInsightKey: "appinsightskey",
///         developerAppInsightsApiKey: "appinsightsapikey",
///         developerAppInsightsApplicationId: "appinsightsappid",
///         disableLocalAuth: true,
///         displayName: "The Name of the bot",
///         endpoint: "http://mybot.coffee",
///         iconUrl: "http://myicon",
///         isCmekEnabled: true,
///         luisAppIds: [
///             "luisappid1",
///             "luisappid2",
///         ],
///         luisKey: "luiskey",
///         msaAppId: "exampleappid",
///         msaAppMSIResourceId: "/subscriptions/foo/resourcegroups/bar/providers/microsoft.managedidentity/userassignedidentities/sampleId",
///         msaAppTenantId: "exampleapptenantid",
///         msaAppType: azure_native.botservice.MsaAppType.UserAssignedMSI,
///         publicNetworkAccess: azure_native.botservice.PublicNetworkAccess.Enabled,
///         schemaTransformationVersion: "1.0",
///     },
///     resourceGroupName: "OneResourceGroupName",
///     resourceName: "samplebotname",
///     sku: {
///         name: azure_native.botservice.SkuName.S1,
///     },
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// bot = azure_native.botservice.Bot("bot",
///     kind=azure_native.botservice.Kind.SDK,
///     location="West US",
///     properties={
///         "cmek_key_vault_url": "https://myCmekKey",
///         "description": "The description of the bot",
///         "developer_app_insight_key": "appinsightskey",
///         "developer_app_insights_api_key": "appinsightsapikey",
///         "developer_app_insights_application_id": "appinsightsappid",
///         "disable_local_auth": True,
///         "display_name": "The Name of the bot",
///         "endpoint": "http://mybot.coffee",
///         "icon_url": "http://myicon",
///         "is_cmek_enabled": True,
///         "luis_app_ids": [
///             "luisappid1",
///             "luisappid2",
///         ],
///         "luis_key": "luiskey",
///         "msa_app_id": "exampleappid",
///         "msa_app_msi_resource_id": "/subscriptions/foo/resourcegroups/bar/providers/microsoft.managedidentity/userassignedidentities/sampleId",
///         "msa_app_tenant_id": "exampleapptenantid",
///         "msa_app_type": azure_native.botservice.MsaAppType.USER_ASSIGNED_MSI,
///         "public_network_access": azure_native.botservice.PublicNetworkAccess.ENABLED,
///         "schema_transformation_version": "1.0",
///     },
///     resource_group_name="OneResourceGroupName",
///     resource_name_="samplebotname",
///     sku={
///         "name": azure_native.botservice.SkuName.S1,
///     },
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   bot:
///     type: azure-native:botservice:Bot
///     properties:
///       kind: sdk
///       location: West US
///       properties:
///         cmekKeyVaultUrl: https://myCmekKey
///         description: The description of the bot
///         developerAppInsightKey: appinsightskey
///         developerAppInsightsApiKey: appinsightsapikey
///         developerAppInsightsApplicationId: appinsightsappid
///         disableLocalAuth: true
///         displayName: The Name of the bot
///         endpoint: http://mybot.coffee
///         iconUrl: http://myicon
///         isCmekEnabled: true
///         luisAppIds:
///           - luisappid1
///           - luisappid2
///         luisKey: luiskey
///         msaAppId: exampleappid
///         msaAppMSIResourceId: /subscriptions/foo/resourcegroups/bar/providers/microsoft.managedidentity/userassignedidentities/sampleId
///         msaAppTenantId: exampleapptenantid
///         msaAppType: UserAssignedMSI
///         publicNetworkAccess: Enabled
///         schemaTransformationVersion: '1.0'
///       resourceGroupName: OneResourceGroupName
///       resourceName: samplebotname
///       sku:
///         name: S1
///       tags:
///         tag1: value1
///         tag2: value2
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
/// $ pulumi import azure-native:botservice:Bot samplebotname /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BotService/botServices/{resourceName}
/// ```
class Bot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Entity Tag.
  late final pulumi.Output<String?> etag;
  /// Required. Gets or sets the Kind of the resource.
  late final pulumi.Output<String?> kind;
  /// Specifies the location of the resource.
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The set of properties specific to bot resource
  late final pulumi.Output<BotPropertiesResponse> properties;
  /// Gets or sets the SKU of the resource.
  late final pulumi.Output<SkuResponse?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Contains resource tags defined as key/value pairs.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Entity zones
  late final pulumi.Output<List<String>> zones;

  /// Creates a new [Bot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Bot]. {@macro pulumi_botservice_bot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Bot(
    String name, {
    BotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:botservice:Bot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<BotPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BotPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    zones = registerOutput<List<String>>('zones');
  }
}
