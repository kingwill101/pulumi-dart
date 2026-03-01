import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_function_app_slot_args.dart';
import 'linux_function_app_slot_auth_settings.dart';
import 'linux_function_app_slot_auth_settings_v2.dart';
import 'linux_function_app_slot_backup.dart';
import 'linux_function_app_slot_connection_string.dart';
import 'linux_function_app_slot_identity.dart';
import 'linux_function_app_slot_site_config.dart';
import 'linux_function_app_slot_site_credential.dart';
import 'linux_function_app_slot_storage_account.dart';

/// Manages a Linux Function App Slot.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "linuxfunctionappsa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     name: "example-app-service-plan",
///     resourceGroupName: example.name,
///     location: example.location,
///     osType: "Linux",
///     skuName: "Y1",
/// });
/// const exampleLinuxFunctionApp = new azure.appservice.LinuxFunctionApp("example", {
///     name: "example-linux-function-app",
///     resourceGroupName: example.name,
///     location: example.location,
///     servicePlanId: exampleServicePlan.id,
///     storageAccountName: exampleAccount.name,
///     siteConfig: {},
/// });
/// const exampleLinuxFunctionAppSlot = new azure.appservice.LinuxFunctionAppSlot("example", {
///     name: "example-linux-function-app-slot",
///     functionAppId: exampleLinuxFunctionApp.id,
///     storageAccountName: exampleAccount.name,
///     siteConfig: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="linuxfunctionappsa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example-app-service-plan",
///     resource_group_name=example.name,
///     location=example.location,
///     os_type="Linux",
///     sku_name="Y1")
/// example_linux_function_app = azure.appservice.LinuxFunctionApp("example",
///     name="example-linux-function-app",
///     resource_group_name=example.name,
///     location=example.location,
///     service_plan_id=example_service_plan.id,
///     storage_account_name=example_account.name,
///     site_config={})
/// example_linux_function_app_slot = azure.appservice.LinuxFunctionAppSlot("example",
///     name="example-linux-function-app-slot",
///     function_app_id=example_linux_function_app.id,
///     storage_account_name=example_account.name,
///     site_config={})
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "linuxfunctionappsa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleServicePlan = new Azure.AppService.ServicePlan("example", new()
///     {
///         Name = "example-app-service-plan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         OsType = "Linux",
///         SkuName = "Y1",
///     });
///
///     var exampleLinuxFunctionApp = new Azure.AppService.LinuxFunctionApp("example", new()
///     {
///         Name = "example-linux-function-app",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ServicePlanId = exampleServicePlan.Id,
///         StorageAccountName = exampleAccount.Name,
///         SiteConfig = null,
///     });
///
///     var exampleLinuxFunctionAppSlot = new Azure.AppService.LinuxFunctionAppSlot("example", new()
///     {
///         Name = "example-linux-function-app-slot",
///         FunctionAppId = exampleLinuxFunctionApp.Id,
///         StorageAccountName = exampleAccount.Name,
///         SiteConfig = null,
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("linuxfunctionappsa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePlan, err := appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Name:              pulumi.String("example-app-service-plan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			OsType:            pulumi.String("Linux"),
/// 			SkuName:           pulumi.String("Y1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxFunctionApp, err := appservice.NewLinuxFunctionApp(ctx, "example", &appservice.LinuxFunctionAppArgs{
/// 			Name:               pulumi.String("example-linux-function-app"),
/// 			ResourceGroupName:  example.Name,
/// 			Location:           example.Location,
/// 			ServicePlanId:      exampleServicePlan.ID(),
/// 			StorageAccountName: exampleAccount.Name,
/// 			SiteConfig:         &appservice.LinuxFunctionAppSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewLinuxFunctionAppSlot(ctx, "example", &appservice.LinuxFunctionAppSlotArgs{
/// 			Name:               pulumi.String("example-linux-function-app-slot"),
/// 			FunctionAppId:      exampleLinuxFunctionApp.ID(),
/// 			StorageAccountName: exampleAccount.Name,
/// 			SiteConfig:         &appservice.LinuxFunctionAppSlotSiteConfigArgs{},
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
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
/// import com.pulumi.azure.appservice.LinuxFunctionApp;
/// import com.pulumi.azure.appservice.LinuxFunctionAppArgs;
/// import com.pulumi.azure.appservice.inputs.LinuxFunctionAppSiteConfigArgs;
/// import com.pulumi.azure.appservice.LinuxFunctionAppSlot;
/// import com.pulumi.azure.appservice.LinuxFunctionAppSlotArgs;
/// import com.pulumi.azure.appservice.inputs.LinuxFunctionAppSlotSiteConfigArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("linuxfunctionappsa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .name("example-app-service-plan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .osType("Linux")
///             .skuName("Y1")
///             .build());
///
///         var exampleLinuxFunctionApp = new LinuxFunctionApp("exampleLinuxFunctionApp", LinuxFunctionAppArgs.builder()
///             .name("example-linux-function-app")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .servicePlanId(exampleServicePlan.id())
///             .storageAccountName(exampleAccount.name())
///             .siteConfig(LinuxFunctionAppSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleLinuxFunctionAppSlot = new LinuxFunctionAppSlot("exampleLinuxFunctionAppSlot", LinuxFunctionAppSlotArgs.builder()
///             .name("example-linux-function-app-slot")
///             .functionAppId(exampleLinuxFunctionApp.id())
///             .storageAccountName(exampleAccount.name())
///             .siteConfig(LinuxFunctionAppSlotSiteConfigArgs.builder()
///                 .build())
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
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: linuxfunctionappsa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleServicePlan:
///     type: azure:appservice:ServicePlan
///     name: example
///     properties:
///       name: example-app-service-plan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       osType: Linux
///       skuName: Y1
///   exampleLinuxFunctionApp:
///     type: azure:appservice:LinuxFunctionApp
///     name: example
///     properties:
///       name: example-linux-function-app
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       servicePlanId: ${exampleServicePlan.id}
///       storageAccountName: ${exampleAccount.name}
///       siteConfig: {}
///   exampleLinuxFunctionAppSlot:
///     type: azure:appservice:LinuxFunctionAppSlot
///     name: example
///     properties:
///       name: example-linux-function-app-slot
///       functionAppId: ${exampleLinuxFunctionApp.id}
///       storageAccountName: ${exampleAccount.name}
///       siteConfig: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-12-01, 2023-01-01
///
/// ## Import
///
/// A Linux Function App Slot can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/linuxFunctionAppSlot:LinuxFunctionAppSlot example "/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1/slots/slot1"
/// ```
class LinuxFunctionAppSlot extends pulumi.CustomResource {
  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  late final pulumi.Output<Map<String, String>?> appSettings;
  /// an `auth_settings` block as detailed below.
  late final pulumi.Output<LinuxFunctionAppSlotAuthSettings?> authSettings;
  /// an `auth_settings_v2` block as detailed below.
  late final pulumi.Output<LinuxFunctionAppSlotAuthSettingsV2?> authSettingsV2;
  /// a `backup` block as detailed below.
  late final pulumi.Output<LinuxFunctionAppSlotBackup?> backup;
  /// Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`.
  late final pulumi.Output<bool?> builtinLoggingEnabled;
  /// Should the Function App Slot use Client Certificates.
  late final pulumi.Output<bool?> clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  late final pulumi.Output<String?> clientCertificateExclusionPaths;
  /// The mode of the Function App Slot's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  late final pulumi.Output<String?> clientCertificateMode;
  /// a `connection_string` block as detailed below.
  late final pulumi.Output<List<LinuxFunctionAppSlotConnectionString>?> connectionStrings;
  /// Force disable the content share settings.
  late final pulumi.Output<bool?> contentShareForceDisabled;
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  late final pulumi.Output<String> customDomainVerificationId;
  /// The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps in Consumption Plans. Defaults to `0`.
  late final pulumi.Output<int?> dailyMemoryTimeQuota;
  /// The default hostname of the Linux Function App Slot.
  late final pulumi.Output<String> defaultHostname;
  /// Is the Linux Function App Slot enabled. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Are the default FTP Basic Authentication publishing credentials enabled. Defaults to `true`.
  late final pulumi.Output<bool?> ftpPublishBasicAuthenticationEnabled;
  /// The ID of the Linux Function App this Slot is a member of. Changing this forces a new resource to be created.
  late final pulumi.Output<String> functionAppId;
  /// The runtime version associated with the Function App Slot. Defaults to `~4`.
  late final pulumi.Output<String?> functionsExtensionVersion;
  /// The ID of the App Service Environment used by Function App Slot.
  late final pulumi.Output<String> hostingEnvironmentId;
  /// Can the Function App Slot only be accessed via HTTPS?. Defaults to `false`.
  late final pulumi.Output<bool?> httpsOnly;
  /// An `identity` block as detailed below.
  late final pulumi.Output<LinuxFunctionAppSlotIdentity?> identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  late final pulumi.Output<String> keyVaultReferenceIdentityId;
  /// The Kind value for this Linux Function App Slot.
  late final pulumi.Output<String> kind;
  /// Specifies the name of the Function App Slot. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]`
  late final pulumi.Output<List<String>> outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`.
  late final pulumi.Output<String> outboundIpAddresses;
  /// A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outbound_ip_address_list`. For example `["52.23.25.3", "52.143.43.12"]`.
  late final pulumi.Output<List<String>> possibleOutboundIpAddressLists;
  /// A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outbound_ip_addresses`. For example `["52.23.25.3", "52.143.43.12","52.143.43.17"]`.
  late final pulumi.Output<String> possibleOutboundIpAddresses;
  /// Should public network access be enabled for the Function App. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Function App will be used.
  late final pulumi.Output<String?> servicePlanId;
  /// a `site_config` block as detailed below.
  late final pulumi.Output<LinuxFunctionAppSlotSiteConfig> siteConfig;
  /// A `site_credential` block as defined below.
  late final pulumi.Output<List<LinuxFunctionAppSlotSiteCredential>> siteCredentials;
  /// The access key which will be used to access the storage account for the Function App Slot.
  late final pulumi.Output<String?> storageAccountAccessKey;
  /// The backend storage account name which will be used by this Function App Slot.
  late final pulumi.Output<String?> storageAccountName;
  /// One or more `storage_account` blocks as defined below.
  late final pulumi.Output<List<LinuxFunctionAppSlotStorageAccount>?> storageAccounts;
  /// The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App.
  ///
  /// > **Note:** `storage_key_vault_secret_id` cannot be used with `storage_account_name`.
  ///
  /// > **Note:** `storage_key_vault_secret_id` used without a version will use the latest version of the secret, however, the service can take up to 24h to pick up a rotation of the latest version. See the [official docs](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#rotation) for more information.
  late final pulumi.Output<String?> storageKeyVaultSecretId;
  /// Should the Function App Slot use its Managed Identity to access storage.
  ///
  /// > **Note:** One of `storage_account_access_key` or `storage_uses_managed_identity` must be specified when using `storage_account_name`.
  late final pulumi.Output<bool?> storageUsesManagedIdentity;
  /// A mapping of tags which should be assigned to the Linux Function App.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  late final pulumi.Output<bool?> virtualNetworkBackupRestoreEnabled;
  /// The subnet id which will be used by this Function App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// > **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource app_service_virtual_network_swift_connection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the function app slot configuration.
  ///
  /// > **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  late final pulumi.Output<String?> virtualNetworkSubnetId;
  /// Specifies whether traffic for the image pull should be routed over virtual network. Defaults to `false`.
  ///
  /// > **Note:** The feature can also be enabled via the app setting `WEBSITE_PULL_IMAGE_OVER_VNET`. The Setting is enabled by default for an app running in the App Service Environment.
  late final pulumi.Output<bool?> vnetImagePullEnabled;
  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  late final pulumi.Output<bool?> webdeployPublishBasicAuthenticationEnabled;

  /// Creates a new [LinuxFunctionAppSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinuxFunctionAppSlot]. {@macro pulumi_appservice_linux_function_app_slot_linux_function_app_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinuxFunctionAppSlot(
    String name, {
    LinuxFunctionAppSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/linuxFunctionAppSlot:LinuxFunctionAppSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appSettings = registerOutput<Map<String, String>?>('appSettings');
    this.authSettings = registerOutput<LinuxFunctionAppSlotAuthSettings?>('authSettings');
    this.authSettingsV2 = registerOutput<LinuxFunctionAppSlotAuthSettingsV2?>('authSettingsV2');
    this.backup = registerOutput<LinuxFunctionAppSlotBackup?>('backup');
    this.builtinLoggingEnabled = registerOutput<bool?>('builtinLoggingEnabled');
    this.clientCertificateEnabled = registerOutput<bool?>('clientCertificateEnabled');
    this.clientCertificateExclusionPaths = registerOutput<String?>('clientCertificateExclusionPaths');
    this.clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    this.connectionStrings = registerOutput<List<LinuxFunctionAppSlotConnectionString>?>('connectionStrings');
    this.contentShareForceDisabled = registerOutput<bool?>('contentShareForceDisabled');
    this.customDomainVerificationId = registerOutput<String>('customDomainVerificationId');
    this.dailyMemoryTimeQuota = registerOutput<int?>('dailyMemoryTimeQuota');
    this.defaultHostname = registerOutput<String>('defaultHostname');
    this.enabled = registerOutput<bool?>('enabled');
    this.ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>('ftpPublishBasicAuthenticationEnabled');
    this.functionAppId = registerOutput<String>('functionAppId');
    this.functionsExtensionVersion = registerOutput<String?>('functionsExtensionVersion');
    this.hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    this.httpsOnly = registerOutput<bool?>('httpsOnly');
    this.identity = registerOutput<LinuxFunctionAppSlotIdentity?>('identity');
    this.keyVaultReferenceIdentityId = registerOutput<String>('keyVaultReferenceIdentityId');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.outboundIpAddressLists = registerOutput<List<String>>('outboundIpAddressLists');
    this.outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    this.possibleOutboundIpAddressLists = registerOutput<List<String>>('possibleOutboundIpAddressLists');
    this.possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.servicePlanId = registerOutput<String?>('servicePlanId');
    this.siteConfig = registerOutput<LinuxFunctionAppSlotSiteConfig>('siteConfig');
    this.siteCredentials = registerOutput<List<LinuxFunctionAppSlotSiteCredential>>('siteCredentials');
    this.storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey');
    this.storageAccountName = registerOutput<String?>('storageAccountName');
    this.storageAccounts = registerOutput<List<LinuxFunctionAppSlotStorageAccount>?>('storageAccounts');
    this.storageKeyVaultSecretId = registerOutput<String?>('storageKeyVaultSecretId');
    this.storageUsesManagedIdentity = registerOutput<bool?>('storageUsesManagedIdentity');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.virtualNetworkBackupRestoreEnabled = registerOutput<bool?>('virtualNetworkBackupRestoreEnabled');
    this.virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    this.vnetImagePullEnabled = registerOutput<bool?>('vnetImagePullEnabled');
    this.webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>('webdeployPublishBasicAuthenticationEnabled');
  }
}
