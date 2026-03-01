import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_function_app_args.dart';
import 'windows_function_app_auth_settings.dart';
import 'windows_function_app_auth_settings_v2.dart';
import 'windows_function_app_backup.dart';
import 'windows_function_app_connection_string.dart';
import 'windows_function_app_identity.dart';
import 'windows_function_app_site_config.dart';
import 'windows_function_app_site_credential.dart';
import 'windows_function_app_sticky_settings.dart';
import 'windows_function_app_storage_account.dart';

/// Manages a Windows Function App.
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
///     name: "windowsfunctionappsa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     name: "example-app-service-plan",
///     resourceGroupName: example.name,
///     location: example.location,
///     osType: "Windows",
///     skuName: "Y1",
/// });
/// const exampleWindowsFunctionApp = new azure.appservice.WindowsFunctionApp("example", {
///     name: "example-windows-function-app",
///     resourceGroupName: example.name,
///     location: example.location,
///     storageAccountName: exampleAccount.name,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
///     servicePlanId: exampleServicePlan.id,
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
///     name="windowsfunctionappsa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example-app-service-plan",
///     resource_group_name=example.name,
///     location=example.location,
///     os_type="Windows",
///     sku_name="Y1")
/// example_windows_function_app = azure.appservice.WindowsFunctionApp("example",
///     name="example-windows-function-app",
///     resource_group_name=example.name,
///     location=example.location,
///     storage_account_name=example_account.name,
///     storage_account_access_key=example_account.primary_access_key,
///     service_plan_id=example_service_plan.id,
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
///         Name = "windowsfunctionappsa",
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
///         OsType = "Windows",
///         SkuName = "Y1",
///     });
///
///     var exampleWindowsFunctionApp = new Azure.AppService.WindowsFunctionApp("example", new()
///     {
///         Name = "example-windows-function-app",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
///         ServicePlanId = exampleServicePlan.Id,
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
/// 			Name:                   pulumi.String("windowsfunctionappsa"),
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
/// 			OsType:            pulumi.String("Windows"),
/// 			SkuName:           pulumi.String("Y1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewWindowsFunctionApp(ctx, "example", &appservice.WindowsFunctionAppArgs{
/// 			Name:                    pulumi.String("example-windows-function-app"),
/// 			ResourceGroupName:       example.Name,
/// 			Location:                example.Location,
/// 			StorageAccountName:      exampleAccount.Name,
/// 			StorageAccountAccessKey: exampleAccount.PrimaryAccessKey,
/// 			ServicePlanId:           exampleServicePlan.ID(),
/// 			SiteConfig:              &appservice.WindowsFunctionAppSiteConfigArgs{},
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
/// import com.pulumi.azure.appservice.WindowsFunctionApp;
/// import com.pulumi.azure.appservice.WindowsFunctionAppArgs;
/// import com.pulumi.azure.appservice.inputs.WindowsFunctionAppSiteConfigArgs;
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
///             .name("windowsfunctionappsa")
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
///             .osType("Windows")
///             .skuName("Y1")
///             .build());
///
///         var exampleWindowsFunctionApp = new WindowsFunctionApp("exampleWindowsFunctionApp", WindowsFunctionAppArgs.builder()
///             .name("example-windows-function-app")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .storageAccountName(exampleAccount.name())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
///             .servicePlanId(exampleServicePlan.id())
///             .siteConfig(WindowsFunctionAppSiteConfigArgs.builder()
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
///       name: windowsfunctionappsa
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
///       osType: Windows
///       skuName: Y1
///   exampleWindowsFunctionApp:
///     type: azure:appservice:WindowsFunctionApp
///     name: example
///     properties:
///       name: example-windows-function-app
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
///       servicePlanId: ${exampleServicePlan.id}
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
/// Windows Function Apps can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/windowsFunctionApp:WindowsFunctionApp example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1
/// ```
class WindowsFunctionApp extends pulumi.CustomResource {
  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  ///
  /// > **Note:** For runtime related settings, please use `node_version` in `site_config` to set the node version and use `functions_extension_version` to set the function runtime version, terraform will assign the values to the key `WEBSITE_NODE_DEFAULT_VERSION` and `FUNCTIONS_EXTENSION_VERSION` in app setting.
  ///
  /// > **Note:** For storage related settings, please use related properties that are available such as `storage_account_access_key`, terraform will assign the value to keys such as `WEBSITE_CONTENTAZUREFILECONNECTIONSTRING`, `AzureWebJobsStorage` in app_setting.
  ///
  /// > **Note:** For application insight related settings, please use `application_insights_connection_string` and `application_insights_key`, terraform will assign the value to the key `APPINSIGHTS_INSTRUMENTATIONKEY` and `APPLICATIONINSIGHTS_CONNECTION_STRING` in app setting.
  ///
  /// > **Note:** For health check related settings, please use `health_check_eviction_time_in_min`, terraform will assign the value to the key `WEBSITE_HEALTHCHECK_MAXPINGFAILURES` in app setting.
  ///
  /// > **Note:** Please create a predefined share if you are restricting your storage account to a virtual network by setting `WEBSITE_CONTENTOVERVNET` to 1 in app_setting.
  late final pulumi.Output<Map<String, String>?> appSettings;
  /// A `auth_settings` block as defined below.
  late final pulumi.Output<WindowsFunctionAppAuthSettings?> authSettings;
  /// A `auth_settings_v2` block as defined below.
  late final pulumi.Output<WindowsFunctionAppAuthSettingsV2?> authSettingsV2;
  /// A `backup` block as defined below.
  late final pulumi.Output<WindowsFunctionAppBackup?> backup;
  /// Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`.
  late final pulumi.Output<bool?> builtinLoggingEnabled;
  /// Should the function app use Client Certificates.
  late final pulumi.Output<bool?> clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  late final pulumi.Output<String?> clientCertificateExclusionPaths;
  /// The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  late final pulumi.Output<String?> clientCertificateMode;
  /// One or more `connection_string` blocks as defined below.
  late final pulumi.Output<List<WindowsFunctionAppConnectionString>?> connectionStrings;
  /// Should Content Share Settings be disabled. Defaults to `false`.
  late final pulumi.Output<bool?> contentShareForceDisabled;
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  late final pulumi.Output<String> customDomainVerificationId;
  /// The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan. Defaults to `0`.
  late final pulumi.Output<int?> dailyMemoryTimeQuota;
  /// The default hostname of the Windows Function App.
  late final pulumi.Output<String> defaultHostname;
  /// Is the Function App enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  late final pulumi.Output<bool?> ftpPublishBasicAuthenticationEnabled;
  /// The runtime version associated with the Function App. Defaults to `~4`.
  late final pulumi.Output<String?> functionsExtensionVersion;
  /// The ID of the App Service Environment used by Function App.
  late final pulumi.Output<String> hostingEnvironmentId;
  /// Can the Function App only be accessed via HTTPS?. Defaults to `false`.
  late final pulumi.Output<bool> httpsOnly;
  /// A `identity` block as defined below.
  late final pulumi.Output<WindowsFunctionAppIdentity?> identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  late final pulumi.Output<String> keyVaultReferenceIdentityId;
  /// The Kind value for this Windows Function App.
  late final pulumi.Output<String> kind;
  /// The Azure Region where the Windows Function App should exist. Changing this forces a new Windows Function App to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Windows Function App. Changing this forces a new Windows Function App to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftweb) and [Host ID Collisions](https://github.com/Azure/azure-functions-host/wiki/Host-IDs#host-id-collisions)
  late final pulumi.Output<String> name;
  /// A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]`
  late final pulumi.Output<List<String>> outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`.
  late final pulumi.Output<String> outboundIpAddresses;
  /// A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outbound_ip_address_list`. For example `["52.23.25.3", "52.143.43.12"]`.
  late final pulumi.Output<List<String>> possibleOutboundIpAddressLists;
  /// A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outbound_ip_addresses`.
  late final pulumi.Output<String> possibleOutboundIpAddresses;
  /// Should public network access be enabled for the Function App. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the Resource Group where the Windows Function App should exist. Changing this forces a new Windows Function App to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The ID of the App Service Plan within which to create this Function App.
  late final pulumi.Output<String> servicePlanId;
  /// A `site_config` block as defined below.
  late final pulumi.Output<WindowsFunctionAppSiteConfig> siteConfig;
  /// A `site_credential` block as defined below.
  late final pulumi.Output<List<WindowsFunctionAppSiteCredential>> siteCredentials;
  /// A `sticky_settings` block as defined below.
  late final pulumi.Output<WindowsFunctionAppStickySettings?> stickySettings;
  /// The access key which will be used to access the backend storage account for the Function App. Conflicts with `storage_uses_managed_identity`.
  late final pulumi.Output<String?> storageAccountAccessKey;
  /// The backend storage account name which will be used by this Function App.
  late final pulumi.Output<String?> storageAccountName;
  /// One or more `storage_account` blocks as defined below.
  late final pulumi.Output<List<WindowsFunctionAppStorageAccount>?> storageAccounts;
  /// The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App.
  ///
  /// > **Note:** `storage_key_vault_secret_id` cannot be used with `storage_account_name`.
  ///
  /// > **Note:** `storage_key_vault_secret_id` used without a version will use the latest version of the secret, however, the service can take up to 24h to pick up a rotation of the latest version. See the [official docs](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#rotation) for more information.
  late final pulumi.Output<String?> storageKeyVaultSecretId;
  /// Should the Function App use Managed Identity to access the storage account. Conflicts with `storage_account_access_key`.
  ///
  /// > **Note:** One of `storage_account_access_key` or `storage_uses_managed_identity` must be specified when using `storage_account_name`.
  late final pulumi.Output<bool?> storageUsesManagedIdentity;
  /// A mapping of tags which should be assigned to the Windows Function App.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  late final pulumi.Output<bool?> virtualNetworkBackupRestoreEnabled;
  /// The subnet id which will be used by this Function App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// > **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource app_service_virtual_network_swift_connection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the function app configuration.
  ///
  /// > **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  late final pulumi.Output<String?> virtualNetworkSubnetId;
  /// Specifies whether traffic for the image pull should be routed over virtual network. Defaults to `false`.
  ///
  /// > **Note:** The feature can also be enabled via the app setting `WEBSITE_PULL_IMAGE_OVER_VNET`. The Setting is enabled by default for app running in the App Service Environment.
  late final pulumi.Output<bool?> vnetImagePullEnabled;
  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  ///
  /// > **Note:** Setting this value to true will disable the ability to use `zip_deploy_file` which currently relies on the default publishing profile.
  late final pulumi.Output<bool?> webdeployPublishBasicAuthenticationEnabled;
  /// The local path and filename of the Zip packaged application to deploy to this Windows Function App.
  ///
  /// > **Note:** Using this value requires `WEBSITE_RUN_FROM_PACKAGE=1` to be set on the App in `app_settings`. Refer to the [Azure docs](https://learn.microsoft.com/en-us/azure/azure-functions/functions-deployment-technologies) for further details.
  late final pulumi.Output<String> zipDeployFile;

  /// Creates a new [WindowsFunctionApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WindowsFunctionApp]. {@macro pulumi_appservice_windows_function_app_windows_function_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WindowsFunctionApp(
    String name, {
    WindowsFunctionAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/windowsFunctionApp:WindowsFunctionApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appSettings = registerOutput<Map<String, String>?>('appSettings');
    this.authSettings = registerOutput<WindowsFunctionAppAuthSettings?>('authSettings');
    this.authSettingsV2 = registerOutput<WindowsFunctionAppAuthSettingsV2?>('authSettingsV2');
    this.backup = registerOutput<WindowsFunctionAppBackup?>('backup');
    this.builtinLoggingEnabled = registerOutput<bool?>('builtinLoggingEnabled');
    this.clientCertificateEnabled = registerOutput<bool?>('clientCertificateEnabled');
    this.clientCertificateExclusionPaths = registerOutput<String?>('clientCertificateExclusionPaths');
    this.clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    this.connectionStrings = registerOutput<List<WindowsFunctionAppConnectionString>?>('connectionStrings');
    this.contentShareForceDisabled = registerOutput<bool?>('contentShareForceDisabled');
    this.customDomainVerificationId = registerOutput<String>('customDomainVerificationId');
    this.dailyMemoryTimeQuota = registerOutput<int?>('dailyMemoryTimeQuota');
    this.defaultHostname = registerOutput<String>('defaultHostname');
    this.enabled = registerOutput<bool?>('enabled');
    this.ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>('ftpPublishBasicAuthenticationEnabled');
    this.functionsExtensionVersion = registerOutput<String?>('functionsExtensionVersion');
    this.hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    this.httpsOnly = registerOutput<bool>('httpsOnly');
    this.identity = registerOutput<WindowsFunctionAppIdentity?>('identity');
    this.keyVaultReferenceIdentityId = registerOutput<String>('keyVaultReferenceIdentityId');
    this.kind = registerOutput<String>('kind');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.outboundIpAddressLists = registerOutput<List<String>>('outboundIpAddressLists');
    this.outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    this.possibleOutboundIpAddressLists = registerOutput<List<String>>('possibleOutboundIpAddressLists');
    this.possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.servicePlanId = registerOutput<String>('servicePlanId');
    this.siteConfig = registerOutput<WindowsFunctionAppSiteConfig>('siteConfig');
    this.siteCredentials = registerOutput<List<WindowsFunctionAppSiteCredential>>('siteCredentials');
    this.stickySettings = registerOutput<WindowsFunctionAppStickySettings?>('stickySettings');
    this.storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey');
    this.storageAccountName = registerOutput<String?>('storageAccountName');
    this.storageAccounts = registerOutput<List<WindowsFunctionAppStorageAccount>?>('storageAccounts');
    this.storageKeyVaultSecretId = registerOutput<String?>('storageKeyVaultSecretId');
    this.storageUsesManagedIdentity = registerOutput<bool?>('storageUsesManagedIdentity');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.virtualNetworkBackupRestoreEnabled = registerOutput<bool?>('virtualNetworkBackupRestoreEnabled');
    this.virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    this.vnetImagePullEnabled = registerOutput<bool?>('vnetImagePullEnabled');
    this.webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>('webdeployPublishBasicAuthenticationEnabled');
    this.zipDeployFile = registerOutput<String>('zipDeployFile');
  }
}
