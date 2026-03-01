import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_app_slot_args.dart';
import 'function_app_slot_auth_settings.dart';
import 'function_app_slot_connection_string.dart';
import 'function_app_slot_identity.dart';
import 'function_app_slot_site_config.dart';
import 'function_app_slot_site_credential.dart';

/// Manages a Function App deployment Slot.
///
/// !> **NOTE:** This resource has been deprecated in version 5.0 of the provider and will be removed in version 6.0. Please use `azure.appservice.LinuxFunctionAppSlot` and `azure.appservice.WindowsFunctionAppSlot` resources instead.
///
/// ## Example Usage
///
/// ### With App Service Plan)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "azure-functions-test-rg",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "functionsapptestsa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "azure-functions-test-service-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         tier: "Standard",
///         size: "S1",
///     },
/// });
/// const exampleFunctionApp = new azure.appservice.FunctionApp("example", {
///     name: "test-azure-functions",
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
///     storageAccountName: exampleAccount.name,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
/// });
/// const exampleFunctionAppSlot = new azure.appservice.FunctionAppSlot("example", {
///     name: "test-azure-functions_slot",
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
///     functionAppName: exampleFunctionApp.name,
///     storageAccountName: exampleAccount.name,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="azure-functions-test-rg",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="functionsapptestsa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_plan = azure.appservice.Plan("example",
///     name="azure-functions-test-service-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "tier": "Standard",
///         "size": "S1",
///     })
/// example_function_app = azure.appservice.FunctionApp("example",
///     name="test-azure-functions",
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id,
///     storage_account_name=example_account.name,
///     storage_account_access_key=example_account.primary_access_key)
/// example_function_app_slot = azure.appservice.FunctionAppSlot("example",
///     name="test-azure-functions_slot",
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id,
///     function_app_name=example_function_app.name,
///     storage_account_name=example_account.name,
///     storage_account_access_key=example_account.primary_access_key)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "azure-functions-test-rg",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "functionsapptestsa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "azure-functions-test-service-plan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.AppService.Inputs.PlanSkuArgs
///         {
///             Tier = "Standard",
///             Size = "S1",
///         },
///     });
///
///     var exampleFunctionApp = new Azure.AppService.FunctionApp("example", new()
///     {
///         Name = "test-azure-functions",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
///     });
///
///     var exampleFunctionAppSlot = new Azure.AppService.FunctionAppSlot("example", new()
///     {
///         Name = "test-azure-functions_slot",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///         FunctionAppName = exampleFunctionApp.Name,
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("azure-functions-test-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("functionsapptestsa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePlan, err := appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("azure-functions-test-service-plan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &appservice.PlanSkuArgs{
/// 				Tier: pulumi.String("Standard"),
/// 				Size: pulumi.String("S1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFunctionApp, err := appservice.NewFunctionApp(ctx, "example", &appservice.FunctionAppArgs{
/// 			Name:                    pulumi.String("test-azure-functions"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			AppServicePlanId:        examplePlan.ID(),
/// 			StorageAccountName:      exampleAccount.Name,
/// 			StorageAccountAccessKey: exampleAccount.PrimaryAccessKey,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewFunctionAppSlot(ctx, "example", &appservice.FunctionAppSlotArgs{
/// 			Name:                    pulumi.String("test-azure-functions_slot"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			AppServicePlanId:        examplePlan.ID(),
/// 			FunctionAppName:         exampleFunctionApp.Name,
/// 			StorageAccountName:      exampleAccount.Name,
/// 			StorageAccountAccessKey: exampleAccount.PrimaryAccessKey,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.appservice.Plan;
/// import com.pulumi.azure.appservice.PlanArgs;
/// import com.pulumi.azure.appservice.inputs.PlanSkuArgs;
/// import com.pulumi.azure.appservice.FunctionApp;
/// import com.pulumi.azure.appservice.FunctionAppArgs;
/// import com.pulumi.azure.appservice.FunctionAppSlot;
/// import com.pulumi.azure.appservice.FunctionAppSlotArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("azure-functions-test-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("functionsapptestsa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("azure-functions-test-service-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(PlanSkuArgs.builder()
///                 .tier("Standard")
///                 .size("S1")
///                 .build())
///             .build());
///
///         var exampleFunctionApp = new FunctionApp("exampleFunctionApp", FunctionAppArgs.builder()
///             .name("test-azure-functions")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .storageAccountName(exampleAccount.name())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
///             .build());
///
///         var exampleFunctionAppSlot = new FunctionAppSlot("exampleFunctionAppSlot", FunctionAppSlotArgs.builder()
///             .name("test-azure-functions_slot")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .functionAppName(exampleFunctionApp.name())
///             .storageAccountName(exampleAccount.name())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: azure-functions-test-rg
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: functionsapptestsa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: azure-functions-test-service-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         tier: Standard
///         size: S1
///   exampleFunctionApp:
///     type: azure:appservice:FunctionApp
///     name: example
///     properties:
///       name: test-azure-functions
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
///   exampleFunctionAppSlot:
///     type: azure:appservice:FunctionAppSlot
///     name: example
///     properties:
///       name: test-azure-functions_slot
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///       functionAppName: ${exampleFunctionApp.name}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
/// ```
///
///
/// ## Import
///
/// Function Apps Deployment Slots can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/functionAppSlot:FunctionAppSlot functionapp1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Web/sites/functionapp1/slots/staging
/// ```
class FunctionAppSlot extends pulumi.CustomResource {
  /// The ID of the App Service Plan within which to create this Function App Slot. Changing this forces a new resource to be created.
  late final pulumi.Output<String> appServicePlanId;
  /// A key-value pair of App Settings.
  ///
  /// > **Note:** When integrating a `CI/CD pipeline` and expecting to run from a deployed package in `Azure` you must seed your `app settings` as part of the application code for function app to be successfully deployed. `Important Default key pairs`: (`"WEBSITE_RUN_FROM_PACKAGE" = ""`, `"FUNCTIONS_WORKER_RUNTIME" = "node"` (or python, etc), `"WEBSITE_NODE_DEFAULT_VERSION" = "10.14.1"`, `"APPINSIGHTS_INSTRUMENTATIONKEY" = ""`).
  ///
  /// > **NOTE:** The values for `AzureWebJobsStorage` and `FUNCTIONS_EXTENSION_VERSION` will be filled by other input arguments and shouldn't be configured separately. `AzureWebJobsStorage` is filled based on `storage_account_name` and `storage_account_access_key`. `FUNCTIONS_EXTENSION_VERSION` is filled based on `version`.
  ///
  /// > **Note:**  When using an App Service Plan in the `Free` or `Shared` Tiers `use_32_bit_worker_process` must be set to `true`.
  late final pulumi.Output<Map<String, String>> appSettings;
  /// An `auth_settings` block as defined below.
  late final pulumi.Output<FunctionAppSlotAuthSettings> authSettings;
  /// A `connection_string` block as defined below.
  late final pulumi.Output<List<FunctionAppSlotConnectionString>> connectionStrings;
  /// The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan.
  late final pulumi.Output<int?> dailyMemoryTimeQuota;
  /// The default hostname associated with the Function App - such as `mysite.azurewebsites.net`
  late final pulumi.Output<String> defaultHostname;
  /// Should the built-in logging of the Function App be enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enableBuiltinLogging;
  /// Is the Function App enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The name of the Function App within which to create the Function App Slot. Changing this forces a new resource to be created.
  late final pulumi.Output<String> functionAppName;
  /// Can the Function App only be accessed via HTTPS? Defaults to `false`.
  late final pulumi.Output<bool?> httpsOnly;
  /// An `identity` block as defined below.
  late final pulumi.Output<FunctionAppSlotIdentity?> identity;
  /// The Function App kind - such as `functionapp,linux,container`
  late final pulumi.Output<String> kind;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Function App. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A string indicating the Operating System type for this function app. The only possible value is `linux`. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** This value will be `linux` for Linux Derivatives or an empty string for Windows (default).
  late final pulumi.Output<String?> osType;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`
  late final pulumi.Output<String> outboundIpAddresses;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  late final pulumi.Output<String> possibleOutboundIpAddresses;
  /// The name of the resource group in which to create the Function App Slot. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `site_config` object as defined below.
  late final pulumi.Output<FunctionAppSlotSiteConfig> siteConfig;
  /// A `site_credential` block as defined below, which contains the site-level credentials used to publish to this Function App Slot.
  late final pulumi.Output<List<FunctionAppSlotSiteCredential>> siteCredentials;
  /// The access key which will be used to access the backend storage account for the Function App.
  late final pulumi.Output<String> storageAccountAccessKey;
  /// The backend storage account name which will be used by the Function App (such as the dashboard, logs). Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The runtime version associated with the Function App. Defaults to `~1`.
  late final pulumi.Output<String?> version;

  /// Creates a new [FunctionAppSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionAppSlot]. {@macro pulumi_appservice_function_app_slot_function_app_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionAppSlot(
    String name, {
    FunctionAppSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/functionAppSlot:FunctionAppSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appServicePlanId = registerOutput<String>('appServicePlanId');
    this.appSettings = registerOutput<Map<String, String>>('appSettings');
    this.authSettings = registerOutput<FunctionAppSlotAuthSettings>('authSettings');
    this.connectionStrings = registerOutput<List<FunctionAppSlotConnectionString>>('connectionStrings');
    this.dailyMemoryTimeQuota = registerOutput<int?>('dailyMemoryTimeQuota');
    this.defaultHostname = registerOutput<String>('defaultHostname');
    this.enableBuiltinLogging = registerOutput<bool?>('enableBuiltinLogging');
    this.enabled = registerOutput<bool?>('enabled');
    this.functionAppName = registerOutput<String>('functionAppName');
    this.httpsOnly = registerOutput<bool?>('httpsOnly');
    this.identity = registerOutput<FunctionAppSlotIdentity?>('identity');
    this.kind = registerOutput<String>('kind');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.osType = registerOutput<String?>('osType');
    this.outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    this.possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.siteConfig = registerOutput<FunctionAppSlotSiteConfig>('siteConfig');
    this.siteCredentials = registerOutput<List<FunctionAppSlotSiteCredential>>('siteCredentials');
    this.storageAccountAccessKey = registerOutput<String>('storageAccountAccessKey');
    this.storageAccountName = registerOutput<String>('storageAccountName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.version = registerOutput<String?>('version');
  }
}
