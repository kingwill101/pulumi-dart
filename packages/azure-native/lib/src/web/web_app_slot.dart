import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_config_response.dart';
import 'extended_location_response.dart';
import 'function_app_config_response.dart';
import 'host_name_ssl_state_response.dart';
import 'hosting_environment_profile_response.dart';
import 'managed_service_identity_response.dart';
import 'resource_config_response.dart';
import 'site_config_response.dart';
import 'site_dns_config_response.dart';
import 'slot_swap_status_response.dart';
import 'web_app_slot_args.dart';

/// A web app, a mobile app backend, or an API app.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Clone web app slot
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webAppSlot = new AzureNative.Web.WebAppSlot("webAppSlot", new()
///     {
///         CloningInfo = new AzureNative.Web.Inputs.CloningInfoArgs
///         {
///             AppSettingsOverrides =
///             {
///                 { "Setting1", "NewValue1" },
///                 { "Setting3", "NewValue5" },
///             },
///             CloneCustomHostNames = true,
///             CloneSourceControl = true,
///             ConfigureLoadBalancing = false,
///             HostingEnvironment = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/hostingenvironments/aseforsites",
///             Overwrite = false,
///             SourceWebAppId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/sites/srcsiteg478/slot/qa",
///             SourceWebAppLocation = "West Europe",
///         },
///         Kind = "app",
///         Location = "East US",
///         Name = "sitef6141",
///         ResourceGroupName = "testrg123",
///         Slot = "staging",
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
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewWebAppSlot(ctx, "webAppSlot", &web.WebAppSlotArgs{
/// 			CloningInfo: &web.CloningInfoArgs{
/// 				AppSettingsOverrides: pulumi.StringMap{
/// 					"Setting1": pulumi.String("NewValue1"),
/// 					"Setting3": pulumi.String("NewValue5"),
/// 				},
/// 				CloneCustomHostNames:   pulumi.Bool(true),
/// 				CloneSourceControl:     pulumi.Bool(true),
/// 				ConfigureLoadBalancing: pulumi.Bool(false),
/// 				HostingEnvironment:     pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/hostingenvironments/aseforsites"),
/// 				Overwrite:              pulumi.Bool(false),
/// 				SourceWebAppId:         pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/sites/srcsiteg478/slot/qa"),
/// 				SourceWebAppLocation:   pulumi.String("West Europe"),
/// 			},
/// 			Kind:              pulumi.String("app"),
/// 			Location:          pulumi.String("East US"),
/// 			Name:              pulumi.String("sitef6141"),
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			Slot:              pulumi.String("staging"),
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
/// import com.pulumi.azurenative.web.WebAppSlot;
/// import com.pulumi.azurenative.web.WebAppSlotArgs;
/// import com.pulumi.azurenative.web.inputs.CloningInfoArgs;
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
///         var webAppSlot = new WebAppSlot("webAppSlot", WebAppSlotArgs.builder()
///             .cloningInfo(CloningInfoArgs.builder()
///                 .appSettingsOverrides(Map.ofEntries(
///                     Map.entry("Setting1", "NewValue1"),
///                     Map.entry("Setting3", "NewValue5")
///                 ))
///                 .cloneCustomHostNames(true)
///                 .cloneSourceControl(true)
///                 .configureLoadBalancing(false)
///                 .hostingEnvironment("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/hostingenvironments/aseforsites")
///                 .overwrite(false)
///                 .sourceWebAppId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/sites/srcsiteg478/slot/qa")
///                 .sourceWebAppLocation("West Europe")
///                 .build())
///             .kind("app")
///             .location("East US")
///             .name("sitef6141")
///             .resourceGroupName("testrg123")
///             .slot("staging")
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
/// const webAppSlot = new azure_native.web.WebAppSlot("webAppSlot", {
///     cloningInfo: {
///         appSettingsOverrides: {
///             Setting1: "NewValue1",
///             Setting3: "NewValue5",
///         },
///         cloneCustomHostNames: true,
///         cloneSourceControl: true,
///         configureLoadBalancing: false,
///         hostingEnvironment: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/hostingenvironments/aseforsites",
///         overwrite: false,
///         sourceWebAppId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/sites/srcsiteg478/slot/qa",
///         sourceWebAppLocation: "West Europe",
///     },
///     kind: "app",
///     location: "East US",
///     name: "sitef6141",
///     resourceGroupName: "testrg123",
///     slot: "staging",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_app_slot = azure_native.web.WebAppSlot("webAppSlot",
///     cloning_info={
///         "app_settings_overrides": {
///             "Setting1": "NewValue1",
///             "Setting3": "NewValue5",
///         },
///         "clone_custom_host_names": True,
///         "clone_source_control": True,
///         "configure_load_balancing": False,
///         "hosting_environment": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/hostingenvironments/aseforsites",
///         "overwrite": False,
///         "source_web_app_id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/sites/srcsiteg478/slot/qa",
///         "source_web_app_location": "West Europe",
///     },
///     kind="app",
///     location="East US",
///     name="sitef6141",
///     resource_group_name="testrg123",
///     slot="staging")
///
/// ```
///
/// ```yaml
/// resources:
///   webAppSlot:
///     type: azure-native:web:WebAppSlot
///     properties:
///       cloningInfo:
///         appSettingsOverrides:
///           Setting1: NewValue1
///           Setting3: NewValue5
///         cloneCustomHostNames: true
///         cloneSourceControl: true
///         configureLoadBalancing: false
///         hostingEnvironment: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/hostingenvironments/aseforsites
///         overwrite: false
///         sourceWebAppId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg456/providers/Microsoft.Web/sites/srcsiteg478/slot/qa
///         sourceWebAppLocation: West Europe
///       kind: app
///       location: East US
///       name: sitef6141
///       resourceGroupName: testrg123
///       slot: staging
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Web App Slot
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webAppSlot = new AzureNative.Web.WebAppSlot("webAppSlot", new()
///     {
///         Kind = "app",
///         Location = "East US",
///         Name = "sitef6141",
///         ResourceGroupName = "testrg123",
///         ServerFarmId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Web/serverfarms/DefaultAsp",
///         Slot = "staging",
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
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewWebAppSlot(ctx, "webAppSlot", &web.WebAppSlotArgs{
/// 			Kind:              pulumi.String("app"),
/// 			Location:          pulumi.String("East US"),
/// 			Name:              pulumi.String("sitef6141"),
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			ServerFarmId:      pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Web/serverfarms/DefaultAsp"),
/// 			Slot:              pulumi.String("staging"),
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
/// import com.pulumi.azurenative.web.WebAppSlot;
/// import com.pulumi.azurenative.web.WebAppSlotArgs;
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
///         var webAppSlot = new WebAppSlot("webAppSlot", WebAppSlotArgs.builder()
///             .kind("app")
///             .location("East US")
///             .name("sitef6141")
///             .resourceGroupName("testrg123")
///             .serverFarmId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Web/serverfarms/DefaultAsp")
///             .slot("staging")
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
/// const webAppSlot = new azure_native.web.WebAppSlot("webAppSlot", {
///     kind: "app",
///     location: "East US",
///     name: "sitef6141",
///     resourceGroupName: "testrg123",
///     serverFarmId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Web/serverfarms/DefaultAsp",
///     slot: "staging",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_app_slot = azure_native.web.WebAppSlot("webAppSlot",
///     kind="app",
///     location="East US",
///     name="sitef6141",
///     resource_group_name="testrg123",
///     server_farm_id="/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Web/serverfarms/DefaultAsp",
///     slot="staging")
///
/// ```
///
/// ```yaml
/// resources:
///   webAppSlot:
///     type: azure-native:web:WebAppSlot
///     properties:
///       kind: app
///       location: East US
///       name: sitef6141
///       resourceGroupName: testrg123
///       serverFarmId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Web/serverfarms/DefaultAsp
///       slot: staging
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
/// $ pulumi import azure-native:web:WebAppSlot sitef6141/staging /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}
/// ```
class WebAppSlot extends pulumi.CustomResource {
  /// Specifies the scope of uniqueness for the default hostname during resource creation
  late final pulumi.Output<String?> autoGeneratedDomainNameLabelScope;
  /// Management information availability state for the app.
  late final pulumi.Output<String> availabilityState;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// <code>true</code> to enable client affinity; <code>false</code> to stop sending session affinity cookies, which route client requests in the same session to the same instance. Default is <code>true</code>.
  late final pulumi.Output<bool?> clientAffinityEnabled;
  /// <code>true</code> to enable client certificate authentication (TLS mutual authentication); otherwise, <code>false</code>. Default is <code>false</code>.
  late final pulumi.Output<bool?> clientCertEnabled;
  /// client certificate authentication comma-separated exclusion paths
  late final pulumi.Output<String?> clientCertExclusionPaths;
  /// This composes with ClientCertEnabled setting.
  /// - ClientCertEnabled: false means ClientCert is ignored.
  /// - ClientCertEnabled: true and ClientCertMode: Required means ClientCert is required.
  /// - ClientCertEnabled: true and ClientCertMode: Optional means ClientCert is optional or accepted.
  late final pulumi.Output<String?> clientCertMode;
  /// Size of the function container.
  late final pulumi.Output<int?> containerSize;
  /// Unique identifier that verifies the custom domains assigned to the app. Customer will add this id to a txt record for verification.
  late final pulumi.Output<String?> customDomainVerificationId;
  /// Maximum allowed daily memory-time quota (applicable on dynamic apps only).
  late final pulumi.Output<int?> dailyMemoryTimeQuota;
  /// Dapr configuration of the app.
  late final pulumi.Output<DaprConfigResponse?> daprConfig;
  /// Default hostname of the app. Read-only.
  late final pulumi.Output<String> defaultHostName;
  /// Property to configure various DNS related settings for a site.
  late final pulumi.Output<SiteDnsConfigResponse?> dnsConfiguration;
  /// <code>true</code> if the app is enabled; otherwise, <code>false</code>. Setting this value to false disables the app (takes the app offline).
  late final pulumi.Output<bool?> enabled;
  /// Enabled hostnames for the app.Hostnames need to be assigned (see HostNames) AND enabled. Otherwise,
  /// the app is not served on those hostnames.
  late final pulumi.Output<List<String>> enabledHostNames;
  /// Whether to use end to end encryption between the FrontEnd and the Worker
  late final pulumi.Output<bool?> endToEndEncryptionEnabled;
  /// Extended Location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// Configuration specific of the Azure Function app.
  late final pulumi.Output<FunctionAppConfigResponse?> functionAppConfig;
  /// Hostname SSL states are used to manage the SSL bindings for app's hostnames.
  late final pulumi.Output<List<HostNameSslStateResponse>?> hostNameSslStates;
  /// Hostnames associated with the app.
  late final pulumi.Output<List<String>> hostNames;
  /// <code>true</code> to disable the public hostnames of the app; otherwise, <code>false</code>.
  /// If <code>true</code>, the app is only accessible via API management process.
  late final pulumi.Output<bool?> hostNamesDisabled;
  /// App Service Environment to use for the app.
  late final pulumi.Output<HostingEnvironmentProfileResponse?> hostingEnvironmentProfile;
  /// HttpsOnly: configures a web site to accept only https requests. Issues redirect for
  /// http requests
  late final pulumi.Output<bool?> httpsOnly;
  /// Hyper-V sandbox.
  late final pulumi.Output<bool?> hyperV;
  /// Managed service identity.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// Specifies an operation id if this site has a pending operation.
  late final pulumi.Output<String> inProgressOperationId;
  /// Specifies the IP mode of the app.
  late final pulumi.Output<String?> ipMode;
  /// <code>true</code> if the app is a default container; otherwise, <code>false</code>.
  late final pulumi.Output<bool> isDefaultContainer;
  /// Obsolete: Hyper-V sandbox.
  late final pulumi.Output<bool?> isXenon;
  /// Identity to use for Key Vault Reference authentication.
  late final pulumi.Output<String?> keyVaultReferenceIdentity;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  late final pulumi.Output<String?> kind;
  /// Last time the app was modified, in UTC. Read-only.
  late final pulumi.Output<String> lastModifiedTimeUtc;
  /// Resource Location.
  late final pulumi.Output<String> location;
  /// Azure Resource Manager ID of the customer's selected Managed Environment on which to host this app. This must be of the form /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.App/managedEnvironments/{managedEnvironmentName}
  late final pulumi.Output<String?> managedEnvironmentId;
  /// Maximum number of workers.
  /// This only applies to Functions container.
  late final pulumi.Output<int> maxNumberOfWorkers;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// List of IP addresses that the app uses for outbound connections (e.g. database access). Includes VIPs from tenants that site can be hosted with current settings. Read-only.
  late final pulumi.Output<String> outboundIpAddresses;
  /// List of IP addresses that the app uses for outbound connections (e.g. database access). Includes VIPs from all tenants except dataComponent. Read-only.
  late final pulumi.Output<String> possibleOutboundIpAddresses;
  /// Property to allow or block all public traffic. Allowed Values: 'Enabled', 'Disabled' or an empty string.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Site redundancy mode
  late final pulumi.Output<String?> redundancyMode;
  /// Name of the repository site.
  late final pulumi.Output<String> repositorySiteName;
  /// <code>true</code> if reserved; otherwise, <code>false</code>.
  late final pulumi.Output<bool?> reserved;
  /// Function app resource requirements.
  late final pulumi.Output<ResourceConfigResponse?> resourceConfig;
  /// Name of the resource group the app belongs to. Read-only.
  late final pulumi.Output<String> resourceGroup;
  /// <code>true</code> to stop SCM (KUDU) site when the app is stopped; otherwise, <code>false</code>. The default is <code>false</code>.
  late final pulumi.Output<bool?> scmSiteAlsoStopped;
  /// Resource ID of the associated App Service plan, formatted as: "/subscriptions/{subscriptionID}/resourceGroups/{groupName}/providers/Microsoft.Web/serverfarms/{appServicePlanName}".
  late final pulumi.Output<String?> serverFarmId;
  /// Configuration of the app.
  late final pulumi.Output<SiteConfigResponse?> siteConfig;
  /// Current SKU of application based on associated App Service Plan. Some valid SKU values are Free, Shared, Basic, Dynamic, FlexConsumption, Standard, Premium, PremiumV2, PremiumV3, Isolated, IsolatedV2
  late final pulumi.Output<String> sku;
  /// Status of the last deployment slot swap operation.
  late final pulumi.Output<SlotSwapStatusResponse> slotSwapStatus;
  /// Current state of the app.
  late final pulumi.Output<String> state;
  /// Checks if Customer provided storage account is required
  late final pulumi.Output<bool?> storageAccountRequired;
  /// App suspended till in case memory-time quota is exceeded.
  late final pulumi.Output<String> suspendedTill;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies which deployment slot this app will swap into. Read-only.
  late final pulumi.Output<String> targetSwapSlot;
  /// Azure Traffic Manager hostnames associated with the app. Read-only.
  late final pulumi.Output<List<String>> trafficManagerHostNames;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// State indicating whether the app has exceeded its quota usage. Read-only.
  late final pulumi.Output<String> usageState;
  /// Azure Resource Manager ID of the Virtual network and subnet to be joined by Regional VNET Integration.
  /// This must be of the form /subscriptions/{subscriptionName}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}
  late final pulumi.Output<String?> virtualNetworkSubnetId;
  /// To enable Backup and Restore operations over virtual network
  late final pulumi.Output<bool?> vnetBackupRestoreEnabled;
  /// To enable accessing content over virtual network
  late final pulumi.Output<bool?> vnetContentShareEnabled;
  /// To enable pulling image over Virtual Network
  late final pulumi.Output<bool?> vnetImagePullEnabled;
  /// Virtual Network Route All enabled. This causes all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied.
  late final pulumi.Output<bool?> vnetRouteAllEnabled;
  /// Workload profile name for function app to execute on.
  late final pulumi.Output<String?> workloadProfileName;

  /// Creates a new [WebAppSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppSlot]. {@macro pulumi_web_web_app_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppSlot(
    String name, {
    WebAppSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoGeneratedDomainNameLabelScope = registerOutput<String?>('autoGeneratedDomainNameLabelScope');
    this.availabilityState = registerOutput<String>('availabilityState');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.clientAffinityEnabled = registerOutput<bool?>('clientAffinityEnabled');
    this.clientCertEnabled = registerOutput<bool?>('clientCertEnabled');
    this.clientCertExclusionPaths = registerOutput<String?>('clientCertExclusionPaths');
    this.clientCertMode = registerOutput<String?>('clientCertMode');
    this.containerSize = registerOutput<int?>('containerSize');
    this.customDomainVerificationId = registerOutput<String?>('customDomainVerificationId');
    this.dailyMemoryTimeQuota = registerOutput<int?>('dailyMemoryTimeQuota');
    this.daprConfig = registerOutput<DaprConfigResponse?>('daprConfig');
    this.defaultHostName = registerOutput<String>('defaultHostName');
    this.dnsConfiguration = registerOutput<SiteDnsConfigResponse?>('dnsConfiguration');
    this.enabled = registerOutput<bool?>('enabled');
    this.enabledHostNames = registerOutput<List<String>>('enabledHostNames');
    this.endToEndEncryptionEnabled = registerOutput<bool?>('endToEndEncryptionEnabled');
    this.extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation');
    this.functionAppConfig = registerOutput<FunctionAppConfigResponse?>('functionAppConfig');
    this.hostNameSslStates = registerOutput<List<HostNameSslStateResponse>?>('hostNameSslStates');
    this.hostNames = registerOutput<List<String>>('hostNames');
    this.hostNamesDisabled = registerOutput<bool?>('hostNamesDisabled');
    this.hostingEnvironmentProfile = registerOutput<HostingEnvironmentProfileResponse?>('hostingEnvironmentProfile');
    this.httpsOnly = registerOutput<bool?>('httpsOnly');
    this.hyperV = registerOutput<bool?>('hyperV');
    this.identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    this.inProgressOperationId = registerOutput<String>('inProgressOperationId');
    this.ipMode = registerOutput<String?>('ipMode');
    this.isDefaultContainer = registerOutput<bool>('isDefaultContainer');
    this.isXenon = registerOutput<bool?>('isXenon');
    this.keyVaultReferenceIdentity = registerOutput<String?>('keyVaultReferenceIdentity');
    this.kind = registerOutput<String?>('kind');
    this.lastModifiedTimeUtc = registerOutput<String>('lastModifiedTimeUtc');
    this.location = registerOutput<String>('location');
    this.managedEnvironmentId = registerOutput<String?>('managedEnvironmentId');
    this.maxNumberOfWorkers = registerOutput<int>('maxNumberOfWorkers');
    this.name = registerOutput<String>('name');
    this.outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    this.possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    this.publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    this.redundancyMode = registerOutput<String?>('redundancyMode');
    this.repositorySiteName = registerOutput<String>('repositorySiteName');
    this.reserved = registerOutput<bool?>('reserved');
    this.resourceConfig = registerOutput<ResourceConfigResponse?>('resourceConfig');
    this.resourceGroup = registerOutput<String>('resourceGroup');
    this.scmSiteAlsoStopped = registerOutput<bool?>('scmSiteAlsoStopped');
    this.serverFarmId = registerOutput<String?>('serverFarmId');
    this.siteConfig = registerOutput<SiteConfigResponse?>('siteConfig');
    this.sku = registerOutput<String>('sku');
    this.slotSwapStatus = registerOutput<SlotSwapStatusResponse>('slotSwapStatus');
    this.state = registerOutput<String>('state');
    this.storageAccountRequired = registerOutput<bool?>('storageAccountRequired');
    this.suspendedTill = registerOutput<String>('suspendedTill');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targetSwapSlot = registerOutput<String>('targetSwapSlot');
    this.trafficManagerHostNames = registerOutput<List<String>>('trafficManagerHostNames');
    this.type = registerOutput<String>('type');
    this.usageState = registerOutput<String>('usageState');
    this.virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    this.vnetBackupRestoreEnabled = registerOutput<bool?>('vnetBackupRestoreEnabled');
    this.vnetContentShareEnabled = registerOutput<bool?>('vnetContentShareEnabled');
    this.vnetImagePullEnabled = registerOutput<bool?>('vnetImagePullEnabled');
    this.vnetRouteAllEnabled = registerOutput<bool?>('vnetRouteAllEnabled');
    this.workloadProfileName = registerOutput<String?>('workloadProfileName');
  }
}
