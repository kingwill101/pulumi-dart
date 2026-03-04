import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_args.dart';
import 'stop_on_disconnect_configuration_response.dart';
import 'system_data_response.dart';

/// A pool of Virtual Machines.
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var pool = new AzureNative.DevCenter.Pool("pool", new()
///     {
///         DevBoxDefinitionName = "WebDevBox",
///         DisplayName = "Developer Pool",
///         LicenseType = AzureNative.DevCenter.LicenseType.Windows_Client,
///         LocalAdministrator = AzureNative.DevCenter.LocalAdminStatus.Enabled,
///         Location = "centralus",
///         NetworkConnectionName = "Network1-westus2",
///         PoolName = "DevPool",
///         ProjectName = "DevProject",
///         ResourceGroupName = "rg1",
///         SingleSignOnStatus = AzureNative.DevCenter.SingleSignOnStatus.Disabled,
///         StopOnDisconnect = new AzureNative.DevCenter.Inputs.StopOnDisconnectConfigurationArgs
///         {
///             GracePeriodMinutes = 60,
///             Status = AzureNative.DevCenter.StopOnDisconnectEnableStatus.Enabled,
///         },
///         VirtualNetworkType = AzureNative.DevCenter.VirtualNetworkType.Unmanaged,
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewPool(ctx, "pool", &devcenter.PoolArgs{
/// 			DevBoxDefinitionName:  pulumi.String("WebDevBox"),
/// 			DisplayName:           pulumi.String("Developer Pool"),
/// 			LicenseType:           pulumi.String(devcenter.LicenseType_Windows_Client),
/// 			LocalAdministrator:    pulumi.String(devcenter.LocalAdminStatusEnabled),
/// 			Location:              pulumi.String("centralus"),
/// 			NetworkConnectionName: pulumi.String("Network1-westus2"),
/// 			PoolName:              pulumi.String("DevPool"),
/// 			ProjectName:           pulumi.String("DevProject"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			SingleSignOnStatus:    pulumi.String(devcenter.SingleSignOnStatusDisabled),
/// 			StopOnDisconnect: &devcenter.StopOnDisconnectConfigurationArgs{
/// 				GracePeriodMinutes: pulumi.Int(60),
/// 				Status:             pulumi.String(devcenter.StopOnDisconnectEnableStatusEnabled),
/// 			},
/// 			VirtualNetworkType: pulumi.String(devcenter.VirtualNetworkTypeUnmanaged),
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
/// import com.pulumi.azurenative.devcenter.Pool;
/// import com.pulumi.azurenative.devcenter.PoolArgs;
/// import com.pulumi.azurenative.devcenter.inputs.StopOnDisconnectConfigurationArgs;
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
///             .devBoxDefinitionName("WebDevBox")
///             .displayName("Developer Pool")
///             .licenseType("Windows_Client")
///             .localAdministrator("Enabled")
///             .location("centralus")
///             .networkConnectionName("Network1-westus2")
///             .poolName("DevPool")
///             .projectName("DevProject")
///             .resourceGroupName("rg1")
///             .singleSignOnStatus("Disabled")
///             .stopOnDisconnect(StopOnDisconnectConfigurationArgs.builder()
///                 .gracePeriodMinutes(60)
///                 .status("Enabled")
///                 .build())
///             .virtualNetworkType("Unmanaged")
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
/// const pool = new azure_native.devcenter.Pool("pool", {
///     devBoxDefinitionName: "WebDevBox",
///     displayName: "Developer Pool",
///     licenseType: azure_native.devcenter.LicenseType.Windows_Client,
///     localAdministrator: azure_native.devcenter.LocalAdminStatus.Enabled,
///     location: "centralus",
///     networkConnectionName: "Network1-westus2",
///     poolName: "DevPool",
///     projectName: "DevProject",
///     resourceGroupName: "rg1",
///     singleSignOnStatus: azure_native.devcenter.SingleSignOnStatus.Disabled,
///     stopOnDisconnect: {
///         gracePeriodMinutes: 60,
///         status: azure_native.devcenter.StopOnDisconnectEnableStatus.Enabled,
///     },
///     virtualNetworkType: azure_native.devcenter.VirtualNetworkType.Unmanaged,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.devcenter.Pool("pool",
///     dev_box_definition_name="WebDevBox",
///     display_name="Developer Pool",
///     license_type=azure_native.devcenter.LicenseType.WINDOWS_CLIENT,
///     local_administrator=azure_native.devcenter.LocalAdminStatus.ENABLED,
///     location="centralus",
///     network_connection_name="Network1-westus2",
///     pool_name="DevPool",
///     project_name="DevProject",
///     resource_group_name="rg1",
///     single_sign_on_status=azure_native.devcenter.SingleSignOnStatus.DISABLED,
///     stop_on_disconnect={
///         "grace_period_minutes": 60,
///         "status": azure_native.devcenter.StopOnDisconnectEnableStatus.ENABLED,
///     },
///     virtual_network_type=azure_native.devcenter.VirtualNetworkType.UNMANAGED)
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:devcenter:Pool
///     properties:
///       devBoxDefinitionName: WebDevBox
///       displayName: Developer Pool
///       licenseType: Windows_Client
///       localAdministrator: Enabled
///       location: centralus
///       networkConnectionName: Network1-westus2
///       poolName: DevPool
///       projectName: DevProject
///       resourceGroupName: rg1
///       singleSignOnStatus: Disabled
///       stopOnDisconnect:
///         gracePeriodMinutes: 60
///         status: Enabled
///       virtualNetworkType: Unmanaged
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Pools_CreateOrUpdateWithManagedNetwork
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new AzureNative.DevCenter.Pool("pool", new()
///     {
///         DevBoxDefinitionName = "WebDevBox",
///         DisplayName = "Developer Pool",
///         LicenseType = AzureNative.DevCenter.LicenseType.Windows_Client,
///         LocalAdministrator = AzureNative.DevCenter.LocalAdminStatus.Enabled,
///         Location = "centralus",
///         ManagedVirtualNetworkRegions = new[]
///         {
///             "centralus",
///         },
///         NetworkConnectionName = "managedNetwork",
///         PoolName = "DevPool",
///         ProjectName = "DevProject",
///         ResourceGroupName = "rg1",
///         SingleSignOnStatus = AzureNative.DevCenter.SingleSignOnStatus.Disabled,
///         StopOnDisconnect = new AzureNative.DevCenter.Inputs.StopOnDisconnectConfigurationArgs
///         {
///             GracePeriodMinutes = 60,
///             Status = AzureNative.DevCenter.StopOnDisconnectEnableStatus.Enabled,
///         },
///         VirtualNetworkType = AzureNative.DevCenter.VirtualNetworkType.Managed,
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewPool(ctx, "pool", &devcenter.PoolArgs{
/// 			DevBoxDefinitionName: pulumi.String("WebDevBox"),
/// 			DisplayName:          pulumi.String("Developer Pool"),
/// 			LicenseType:          pulumi.String(devcenter.LicenseType_Windows_Client),
/// 			LocalAdministrator:   pulumi.String(devcenter.LocalAdminStatusEnabled),
/// 			Location:             pulumi.String("centralus"),
/// 			ManagedVirtualNetworkRegions: pulumi.StringArray{
/// 				pulumi.String("centralus"),
/// 			},
/// 			NetworkConnectionName: pulumi.String("managedNetwork"),
/// 			PoolName:              pulumi.String("DevPool"),
/// 			ProjectName:           pulumi.String("DevProject"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			SingleSignOnStatus:    pulumi.String(devcenter.SingleSignOnStatusDisabled),
/// 			StopOnDisconnect: &devcenter.StopOnDisconnectConfigurationArgs{
/// 				GracePeriodMinutes: pulumi.Int(60),
/// 				Status:             pulumi.String(devcenter.StopOnDisconnectEnableStatusEnabled),
/// 			},
/// 			VirtualNetworkType: pulumi.String(devcenter.VirtualNetworkTypeManaged),
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
/// import com.pulumi.azurenative.devcenter.Pool;
/// import com.pulumi.azurenative.devcenter.PoolArgs;
/// import com.pulumi.azurenative.devcenter.inputs.StopOnDisconnectConfigurationArgs;
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
///             .devBoxDefinitionName("WebDevBox")
///             .displayName("Developer Pool")
///             .licenseType("Windows_Client")
///             .localAdministrator("Enabled")
///             .location("centralus")
///             .managedVirtualNetworkRegions("centralus")
///             .networkConnectionName("managedNetwork")
///             .poolName("DevPool")
///             .projectName("DevProject")
///             .resourceGroupName("rg1")
///             .singleSignOnStatus("Disabled")
///             .stopOnDisconnect(StopOnDisconnectConfigurationArgs.builder()
///                 .gracePeriodMinutes(60)
///                 .status("Enabled")
///                 .build())
///             .virtualNetworkType("Managed")
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
/// const pool = new azure_native.devcenter.Pool("pool", {
///     devBoxDefinitionName: "WebDevBox",
///     displayName: "Developer Pool",
///     licenseType: azure_native.devcenter.LicenseType.Windows_Client,
///     localAdministrator: azure_native.devcenter.LocalAdminStatus.Enabled,
///     location: "centralus",
///     managedVirtualNetworkRegions: ["centralus"],
///     networkConnectionName: "managedNetwork",
///     poolName: "DevPool",
///     projectName: "DevProject",
///     resourceGroupName: "rg1",
///     singleSignOnStatus: azure_native.devcenter.SingleSignOnStatus.Disabled,
///     stopOnDisconnect: {
///         gracePeriodMinutes: 60,
///         status: azure_native.devcenter.StopOnDisconnectEnableStatus.Enabled,
///     },
///     virtualNetworkType: azure_native.devcenter.VirtualNetworkType.Managed,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.devcenter.Pool("pool",
///     dev_box_definition_name="WebDevBox",
///     display_name="Developer Pool",
///     license_type=azure_native.devcenter.LicenseType.WINDOWS_CLIENT,
///     local_administrator=azure_native.devcenter.LocalAdminStatus.ENABLED,
///     location="centralus",
///     managed_virtual_network_regions=["centralus"],
///     network_connection_name="managedNetwork",
///     pool_name="DevPool",
///     project_name="DevProject",
///     resource_group_name="rg1",
///     single_sign_on_status=azure_native.devcenter.SingleSignOnStatus.DISABLED,
///     stop_on_disconnect={
///         "grace_period_minutes": 60,
///         "status": azure_native.devcenter.StopOnDisconnectEnableStatus.ENABLED,
///     },
///     virtual_network_type=azure_native.devcenter.VirtualNetworkType.MANAGED)
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:devcenter:Pool
///     properties:
///       devBoxDefinitionName: WebDevBox
///       displayName: Developer Pool
///       licenseType: Windows_Client
///       localAdministrator: Enabled
///       location: centralus
///       managedVirtualNetworkRegions:
///         - centralus
///       networkConnectionName: managedNetwork
///       poolName: DevPool
///       projectName: DevProject
///       resourceGroupName: rg1
///       singleSignOnStatus: Disabled
///       stopOnDisconnect:
///         gracePeriodMinutes: 60
///         status: Enabled
///       virtualNetworkType: Managed
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
/// $ pulumi import azure-native:devcenter:Pool DevPool /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/projects/{projectName}/pools/{poolName}
/// ```
class Pool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Indicates the number of provisioned Dev Boxes in this pool.
  late final pulumi.Output<int> devBoxCount;

  /// Name of a Dev Box definition in parent Project of this Pool
  late final pulumi.Output<String> devBoxDefinitionName;

  /// The display name of the pool.
  late final pulumi.Output<String?> displayName;

  /// Overall health status of the Pool. Indicates whether or not the Pool is available to create Dev Boxes.
  late final pulumi.Output<String> healthStatus;

  /// Details on the Pool health status to help diagnose issues. This is only populated when the pool status indicates the pool is in a non-healthy state
  late final pulumi.Output<List<Map<String, dynamic>>> healthStatusDetails;

  /// Specifies the license type indicating the caller has already acquired licenses for the Dev Boxes that will be created.
  late final pulumi.Output<String> licenseType;

  /// Indicates whether owners of Dev Boxes in this pool are added as local administrators on the Dev Box.
  late final pulumi.Output<String> localAdministrator;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The regions of the managed virtual network (required when managedNetworkType is Managed).
  late final pulumi.Output<List<String>?> managedVirtualNetworkRegions;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Name of a Network Connection in parent Project of this Pool
  late final pulumi.Output<String> networkConnectionName;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Indicates whether Dev Boxes in this pool are created with single sign on enabled. The also requires that single sign on be enabled on the tenant.
  late final pulumi.Output<String?> singleSignOnStatus;

  /// Stop on disconnect configuration settings for Dev Boxes created in this pool.
  late final pulumi.Output<StopOnDisconnectConfigurationResponse?>
  stopOnDisconnect;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Indicates whether the pool uses a Virtual Network managed by Microsoft or a customer provided network.
  late final pulumi.Output<String?> virtualNetworkType;

  /// Creates a new [Pool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pool]. {@macro pulumi_devcenter_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pool(String name, {PoolArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:devcenter:Pool',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    devBoxCount = registerOutput<int>('devBoxCount');
    devBoxDefinitionName = registerOutput<String>('devBoxDefinitionName');
    displayName = registerOutput<String?>('displayName');
    healthStatus = registerOutput<String>('healthStatus');
    healthStatusDetails = registerOutput<List<Map<String, dynamic>>>(
      'healthStatusDetails',
    );
    licenseType = registerOutput<String>('licenseType');
    localAdministrator = registerOutput<String>('localAdministrator');
    location = registerOutput<String>('location');
    managedVirtualNetworkRegions = registerOutput<List<String>?>(
      'managedVirtualNetworkRegions',
    );
    this.name = registerOutput<String>('name');
    networkConnectionName = registerOutput<String>('networkConnectionName');
    provisioningState = registerOutput<String>('provisioningState');
    singleSignOnStatus = registerOutput<String?>('singleSignOnStatus');
    stopOnDisconnect = registerOutput<StopOnDisconnectConfigurationResponse?>(
      'stopOnDisconnect',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualNetworkType = registerOutput<String?>('virtualNetworkType');
  }
}
