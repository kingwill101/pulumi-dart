import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_dev_ops_organization_profile_response.dart';
import 'managed_service_identity_response.dart';
import 'pool_args.dart';
import 'stateful_response.dart';
import 'system_data_response.dart';
import 'vmss_fabric_profile_response.dart';

/// Concrete tracked resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2025-01-21. In version 2.x of the Azure Native provider, it used API version 2023-10-30-preview.
///
/// Other available API versions: 2023-10-30-preview, 2023-12-13-preview, 2024-03-26-preview, 2024-04-04-preview, 2024-10-19, 2025-09-20. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devopsinfrastructure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Pools_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new AzureNative.DevOpsInfrastructure.Pool("pool", new()
///     {
///         AgentProfile = new AzureNative.DevOpsInfrastructure.Inputs.StatelessAgentProfileArgs
///         {
///             Kind = "Stateless",
///         },
///         DevCenterProjectResourceId = "/subscriptions/222e81d0-cf38-4dab-baa5-289bf16baaa4/resourceGroups/rg-1es-devcenter/providers/Microsoft.DevCenter/projects/1ES",
///         FabricProfile = new AzureNative.DevOpsInfrastructure.Inputs.VmssFabricProfileArgs
///         {
///             Images = new[]
///             {
///                 new AzureNative.DevOpsInfrastructure.Inputs.PoolImageArgs
///                 {
///                     EphemeralType = AzureNative.DevOpsInfrastructure.EphemeralType.Automatic,
///                     ResourceId = "/MicrosoftWindowsServer/WindowsServer/2019-Datacenter/latest",
///                 },
///             },
///             Kind = "Vmss",
///             OsProfile = new AzureNative.DevOpsInfrastructure.Inputs.OsProfileArgs
///             {
///                 SecretsManagementSettings = new AzureNative.DevOpsInfrastructure.Inputs.SecretsManagementSettingsArgs
///                 {
///                     CertificateStoreName = AzureNative.DevOpsInfrastructure.CertificateStoreNameOption.Root,
///                     KeyExportable = false,
///                     ObservedCertificates = new[]
///                     {
///                         "https://abc.vault.azure.net/secrets/one",
///                     },
///                 },
///             },
///             Sku = new AzureNative.DevOpsInfrastructure.Inputs.DevOpsAzureSkuArgs
///             {
///                 Name = "Standard_D4ads_v5",
///             },
///         },
///         Location = "eastus",
///         MaximumConcurrency = 10,
///         OrganizationProfile = new AzureNative.DevOpsInfrastructure.Inputs.AzureDevOpsOrganizationProfileArgs
///         {
///             Kind = "AzureDevOps",
///             Organizations = new[]
///             {
///                 new AzureNative.DevOpsInfrastructure.Inputs.OrganizationArgs
///                 {
///                     OpenAccess = true,
///                     Url = "https://mseng.visualstudio.com",
///                 },
///             },
///         },
///         PoolName = "pool",
///         ProvisioningState = AzureNative.DevOpsInfrastructure.ProvisioningState.Succeeded,
///         ResourceGroupName = "rg",
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
/// 	devopsinfrastructure "github.com/pulumi/pulumi-azure-native-sdk/devopsinfrastructure/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devopsinfrastructure.NewPool(ctx, "pool", &devopsinfrastructure.PoolArgs{
/// 			AgentProfile: &devopsinfrastructure.StatelessAgentProfileArgs{
/// 				Kind: pulumi.String("Stateless"),
/// 			},
/// 			DevCenterProjectResourceId: pulumi.String("/subscriptions/222e81d0-cf38-4dab-baa5-289bf16baaa4/resourceGroups/rg-1es-devcenter/providers/Microsoft.DevCenter/projects/1ES"),
/// 			FabricProfile: &devopsinfrastructure.VmssFabricProfileArgs{
/// 				Images: devopsinfrastructure.PoolImageArray{
/// 					&devopsinfrastructure.PoolImageArgs{
/// 						EphemeralType: pulumi.String(devopsinfrastructure.EphemeralTypeAutomatic),
/// 						ResourceId:    pulumi.String("/MicrosoftWindowsServer/WindowsServer/2019-Datacenter/latest"),
/// 					},
/// 				},
/// 				Kind: pulumi.String("Vmss"),
/// 				OsProfile: &devopsinfrastructure.OsProfileArgs{
/// 					SecretsManagementSettings: &devopsinfrastructure.SecretsManagementSettingsArgs{
/// 						CertificateStoreName: pulumi.String(devopsinfrastructure.CertificateStoreNameOptionRoot),
/// 						KeyExportable:        pulumi.Bool(false),
/// 						ObservedCertificates: pulumi.StringArray{
/// 							pulumi.String("https://abc.vault.azure.net/secrets/one"),
/// 						},
/// 					},
/// 				},
/// 				Sku: &devopsinfrastructure.DevOpsAzureSkuArgs{
/// 					Name: pulumi.String("Standard_D4ads_v5"),
/// 				},
/// 			},
/// 			Location:           pulumi.String("eastus"),
/// 			MaximumConcurrency: pulumi.Int(10),
/// 			OrganizationProfile: &devopsinfrastructure.AzureDevOpsOrganizationProfileArgs{
/// 				Kind: pulumi.String("AzureDevOps"),
/// 				Organizations: devopsinfrastructure.OrganizationArray{
/// 					&devopsinfrastructure.OrganizationArgs{
/// 						OpenAccess: pulumi.Bool(true),
/// 						Url:        pulumi.String("https://mseng.visualstudio.com"),
/// 					},
/// 				},
/// 			},
/// 			PoolName:          pulumi.String("pool"),
/// 			ProvisioningState: pulumi.String(devopsinfrastructure.ProvisioningStateSucceeded),
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// import com.pulumi.azurenative.devopsinfrastructure.Pool;
/// import com.pulumi.azurenative.devopsinfrastructure.PoolArgs;
/// import com.pulumi.azurenative.devopsinfrastructure.inputs.VmssFabricProfileArgs;
/// import com.pulumi.azurenative.devopsinfrastructure.inputs.OsProfileArgs;
/// import com.pulumi.azurenative.devopsinfrastructure.inputs.SecretsManagementSettingsArgs;
/// import com.pulumi.azurenative.devopsinfrastructure.inputs.DevOpsAzureSkuArgs;
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
///         var pool = new Pool("pool", PoolArgs.builder()
///             .agentProfile(StatelessAgentProfileArgs.builder()
///                 .kind("Stateless")
///                 .build())
///             .devCenterProjectResourceId("/subscriptions/222e81d0-cf38-4dab-baa5-289bf16baaa4/resourceGroups/rg-1es-devcenter/providers/Microsoft.DevCenter/projects/1ES")
///             .fabricProfile(VmssFabricProfileArgs.builder()
///                 .images(PoolImageArgs.builder()
///                     .ephemeralType("Automatic")
///                     .resourceId("/MicrosoftWindowsServer/WindowsServer/2019-Datacenter/latest")
///                     .build())
///                 .kind("Vmss")
///                 .osProfile(OsProfileArgs.builder()
///                     .secretsManagementSettings(SecretsManagementSettingsArgs.builder()
///                         .certificateStoreName("Root")
///                         .keyExportable(false)
///                         .observedCertificates("https://abc.vault.azure.net/secrets/one")
///                         .build())
///                     .build())
///                 .sku(DevOpsAzureSkuArgs.builder()
///                     .name("Standard_D4ads_v5")
///                     .build())
///                 .build())
///             .location("eastus")
///             .maximumConcurrency(10)
///             .organizationProfile(AzureDevOpsOrganizationProfileArgs.builder()
///                 .kind("AzureDevOps")
///                 .organizations(OrganizationArgs.builder()
///                     .openAccess(true)
///                     .url("https://mseng.visualstudio.com")
///                     .build())
///                 .build())
///             .poolName("pool")
///             .provisioningState("Succeeded")
///             .resourceGroupName("rg")
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
/// const pool = new azure_native.devopsinfrastructure.Pool("pool", {
///     agentProfile: {
///         kind: "Stateless",
///     },
///     devCenterProjectResourceId: "/subscriptions/222e81d0-cf38-4dab-baa5-289bf16baaa4/resourceGroups/rg-1es-devcenter/providers/Microsoft.DevCenter/projects/1ES",
///     fabricProfile: {
///         images: [{
///             ephemeralType: azure_native.devopsinfrastructure.EphemeralType.Automatic,
///             resourceId: "/MicrosoftWindowsServer/WindowsServer/2019-Datacenter/latest",
///         }],
///         kind: "Vmss",
///         osProfile: {
///             secretsManagementSettings: {
///                 certificateStoreName: azure_native.devopsinfrastructure.CertificateStoreNameOption.Root,
///                 keyExportable: false,
///                 observedCertificates: ["https://abc.vault.azure.net/secrets/one"],
///             },
///         },
///         sku: {
///             name: "Standard_D4ads_v5",
///         },
///     },
///     location: "eastus",
///     maximumConcurrency: 10,
///     organizationProfile: {
///         kind: "AzureDevOps",
///         organizations: [{
///             openAccess: true,
///             url: "https://mseng.visualstudio.com",
///         }],
///     },
///     poolName: "pool",
///     provisioningState: azure_native.devopsinfrastructure.ProvisioningState.Succeeded,
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.devopsinfrastructure.Pool("pool",
///     agent_profile={
///         "kind": "Stateless",
///     },
///     dev_center_project_resource_id="/subscriptions/222e81d0-cf38-4dab-baa5-289bf16baaa4/resourceGroups/rg-1es-devcenter/providers/Microsoft.DevCenter/projects/1ES",
///     fabric_profile={
///         "images": [{
///             "ephemeral_type": azure_native.devopsinfrastructure.EphemeralType.AUTOMATIC,
///             "resource_id": "/MicrosoftWindowsServer/WindowsServer/2019-Datacenter/latest",
///         }],
///         "kind": "Vmss",
///         "os_profile": {
///             "secrets_management_settings": {
///                 "certificate_store_name": azure_native.devopsinfrastructure.CertificateStoreNameOption.ROOT,
///                 "key_exportable": False,
///                 "observed_certificates": ["https://abc.vault.azure.net/secrets/one"],
///             },
///         },
///         "sku": {
///             "name": "Standard_D4ads_v5",
///         },
///     },
///     location="eastus",
///     maximum_concurrency=10,
///     organization_profile={
///         "kind": "AzureDevOps",
///         "organizations": [{
///             "open_access": True,
///             "url": "https://mseng.visualstudio.com",
///         }],
///     },
///     pool_name="pool",
///     provisioning_state=azure_native.devopsinfrastructure.ProvisioningState.SUCCEEDED,
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:devopsinfrastructure:Pool
///     properties:
///       agentProfile:
///         kind: Stateless
///       devCenterProjectResourceId: /subscriptions/222e81d0-cf38-4dab-baa5-289bf16baaa4/resourceGroups/rg-1es-devcenter/providers/Microsoft.DevCenter/projects/1ES
///       fabricProfile:
///         images:
///           - ephemeralType: Automatic
///             resourceId: /MicrosoftWindowsServer/WindowsServer/2019-Datacenter/latest
///         kind: Vmss
///         osProfile:
///           secretsManagementSettings:
///             certificateStoreName: Root
///             keyExportable: false
///             observedCertificates:
///               - https://abc.vault.azure.net/secrets/one
///         sku:
///           name: Standard_D4ads_v5
///       location: eastus
///       maximumConcurrency: 10
///       organizationProfile:
///         kind: AzureDevOps
///         organizations:
///           - openAccess: true
///             url: https://mseng.visualstudio.com
///       poolName: pool
///       provisioningState: Succeeded
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:devopsinfrastructure:Pool myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevOpsInfrastructure/pools/{poolName}
/// ```
class Pool extends pulumi.CustomResource {
  /// Defines how the machine will be handled once it executed a job.
  late final pulumi.Output<StatefulResponse> agentProfile;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The resource id of the DevCenter Project the pool belongs to.
  late final pulumi.Output<String> devCenterProjectResourceId;

  /// Defines the type of fabric the agent will run on.
  late final pulumi.Output<VmssFabricProfileResponse> fabricProfile;

  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Defines how many resources can there be created at any given time.
  late final pulumi.Output<int> maximumConcurrency;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Defines the organization in which the pool will be used.
  late final pulumi.Output<AzureDevOpsOrganizationProfileResponse>
  organizationProfile;

  /// The status of the current operation.
  late final pulumi.Output<String?> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Pool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pool]. {@macro pulumi_devopsinfrastructure_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pool(String name, {PoolArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:devopsinfrastructure:Pool',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    agentProfile = registerOutput<StatefulResponse>(
      'agentProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StatefulResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    devCenterProjectResourceId = registerOutput<String>(
      'devCenterProjectResourceId',
    );
    fabricProfile = registerOutput<VmssFabricProfileResponse>(
      'fabricProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VmssFabricProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    identity = registerOutput<ManagedServiceIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    maximumConcurrency = registerOutput<int>('maximumConcurrency');
    this.name = registerOutput<String>('name');
    organizationProfile =
        registerOutput<AzureDevOpsOrganizationProfileResponse>(
          'organizationProfile',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AzureDevOpsOrganizationProfileResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    provisioningState = registerOutput<String?>('provisioningState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
