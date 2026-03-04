import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_configuration_response.dart';
import 'agent_upgrade_response.dart';
import 'cloud_metadata_response.dart';
import 'identity_response.dart';
import 'license_profile_machine_instance_view_response.dart';
import 'location_data_response.dart';
import 'machine_args.dart';
import 'network_profile_response.dart';
import 'osprofile_response.dart';
import 'service_statuses_response.dart';
import 'system_data_response.dart';

/// Describes a hybrid machine.
///
/// Uses Azure REST API version 2024-07-10. In version 2.x of the Azure Native provider, it used API version 2022-12-27.
///
/// Other available API versions: 2020-08-15-preview, 2021-01-28-preview, 2021-03-25-preview, 2021-04-22-preview, 2021-05-17-preview, 2021-05-20, 2021-06-10-preview, 2021-12-10-preview, 2022-03-10, 2022-05-10-preview, 2022-08-11-preview, 2022-11-10, 2022-12-27, 2022-12-27-preview, 2023-03-15-preview, 2023-06-20-preview, 2023-10-03-preview, 2024-03-31-preview, 2024-05-20-preview, 2024-07-31-preview, 2024-09-10-preview, 2024-11-10-preview, 2025-01-13, 2025-02-19-preview, 2025-06-01, 2025-08-21-preview, 2025-09-16-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcompute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a Machine
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var machine = new AzureNative.HybridCompute.Machine("machine", new()
///     {
///         ClientPublicKey = "string",
///         Identity = new AzureNative.HybridCompute.Inputs.IdentityArgs
///         {
///             Type = AzureNative.HybridCompute.ResourceIdentityType.SystemAssigned,
///         },
///         Location = "eastus2euap",
///         LocationData = new AzureNative.HybridCompute.Inputs.LocationDataArgs
///         {
///             Name = "Redmond",
///         },
///         MachineName = "myMachine",
///         OsProfile = new AzureNative.HybridCompute.Inputs.OSProfileArgs
///         {
///             WindowsConfiguration = new AzureNative.HybridCompute.Inputs.OSProfileWindowsConfigurationArgs
///             {
///                 EnableHotpatching = true,
///             },
///         },
///         ParentClusterResourceId = "{AzureStackHCIResourceId}",
///         PrivateLinkScopeResourceId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName",
///         ResourceGroupName = "myResourceGroup",
///         VmId = "b7a098cc-b0b8-46e8-a205-62f301a62a8f",
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
/// 	hybridcompute "github.com/pulumi/pulumi-azure-native-sdk/hybridcompute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcompute.NewMachine(ctx, "machine", &hybridcompute.MachineArgs{
/// 			ClientPublicKey: pulumi.String("string"),
/// 			Identity: &hybridcompute.IdentityArgs{
/// 				Type: hybridcompute.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			Location: pulumi.String("eastus2euap"),
/// 			LocationData: &hybridcompute.LocationDataArgs{
/// 				Name: pulumi.String("Redmond"),
/// 			},
/// 			MachineName: pulumi.String("myMachine"),
/// 			OsProfile: &hybridcompute.OSProfileArgs{
/// 				WindowsConfiguration: &hybridcompute.OSProfileWindowsConfigurationArgs{
/// 					EnableHotpatching: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ParentClusterResourceId:    pulumi.String("{AzureStackHCIResourceId}"),
/// 			PrivateLinkScopeResourceId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName"),
/// 			ResourceGroupName:          pulumi.String("myResourceGroup"),
/// 			VmId:                       pulumi.String("b7a098cc-b0b8-46e8-a205-62f301a62a8f"),
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
/// import com.pulumi.azurenative.hybridcompute.Machine;
/// import com.pulumi.azurenative.hybridcompute.MachineArgs;
/// import com.pulumi.azurenative.hybridcompute.inputs.IdentityArgs;
/// import com.pulumi.azurenative.hybridcompute.inputs.LocationDataArgs;
/// import com.pulumi.azurenative.hybridcompute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.hybridcompute.inputs.OSProfileWindowsConfigurationArgs;
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
///         var machine = new Machine("machine", MachineArgs.builder()
///             .clientPublicKey("string")
///             .identity(IdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("eastus2euap")
///             .locationData(LocationDataArgs.builder()
///                 .name("Redmond")
///                 .build())
///             .machineName("myMachine")
///             .osProfile(OSProfileArgs.builder()
///                 .windowsConfiguration(OSProfileWindowsConfigurationArgs.builder()
///                     .enableHotpatching(true)
///                     .build())
///                 .build())
///             .parentClusterResourceId("{AzureStackHCIResourceId}")
///             .privateLinkScopeResourceId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName")
///             .resourceGroupName("myResourceGroup")
///             .vmId("b7a098cc-b0b8-46e8-a205-62f301a62a8f")
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
/// const machine = new azure_native.hybridcompute.Machine("machine", {
///     clientPublicKey: "string",
///     identity: {
///         type: azure_native.hybridcompute.ResourceIdentityType.SystemAssigned,
///     },
///     location: "eastus2euap",
///     locationData: {
///         name: "Redmond",
///     },
///     machineName: "myMachine",
///     osProfile: {
///         windowsConfiguration: {
///             enableHotpatching: true,
///         },
///     },
///     parentClusterResourceId: "{AzureStackHCIResourceId}",
///     privateLinkScopeResourceId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName",
///     resourceGroupName: "myResourceGroup",
///     vmId: "b7a098cc-b0b8-46e8-a205-62f301a62a8f",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// machine = azure_native.hybridcompute.Machine("machine",
///     client_public_key="string",
///     identity={
///         "type": azure_native.hybridcompute.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="eastus2euap",
///     location_data={
///         "name": "Redmond",
///     },
///     machine_name="myMachine",
///     os_profile={
///         "windows_configuration": {
///             "enable_hotpatching": True,
///         },
///     },
///     parent_cluster_resource_id="{AzureStackHCIResourceId}",
///     private_link_scope_resource_id="/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName",
///     resource_group_name="myResourceGroup",
///     vm_id="b7a098cc-b0b8-46e8-a205-62f301a62a8f")
///
/// ```
///
/// ```yaml
/// resources:
///   machine:
///     type: azure-native:hybridcompute:Machine
///     properties:
///       clientPublicKey: string
///       identity:
///         type: SystemAssigned
///       location: eastus2euap
///       locationData:
///         name: Redmond
///       machineName: myMachine
///       osProfile:
///         windowsConfiguration:
///           enableHotpatching: true
///       parentClusterResourceId: '{AzureStackHCIResourceId}'
///       privateLinkScopeResourceId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName
///       resourceGroupName: myResourceGroup
///       vmId: b7a098cc-b0b8-46e8-a205-62f301a62a8f
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
/// $ pulumi import azure-native:hybridcompute:Machine myMachine /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridCompute/machines/{machineName}
/// ```
class Machine extends pulumi.CustomResource {
  /// Specifies the AD fully qualified display name.
  late final pulumi.Output<String> adFqdn;

  /// Configurable properties that the user can set locally via the azcmagent config command, or remotely via ARM.
  late final pulumi.Output<AgentConfigurationResponse> agentConfiguration;

  /// The info of the machine w.r.t Agent Upgrade
  late final pulumi.Output<AgentUpgradeResponse?> agentUpgrade;

  /// The hybrid machine agent full version.
  late final pulumi.Output<String> agentVersion;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Public Key that the client provides to be used during initial resource onboarding
  late final pulumi.Output<String?> clientPublicKey;

  /// The metadata of the cloud environment (Azure/GCP/AWS/OCI...).
  late final pulumi.Output<CloudMetadataResponse?> cloudMetadata;

  /// Detected properties from the machine.
  late final pulumi.Output<Map<String, String>> detectedProperties;

  /// Specifies the hybrid machine display name.
  late final pulumi.Output<String> displayName;

  /// Specifies the DNS fully qualified display name.
  late final pulumi.Output<String> dnsFqdn;

  /// Specifies the Windows domain name.
  late final pulumi.Output<String> domainName;

  /// Details about the error state.
  late final pulumi.Output<List<Map<String, dynamic>>> errorDetails;

  /// Machine Extensions information (deprecated field)
  late final pulumi.Output<List<Map<String, dynamic>>?> extensions;

  /// Identity for the resource.
  late final pulumi.Output<IdentityResponse?> identity;

  /// Indicates which kind of Arc machine placement on-premises, such as HCI, SCVMM or VMware etc.
  late final pulumi.Output<String?> kind;

  /// The time of the last status change.
  late final pulumi.Output<String> lastStatusChange;

  /// Specifies the License related properties for a machine.
  late final pulumi.Output<LicenseProfileMachineInstanceViewResponse?>
  licenseProfile;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Metadata pertaining to the geographic location of the resource.
  late final pulumi.Output<LocationDataResponse?> locationData;

  /// Specifies the hybrid machine FQDN.
  late final pulumi.Output<String> machineFqdn;

  /// Specifies whether any MS SQL instance is discovered on the machine.
  late final pulumi.Output<String?> mssqlDiscovered;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Information about the network the machine is on.
  late final pulumi.Output<NetworkProfileResponse> networkProfile;

  /// The edition of the Operating System.
  late final pulumi.Output<String> osEdition;

  /// The Operating System running on the hybrid machine.
  late final pulumi.Output<String> osName;

  /// Specifies the operating system settings for the hybrid machine.
  late final pulumi.Output<OSProfileResponse?> osProfile;

  /// Specifies the Operating System product SKU.
  late final pulumi.Output<String> osSku;

  /// The type of Operating System (windows/linux).
  late final pulumi.Output<String?> osType;

  /// The version of Operating System running on the hybrid machine.
  late final pulumi.Output<String> osVersion;

  /// The resource id of the parent cluster (Azure HCI) this machine is assigned to, if any.
  late final pulumi.Output<String?> parentClusterResourceId;

  /// The resource id of the private link scope this machine is assigned to, if any.
  late final pulumi.Output<String?> privateLinkScopeResourceId;

  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;

  /// The list of extensions affiliated to the machine
  late final pulumi.Output<List<Map<String, dynamic>>> resources;

  /// Statuses of dependent services that are reported back to ARM.
  late final pulumi.Output<ServiceStatusesResponse?> serviceStatuses;

  /// The status of the hybrid machine agent.
  late final pulumi.Output<String> status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Specifies the hybrid machine unique ID.
  late final pulumi.Output<String?> vmId;

  /// Specifies the Arc Machine's unique SMBIOS ID
  late final pulumi.Output<String> vmUuid;

  /// Creates a new [Machine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Machine]. {@macro pulumi_hybridcompute_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Machine(
    String name, {
    MachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridcompute:Machine',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adFqdn = registerOutput<String>('adFqdn');
    agentConfiguration = registerOutput<AgentConfigurationResponse>(
      'agentConfiguration',
    );
    agentUpgrade = registerOutput<AgentUpgradeResponse?>('agentUpgrade');
    agentVersion = registerOutput<String>('agentVersion');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientPublicKey = registerOutput<String?>('clientPublicKey');
    cloudMetadata = registerOutput<CloudMetadataResponse?>('cloudMetadata');
    detectedProperties = registerOutput<Map<String, String>>(
      'detectedProperties',
    );
    displayName = registerOutput<String>('displayName');
    dnsFqdn = registerOutput<String>('dnsFqdn');
    domainName = registerOutput<String>('domainName');
    errorDetails = registerOutput<List<Map<String, dynamic>>>('errorDetails');
    extensions = registerOutput<List<Map<String, dynamic>>?>('extensions');
    identity = registerOutput<IdentityResponse?>('identity');
    kind = registerOutput<String?>('kind');
    lastStatusChange = registerOutput<String>('lastStatusChange');
    licenseProfile = registerOutput<LicenseProfileMachineInstanceViewResponse?>(
      'licenseProfile',
    );
    location = registerOutput<String>('location');
    locationData = registerOutput<LocationDataResponse?>('locationData');
    machineFqdn = registerOutput<String>('machineFqdn');
    mssqlDiscovered = registerOutput<String?>('mssqlDiscovered');
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<NetworkProfileResponse>('networkProfile');
    osEdition = registerOutput<String>('osEdition');
    osName = registerOutput<String>('osName');
    osProfile = registerOutput<OSProfileResponse?>('osProfile');
    osSku = registerOutput<String>('osSku');
    osType = registerOutput<String?>('osType');
    osVersion = registerOutput<String>('osVersion');
    parentClusterResourceId = registerOutput<String?>(
      'parentClusterResourceId',
    );
    privateLinkScopeResourceId = registerOutput<String?>(
      'privateLinkScopeResourceId',
    );
    provisioningState = registerOutput<String>('provisioningState');
    resources = registerOutput<List<Map<String, dynamic>>>('resources');
    serviceStatuses = registerOutput<ServiceStatusesResponse?>(
      'serviceStatuses',
    );
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    vmId = registerOutput<String?>('vmId');
    vmUuid = registerOutput<String>('vmUuid');
  }
}
