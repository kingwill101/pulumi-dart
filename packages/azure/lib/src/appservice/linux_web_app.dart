import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_args.dart';
import 'linux_web_app_auth_settings.dart';
import 'linux_web_app_auth_settings_v2.dart';
import 'linux_web_app_backup.dart';
import 'linux_web_app_connection_string.dart';
import 'linux_web_app_identity.dart';
import 'linux_web_app_logs.dart';
import 'linux_web_app_site_config.dart';
import 'linux_web_app_site_credential.dart';
import 'linux_web_app_sticky_settings.dart';
import 'linux_web_app_storage_account.dart';

/// Manages a Linux Web App.
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
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     osType: "Linux",
///     skuName: "P1v2",
/// });
/// const exampleLinuxWebApp = new azure.appservice.LinuxWebApp("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: exampleServicePlan.location,
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
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     os_type="Linux",
///     sku_name="P1v2")
/// example_linux_web_app = azure.appservice.LinuxWebApp("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example_service_plan.location,
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
///     var exampleServicePlan = new Azure.AppService.ServicePlan("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         OsType = "Linux",
///         SkuName = "P1v2",
///     });
///
///     var exampleLinuxWebApp = new Azure.AppService.LinuxWebApp("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = exampleServicePlan.Location,
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
/// 		exampleServicePlan, err := appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			OsType:            pulumi.String("Linux"),
/// 			SkuName:           pulumi.String("P1v2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewLinuxWebApp(ctx, "example", &appservice.LinuxWebAppArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          exampleServicePlan.Location,
/// 			ServicePlanId:     exampleServicePlan.ID(),
/// 			SiteConfig:        &appservice.LinuxWebAppSiteConfigArgs{},
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
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
/// import com.pulumi.azure.appservice.LinuxWebApp;
/// import com.pulumi.azure.appservice.LinuxWebAppArgs;
/// import com.pulumi.azure.appservice.inputs.LinuxWebAppSiteConfigArgs;
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
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .osType("Linux")
///             .skuName("P1v2")
///             .build());
///
///         var exampleLinuxWebApp = new LinuxWebApp("exampleLinuxWebApp", LinuxWebAppArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(exampleServicePlan.location())
///             .servicePlanId(exampleServicePlan.id())
///             .siteConfig(LinuxWebAppSiteConfigArgs.builder()
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
///   exampleServicePlan:
///     type: azure:appservice:ServicePlan
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       osType: Linux
///       skuName: P1v2
///   exampleLinuxWebApp:
///     type: azure:appservice:LinuxWebApp
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${exampleServicePlan.location}
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
/// Linux Web Apps can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/linuxWebApp:LinuxWebApp example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1
/// ```
class LinuxWebApp extends pulumi.CustomResource {
  /// A map of key-value pairs of App Settings.
  late final pulumi.Output<Map<String, String>?> appSettings;
  /// A `auth_settings` block as defined below.
  late final pulumi.Output<LinuxWebAppAuthSettings?> authSettings;
  /// An `auth_settings_v2` block as defined below.
  late final pulumi.Output<LinuxWebAppAuthSettingsV2?> authSettingsV2;
  /// A `backup` block as defined below.
  late final pulumi.Output<LinuxWebAppBackup?> backup;
  /// Should Client Affinity be enabled?
  late final pulumi.Output<bool?> clientAffinityEnabled;
  /// Should Client Certificates be enabled?
  late final pulumi.Output<bool?> clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  late final pulumi.Output<String?> clientCertificateExclusionPaths;
  /// The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `client_certificate_enabled` is `false`. Defaults to `Required`.
  late final pulumi.Output<String?> clientCertificateMode;
  /// One or more `connection_string` blocks as defined below.
  late final pulumi.Output<List<LinuxWebAppConnectionString>?> connectionStrings;
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  late final pulumi.Output<String> customDomainVerificationId;
  /// The default hostname of the Linux Web App.
  late final pulumi.Output<String> defaultHostname;
  /// Should the Linux Web App be enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  late final pulumi.Output<bool?> ftpPublishBasicAuthenticationEnabled;
  /// The ID of the App Service Environment used by App Service.
  late final pulumi.Output<String> hostingEnvironmentId;
  /// Should the Linux Web App require HTTPS connections. Defaults to `false`.
  late final pulumi.Output<bool?> httpsOnly;
  /// An `identity` block as defined below.
  late final pulumi.Output<LinuxWebAppIdentity?> identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity).
  late final pulumi.Output<String> keyVaultReferenceIdentityId;
  /// The Kind value for this Linux Web App.
  late final pulumi.Output<String> kind;
  /// The Azure Region where the Linux Web App should exist. Changing this forces a new Linux Web App to be created.
  late final pulumi.Output<String> location;
  /// A `logs` block as defined below.
  late final pulumi.Output<LinuxWebAppLogs?> logs;
  /// The name which should be used for this Linux Web App. Changing this forces a new Linux Web App to be created.
  ///
  /// > **Note:** Terraform will perform a name availability check as part of the creation progress, if this Web App is part of an App Service Environment terraform will require Read permission on the ASE for this to complete reliably.
  late final pulumi.Output<String> name;
  /// A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]`
  late final pulumi.Output<List<String>> outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`.
  late final pulumi.Output<String> outboundIpAddresses;
  /// A list of possible outbound ip address.
  late final pulumi.Output<List<String>> possibleOutboundIpAddressLists;
  /// A comma-separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  late final pulumi.Output<String> possibleOutboundIpAddresses;
  /// Should public network access be enabled for the Web App. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the Resource Group where the Linux Web App should exist. Changing this forces a new Linux Web App to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The ID of the Service Plan that this Linux App Service will be created in.
  late final pulumi.Output<String> servicePlanId;
  /// A `site_config` block as defined below.
  late final pulumi.Output<LinuxWebAppSiteConfig> siteConfig;
  /// A `site_credential` block as defined below.
  late final pulumi.Output<List<LinuxWebAppSiteCredential>> siteCredentials;
  /// A `sticky_settings` block as defined below.
  late final pulumi.Output<LinuxWebAppStickySettings?> stickySettings;
  /// One or more `storage_account` blocks as defined below.
  late final pulumi.Output<List<LinuxWebAppStorageAccount>?> storageAccounts;
  /// A mapping of tags which should be assigned to the Linux Web App.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  late final pulumi.Output<bool?> virtualNetworkBackupRestoreEnabled;
  /// The subnet id which will be used by this Web App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// > **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource app_service_virtual_network_swift_connection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the web app configuration.
  ///
  /// > **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  late final pulumi.Output<String?> virtualNetworkSubnetId;
  /// Should the traffic for the image pull be routed over virtual network enabled. Defaults to `false`.
  ///
  /// > **Note:** The feature can also be enabled via the app setting `WEBSITE_PULL_IMAGE_OVER_VNET`. Must be set to `true` when running in an App Service Environment.
  late final pulumi.Output<bool?> vnetImagePullEnabled;
  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  ///
  /// > **Note:** Setting this value to true will disable the ability to use `zip_deploy_file` which currently relies on the default publishing profile.
  late final pulumi.Output<bool?> webdeployPublishBasicAuthenticationEnabled;
  /// The local path and filename of the Zip packaged application to deploy to this Linux Web App.
  ///
  /// > **Note:** Using this value requires either `WEBSITE_RUN_FROM_PACKAGE=1` or `SCM_DO_BUILD_DURING_DEPLOYMENT=true` to be set on the App in `app_settings`. Refer to the Azure docs on [running the Web App directly from the Zip package](https://learn.microsoft.com/en-us/azure/app-service/deploy-run-package), or [automating the build for Zip deploy](https://learn.microsoft.com/en-us/azure/app-service/deploy-zip#enable-build-automation-for-zip-deploy) for further details.
  late final pulumi.Output<String> zipDeployFile;

  /// Creates a new [LinuxWebApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinuxWebApp]. {@macro pulumi_appservice_linux_web_app_linux_web_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinuxWebApp(
    String name, {
    LinuxWebAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/linuxWebApp:LinuxWebApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appSettings = registerOutput<Map<String, String>?>('appSettings');
    this.authSettings = registerOutput<LinuxWebAppAuthSettings?>('authSettings');
    this.authSettingsV2 = registerOutput<LinuxWebAppAuthSettingsV2?>('authSettingsV2');
    this.backup = registerOutput<LinuxWebAppBackup?>('backup');
    this.clientAffinityEnabled = registerOutput<bool?>('clientAffinityEnabled');
    this.clientCertificateEnabled = registerOutput<bool?>('clientCertificateEnabled');
    this.clientCertificateExclusionPaths = registerOutput<String?>('clientCertificateExclusionPaths');
    this.clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    this.connectionStrings = registerOutput<List<LinuxWebAppConnectionString>?>('connectionStrings');
    this.customDomainVerificationId = registerOutput<String>('customDomainVerificationId');
    this.defaultHostname = registerOutput<String>('defaultHostname');
    this.enabled = registerOutput<bool?>('enabled');
    this.ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>('ftpPublishBasicAuthenticationEnabled');
    this.hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    this.httpsOnly = registerOutput<bool?>('httpsOnly');
    this.identity = registerOutput<LinuxWebAppIdentity?>('identity');
    this.keyVaultReferenceIdentityId = registerOutput<String>('keyVaultReferenceIdentityId');
    this.kind = registerOutput<String>('kind');
    this.location = registerOutput<String>('location');
    this.logs = registerOutput<LinuxWebAppLogs?>('logs');
    this.name = registerOutput<String>('name');
    this.outboundIpAddressLists = registerOutput<List<String>>('outboundIpAddressLists');
    this.outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    this.possibleOutboundIpAddressLists = registerOutput<List<String>>('possibleOutboundIpAddressLists');
    this.possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.servicePlanId = registerOutput<String>('servicePlanId');
    this.siteConfig = registerOutput<LinuxWebAppSiteConfig>('siteConfig');
    this.siteCredentials = registerOutput<List<LinuxWebAppSiteCredential>>('siteCredentials');
    this.stickySettings = registerOutput<LinuxWebAppStickySettings?>('stickySettings');
    this.storageAccounts = registerOutput<List<LinuxWebAppStorageAccount>?>('storageAccounts');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.virtualNetworkBackupRestoreEnabled = registerOutput<bool?>('virtualNetworkBackupRestoreEnabled');
    this.virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    this.vnetImagePullEnabled = registerOutput<bool?>('vnetImagePullEnabled');
    this.webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>('webdeployPublishBasicAuthenticationEnabled');
    this.zipDeployFile = registerOutput<String>('zipDeployFile');
  }
}
