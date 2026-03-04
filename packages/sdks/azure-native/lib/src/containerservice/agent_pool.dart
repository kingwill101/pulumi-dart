import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_pool_args.dart';
import 'agent_pool_gateway_profile_response.dart';
import 'agent_pool_network_profile_response.dart';
import 'agent_pool_security_profile_response.dart';
import 'agent_pool_status_response.dart';
import 'agent_pool_upgrade_settings_response.dart';
import 'agent_pool_windows_profile_response.dart';
import 'creation_data_response.dart';
import 'gpuprofile_response.dart';
import 'kubelet_config_response.dart';
import 'linux_osconfig_response.dart';
import 'local_dnsprofile_response.dart';
import 'power_state_response.dart';
import 'virtual_machines_profile_response.dart';

/// Agent Pool.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2019-11-01, 2020-01-01, 2020-02-01, 2020-03-01, 2020-04-01, 2020-06-01, 2020-07-01, 2020-09-01, 2020-11-01, 2020-12-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-07-01, 2021-08-01, 2021-09-01, 2021-10-01, 2021-11-01-preview, 2022-01-01, 2022-01-02-preview, 2022-02-01, 2022-02-02-preview, 2022-03-01, 2022-03-02-preview, 2022-04-01, 2022-04-02-preview, 2022-05-02-preview, 2022-06-01, 2022-06-02-preview, 2022-07-01, 2022-07-02-preview, 2022-08-02-preview, 2022-08-03-preview, 2022-09-01, 2022-09-02-preview, 2022-10-02-preview, 2022-11-01, 2022-11-02-preview, 2023-01-01, 2023-01-02-preview, 2023-02-01, 2023-02-02-preview, 2023-03-01, 2023-03-02-preview, 2023-04-01, 2023-04-02-preview, 2023-05-01, 2023-05-02-preview, 2023-06-01, 2023-06-02-preview, 2023-07-01, 2023-07-02-preview, 2023-08-01, 2023-08-02-preview, 2023-09-01, 2023-09-02-preview, 2023-10-01, 2023-10-02-preview, 2023-11-01, 2023-11-02-preview, 2024-01-01, 2024-01-02-preview, 2024-02-01, 2024-02-02-preview, 2024-03-02-preview, 2024-04-02-preview, 2024-05-01, 2024-05-02-preview, 2024-06-02-preview, 2024-07-01, 2024-07-02-preview, 2024-08-01, 2024-09-01, 2024-09-02-preview, 2024-10-01, 2024-10-02-preview, 2025-01-01, 2025-01-02-preview, 2025-02-01, 2025-02-02-preview, 2025-03-01, 2025-03-02-preview, 2025-04-01, 2025-04-02-preview, 2025-05-01, 2025-05-02-preview, 2025-06-02-preview, 2025-07-01, 2025-07-02-preview, 2025-08-01, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Agent Pool using an agent pool snapshot
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         Count = 3,
///         CreationData = new AzureNative.ContainerService.Inputs.CreationDataArgs
///         {
///             SourceResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/snapshots/snapshot1",
///         },
///         EnableFIPS = true,
///         OrchestratorVersion = "",
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         VmSize = "Standard_DS2_v2",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName: pulumi.String("agentpool1"),
/// 			Count:         pulumi.Int(3),
/// 			CreationData: &containerservice.CreationDataArgs{
/// 				SourceResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/snapshots/snapshot1"),
/// 			},
/// 			EnableFIPS:          pulumi.Bool(true),
/// 			OrchestratorVersion: pulumi.String(""),
/// 			OsType:              pulumi.String(containerservice.OSTypeLinux),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			ResourceName:        pulumi.String("clustername1"),
/// 			VmSize:              pulumi.String("Standard_DS2_v2"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
/// import com.pulumi.azurenative.containerservice.inputs.CreationDataArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .count(3)
///             .creationData(CreationDataArgs.builder()
///                 .sourceResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/snapshots/snapshot1")
///                 .build())
///             .enableFIPS(true)
///             .orchestratorVersion("")
///             .osType("Linux")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .vmSize("Standard_DS2_v2")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     count: 3,
///     creationData: {
///         sourceResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/snapshots/snapshot1",
///     },
///     enableFIPS: true,
///     orchestratorVersion: "",
///     osType: azure_native.containerservice.OSType.Linux,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     vmSize: "Standard_DS2_v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     count=3,
///     creation_data={
///         "source_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/snapshots/snapshot1",
///     },
///     enable_fips=True,
///     orchestrator_version="",
///     os_type=azure_native.containerservice.OSType.LINUX,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     vm_size="Standard_DS2_v2")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       count: 3
///       creationData:
///         sourceResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/snapshots/snapshot1
///       enableFIPS: true
///       orchestratorVersion: ""
///       osType: Linux
///       resourceGroupName: rg1
///       resourceName: clustername1
///       vmSize: Standard_DS2_v2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Agent Pool with Capacity Reservation Group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         CapacityReservationGroupID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/CapacityReservationGroups/crg1",
///         Count = 3,
///         OrchestratorVersion = "",
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         VmSize = "Standard_DS2_v2",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName:              pulumi.String("agentpool1"),
/// 			CapacityReservationGroupID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/CapacityReservationGroups/crg1"),
/// 			Count:                      pulumi.Int(3),
/// 			OrchestratorVersion:        pulumi.String(""),
/// 			OsType:                     pulumi.String(containerservice.OSTypeLinux),
/// 			ResourceGroupName:          pulumi.String("rg1"),
/// 			ResourceName:               pulumi.String("clustername1"),
/// 			VmSize:                     pulumi.String("Standard_DS2_v2"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .capacityReservationGroupID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/CapacityReservationGroups/crg1")
///             .count(3)
///             .orchestratorVersion("")
///             .osType("Linux")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .vmSize("Standard_DS2_v2")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     capacityReservationGroupID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/CapacityReservationGroups/crg1",
///     count: 3,
///     orchestratorVersion: "",
///     osType: azure_native.containerservice.OSType.Linux,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     vmSize: "Standard_DS2_v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     capacity_reservation_group_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/CapacityReservationGroups/crg1",
///     count=3,
///     orchestrator_version="",
///     os_type=azure_native.containerservice.OSType.LINUX,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     vm_size="Standard_DS2_v2")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       capacityReservationGroupID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/CapacityReservationGroups/crg1
///       count: 3
///       orchestratorVersion: ""
///       osType: Linux
///       resourceGroupName: rg1
///       resourceName: clustername1
///       vmSize: Standard_DS2_v2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Agent Pool with Dedicated Host Group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         Count = 3,
///         HostGroupID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/Microsoft.Compute/hostGroups/hostgroup1",
///         OrchestratorVersion = "",
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         VmSize = "Standard_DS2_v2",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName:       pulumi.String("agentpool1"),
/// 			Count:               pulumi.Int(3),
/// 			HostGroupID:         pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/Microsoft.Compute/hostGroups/hostgroup1"),
/// 			OrchestratorVersion: pulumi.String(""),
/// 			OsType:              pulumi.String(containerservice.OSTypeLinux),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			ResourceName:        pulumi.String("clustername1"),
/// 			VmSize:              pulumi.String("Standard_DS2_v2"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .count(3)
///             .hostGroupID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/Microsoft.Compute/hostGroups/hostgroup1")
///             .orchestratorVersion("")
///             .osType("Linux")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .vmSize("Standard_DS2_v2")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     count: 3,
///     hostGroupID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/Microsoft.Compute/hostGroups/hostgroup1",
///     orchestratorVersion: "",
///     osType: azure_native.containerservice.OSType.Linux,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     vmSize: "Standard_DS2_v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     count=3,
///     host_group_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/Microsoft.Compute/hostGroups/hostgroup1",
///     orchestrator_version="",
///     os_type=azure_native.containerservice.OSType.LINUX,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     vm_size="Standard_DS2_v2")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       count: 3
///       hostGroupID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/Microsoft.Compute/hostGroups/hostgroup1
///       orchestratorVersion: ""
///       osType: Linux
///       resourceGroupName: rg1
///       resourceName: clustername1
///       vmSize: Standard_DS2_v2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Agent Pool with EncryptionAtHost enabled
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         Count = 3,
///         EnableEncryptionAtHost = true,
///         OrchestratorVersion = "",
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         VmSize = "Standard_DS2_v2",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName:          pulumi.String("agentpool1"),
/// 			Count:                  pulumi.Int(3),
/// 			EnableEncryptionAtHost: pulumi.Bool(true),
/// 			OrchestratorVersion:    pulumi.String(""),
/// 			OsType:                 pulumi.String(containerservice.OSTypeLinux),
/// 			ResourceGroupName:      pulumi.String("rg1"),
/// 			ResourceName:           pulumi.String("clustername1"),
/// 			VmSize:                 pulumi.String("Standard_DS2_v2"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .count(3)
///             .enableEncryptionAtHost(true)
///             .orchestratorVersion("")
///             .osType("Linux")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .vmSize("Standard_DS2_v2")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     count: 3,
///     enableEncryptionAtHost: true,
///     orchestratorVersion: "",
///     osType: azure_native.containerservice.OSType.Linux,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     vmSize: "Standard_DS2_v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     count=3,
///     enable_encryption_at_host=True,
///     orchestrator_version="",
///     os_type=azure_native.containerservice.OSType.LINUX,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     vm_size="Standard_DS2_v2")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       count: 3
///       enableEncryptionAtHost: true
///       orchestratorVersion: ""
///       osType: Linux
///       resourceGroupName: rg1
///       resourceName: clustername1
///       vmSize: Standard_DS2_v2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Agent Pool with Ephemeral OS Disk
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         Count = 3,
///         OrchestratorVersion = "",
///         OsDiskSizeGB = 64,
///         OsDiskType = AzureNative.ContainerService.OSDiskType.Ephemeral,
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         VmSize = "Standard_DS2_v2",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName:       pulumi.String("agentpool1"),
/// 			Count:               pulumi.Int(3),
/// 			OrchestratorVersion: pulumi.String(""),
/// 			OsDiskSizeGB:        pulumi.Int(64),
/// 			OsDiskType:          pulumi.String(containerservice.OSDiskTypeEphemeral),
/// 			OsType:              pulumi.String(containerservice.OSTypeLinux),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			ResourceName:        pulumi.String("clustername1"),
/// 			VmSize:              pulumi.String("Standard_DS2_v2"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .count(3)
///             .orchestratorVersion("")
///             .osDiskSizeGB(64)
///             .osDiskType("Ephemeral")
///             .osType("Linux")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .vmSize("Standard_DS2_v2")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     count: 3,
///     orchestratorVersion: "",
///     osDiskSizeGB: 64,
///     osDiskType: azure_native.containerservice.OSDiskType.Ephemeral,
///     osType: azure_native.containerservice.OSType.Linux,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     vmSize: "Standard_DS2_v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     count=3,
///     orchestrator_version="",
///     os_disk_size_gb=64,
///     os_disk_type=azure_native.containerservice.OSDiskType.EPHEMERAL,
///     os_type=azure_native.containerservice.OSType.LINUX,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     vm_size="Standard_DS2_v2")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       count: 3
///       orchestratorVersion: ""
///       osDiskSizeGB: 64
///       osDiskType: Ephemeral
///       osType: Linux
///       resourceGroupName: rg1
///       resourceName: clustername1
///       vmSize: Standard_DS2_v2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Agent Pool with FIPS enabled OS
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         Count = 3,
///         EnableFIPS = true,
///         OrchestratorVersion = "",
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         VmSize = "Standard_DS2_v2",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName:       pulumi.String("agentpool1"),
/// 			Count:               pulumi.Int(3),
/// 			EnableFIPS:          pulumi.Bool(true),
/// 			OrchestratorVersion: pulumi.String(""),
/// 			OsType:              pulumi.String(containerservice.OSTypeLinux),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			ResourceName:        pulumi.String("clustername1"),
/// 			VmSize:              pulumi.String("Standard_DS2_v2"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .count(3)
///             .enableFIPS(true)
///             .orchestratorVersion("")
///             .osType("Linux")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .vmSize("Standard_DS2_v2")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     count: 3,
///     enableFIPS: true,
///     orchestratorVersion: "",
///     osType: azure_native.containerservice.OSType.Linux,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     vmSize: "Standard_DS2_v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     count=3,
///     enable_fips=True,
///     orchestrator_version="",
///     os_type=azure_native.containerservice.OSType.LINUX,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     vm_size="Standard_DS2_v2")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       count: 3
///       enableFIPS: true
///       orchestratorVersion: ""
///       osType: Linux
///       resourceGroupName: rg1
///       resourceName: clustername1
///       vmSize: Standard_DS2_v2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Agent Pool with GPUMIG
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         Count = 3,
///         GpuInstanceProfile = AzureNative.ContainerService.GPUInstanceProfile.MIG2g,
///         KubeletConfig = new AzureNative.ContainerService.Inputs.KubeletConfigArgs
///         {
///             AllowedUnsafeSysctls = new[]
///             {
///                 "kernel.msg*",
///                 "net.core.somaxconn",
///             },
///             CpuCfsQuota = true,
///             CpuCfsQuotaPeriod = "200ms",
///             CpuManagerPolicy = "static",
///             FailSwapOn = false,
///             ImageGcHighThreshold = 90,
///             ImageGcLowThreshold = 70,
///             TopologyManagerPolicy = "best-effort",
///         },
///         LinuxOSConfig = new AzureNative.ContainerService.Inputs.LinuxOSConfigArgs
///         {
///             SwapFileSizeMB = 1500,
///             Sysctls = new AzureNative.ContainerService.Inputs.SysctlConfigArgs
///             {
///                 KernelThreadsMax = 99999,
///                 NetCoreWmemDefault = 12345,
///                 NetIpv4IpLocalPortRange = "20000 60000",
///                 NetIpv4TcpTwReuse = true,
///             },
///             TransparentHugePageDefrag = "madvise",
///             TransparentHugePageEnabled = "always",
///         },
///         OrchestratorVersion = "",
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         VmSize = "Standard_ND96asr_v4",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName:      pulumi.String("agentpool1"),
/// 			Count:              pulumi.Int(3),
/// 			GpuInstanceProfile: pulumi.String(containerservice.GPUInstanceProfileMIG2g),
/// 			KubeletConfig: &containerservice.KubeletConfigArgs{
/// 				AllowedUnsafeSysctls: pulumi.StringArray{
/// 					pulumi.String("kernel.msg*"),
/// 					pulumi.String("net.core.somaxconn"),
/// 				},
/// 				CpuCfsQuota:           pulumi.Bool(true),
/// 				CpuCfsQuotaPeriod:     pulumi.String("200ms"),
/// 				CpuManagerPolicy:      pulumi.String("static"),
/// 				FailSwapOn:            pulumi.Bool(false),
/// 				ImageGcHighThreshold:  pulumi.Int(90),
/// 				ImageGcLowThreshold:   pulumi.Int(70),
/// 				TopologyManagerPolicy: pulumi.String("best-effort"),
/// 			},
/// 			LinuxOSConfig: &containerservice.LinuxOSConfigArgs{
/// 				SwapFileSizeMB: pulumi.Int(1500),
/// 				Sysctls: &containerservice.SysctlConfigArgs{
/// 					KernelThreadsMax:        pulumi.Int(99999),
/// 					NetCoreWmemDefault:      pulumi.Int(12345),
/// 					NetIpv4IpLocalPortRange: pulumi.String("20000 60000"),
/// 					NetIpv4TcpTwReuse:       pulumi.Bool(true),
/// 				},
/// 				TransparentHugePageDefrag:  pulumi.String("madvise"),
/// 				TransparentHugePageEnabled: pulumi.String("always"),
/// 			},
/// 			OrchestratorVersion: pulumi.String(""),
/// 			OsType:              pulumi.String(containerservice.OSTypeLinux),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			ResourceName:        pulumi.String("clustername1"),
/// 			VmSize:              pulumi.String("Standard_ND96asr_v4"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
/// import com.pulumi.azurenative.containerservice.inputs.KubeletConfigArgs;
/// import com.pulumi.azurenative.containerservice.inputs.LinuxOSConfigArgs;
/// import com.pulumi.azurenative.containerservice.inputs.SysctlConfigArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .count(3)
///             .gpuInstanceProfile("MIG2g")
///             .kubeletConfig(KubeletConfigArgs.builder()
///                 .allowedUnsafeSysctls(
///                     "kernel.msg*",
///                     "net.core.somaxconn")
///                 .cpuCfsQuota(true)
///                 .cpuCfsQuotaPeriod("200ms")
///                 .cpuManagerPolicy("static")
///                 .failSwapOn(false)
///                 .imageGcHighThreshold(90)
///                 .imageGcLowThreshold(70)
///                 .topologyManagerPolicy("best-effort")
///                 .build())
///             .linuxOSConfig(LinuxOSConfigArgs.builder()
///                 .swapFileSizeMB(1500)
///                 .sysctls(SysctlConfigArgs.builder()
///                     .kernelThreadsMax(99999)
///                     .netCoreWmemDefault(12345)
///                     .netIpv4IpLocalPortRange("20000 60000")
///                     .netIpv4TcpTwReuse(true)
///                     .build())
///                 .transparentHugePageDefrag("madvise")
///                 .transparentHugePageEnabled("always")
///                 .build())
///             .orchestratorVersion("")
///             .osType("Linux")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .vmSize("Standard_ND96asr_v4")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     count: 3,
///     gpuInstanceProfile: azure_native.containerservice.GPUInstanceProfile.MIG2g,
///     kubeletConfig: {
///         allowedUnsafeSysctls: [
///             "kernel.msg*",
///             "net.core.somaxconn",
///         ],
///         cpuCfsQuota: true,
///         cpuCfsQuotaPeriod: "200ms",
///         cpuManagerPolicy: "static",
///         failSwapOn: false,
///         imageGcHighThreshold: 90,
///         imageGcLowThreshold: 70,
///         topologyManagerPolicy: "best-effort",
///     },
///     linuxOSConfig: {
///         swapFileSizeMB: 1500,
///         sysctls: {
///             kernelThreadsMax: 99999,
///             netCoreWmemDefault: 12345,
///             netIpv4IpLocalPortRange: "20000 60000",
///             netIpv4TcpTwReuse: true,
///         },
///         transparentHugePageDefrag: "madvise",
///         transparentHugePageEnabled: "always",
///     },
///     orchestratorVersion: "",
///     osType: azure_native.containerservice.OSType.Linux,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     vmSize: "Standard_ND96asr_v4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     count=3,
///     gpu_instance_profile=azure_native.containerservice.GPUInstanceProfile.MIG2G,
///     kubelet_config={
///         "allowed_unsafe_sysctls": [
///             "kernel.msg*",
///             "net.core.somaxconn",
///         ],
///         "cpu_cfs_quota": True,
///         "cpu_cfs_quota_period": "200ms",
///         "cpu_manager_policy": "static",
///         "fail_swap_on": False,
///         "image_gc_high_threshold": 90,
///         "image_gc_low_threshold": 70,
///         "topology_manager_policy": "best-effort",
///     },
///     linux_os_config={
///         "swap_file_size_mb": 1500,
///         "sysctls": {
///             "kernel_threads_max": 99999,
///             "net_core_wmem_default": 12345,
///             "net_ipv4_ip_local_port_range": "20000 60000",
///             "net_ipv4_tcp_tw_reuse": True,
///         },
///         "transparent_huge_page_defrag": "madvise",
///         "transparent_huge_page_enabled": "always",
///     },
///     orchestrator_version="",
///     os_type=azure_native.containerservice.OSType.LINUX,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     vm_size="Standard_ND96asr_v4")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       count: 3
///       gpuInstanceProfile: MIG2g
///       kubeletConfig:
///         allowedUnsafeSysctls:
///           - kernel.msg*
///           - net.core.somaxconn
///         cpuCfsQuota: true
///         cpuCfsQuotaPeriod: 200ms
///         cpuManagerPolicy: static
///         failSwapOn: false
///         imageGcHighThreshold: 90
///         imageGcLowThreshold: 70
///         topologyManagerPolicy: best-effort
///       linuxOSConfig:
///         swapFileSizeMB: 1500
///         sysctls:
///           kernelThreadsMax: 99999
///           netCoreWmemDefault: 12345
///           netIpv4IpLocalPortRange: 20000 60000
///           netIpv4TcpTwReuse: true
///         transparentHugePageDefrag: madvise
///         transparentHugePageEnabled: always
///       orchestratorVersion: ""
///       osType: Linux
///       resourceGroupName: rg1
///       resourceName: clustername1
///       vmSize: Standard_ND96asr_v4
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Agent Pool with Krustlet and the WASI runtime
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         Count = 3,
///         Mode = AzureNative.ContainerService.AgentPoolMode.User,
///         OrchestratorVersion = "",
///         OsDiskSizeGB = 64,
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         VmSize = "Standard_DS2_v2",
///         WorkloadRuntime = AzureNative.ContainerService.WorkloadRuntime.WasmWasi,
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName:       pulumi.String("agentpool1"),
/// 			Count:               pulumi.Int(3),
/// 			Mode:                pulumi.String(containerservice.AgentPoolModeUser),
/// 			OrchestratorVersion: pulumi.String(""),
/// 			OsDiskSizeGB:        pulumi.Int(64),
/// 			OsType:              pulumi.String(containerservice.OSTypeLinux),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			ResourceName:        pulumi.String("clustername1"),
/// 			VmSize:              pulumi.String("Standard_DS2_v2"),
/// 			WorkloadRuntime:     pulumi.String(containerservice.WorkloadRuntimeWasmWasi),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .count(3)
///             .mode("User")
///             .orchestratorVersion("")
///             .osDiskSizeGB(64)
///             .osType("Linux")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .vmSize("Standard_DS2_v2")
///             .workloadRuntime("WasmWasi")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     count: 3,
///     mode: azure_native.containerservice.AgentPoolMode.User,
///     orchestratorVersion: "",
///     osDiskSizeGB: 64,
///     osType: azure_native.containerservice.OSType.Linux,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     vmSize: "Standard_DS2_v2",
///     workloadRuntime: azure_native.containerservice.WorkloadRuntime.WasmWasi,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     count=3,
///     mode=azure_native.containerservice.AgentPoolMode.USER,
///     orchestrator_version="",
///     os_disk_size_gb=64,
///     os_type=azure_native.containerservice.OSType.LINUX,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     vm_size="Standard_DS2_v2",
///     workload_runtime=azure_native.containerservice.WorkloadRuntime.WASM_WASI)
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       count: 3
///       mode: User
///       orchestratorVersion: ""
///       osDiskSizeGB: 64
///       osType: Linux
///       resourceGroupName: rg1
///       resourceName: clustername1
///       vmSize: Standard_DS2_v2
///       workloadRuntime: WasmWasi
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Agent Pool with KubeletConfig and LinuxOSConfig
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         Count = 3,
///         KubeletConfig = new AzureNative.ContainerService.Inputs.KubeletConfigArgs
///         {
///             AllowedUnsafeSysctls = new[]
///             {
///                 "kernel.msg*",
///                 "net.core.somaxconn",
///             },
///             CpuCfsQuota = true,
///             CpuCfsQuotaPeriod = "200ms",
///             CpuManagerPolicy = "static",
///             FailSwapOn = false,
///             ImageGcHighThreshold = 90,
///             ImageGcLowThreshold = 70,
///             TopologyManagerPolicy = "best-effort",
///         },
///         LinuxOSConfig = new AzureNative.ContainerService.Inputs.LinuxOSConfigArgs
///         {
///             SwapFileSizeMB = 1500,
///             Sysctls = new AzureNative.ContainerService.Inputs.SysctlConfigArgs
///             {
///                 KernelThreadsMax = 99999,
///                 NetCoreWmemDefault = 12345,
///                 NetIpv4IpLocalPortRange = "20000 60000",
///                 NetIpv4TcpTwReuse = true,
///             },
///             TransparentHugePageDefrag = "madvise",
///             TransparentHugePageEnabled = "always",
///         },
///         OrchestratorVersion = "",
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         VmSize = "Standard_DS2_v2",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName: pulumi.String("agentpool1"),
/// 			Count:         pulumi.Int(3),
/// 			KubeletConfig: &containerservice.KubeletConfigArgs{
/// 				AllowedUnsafeSysctls: pulumi.StringArray{
/// 					pulumi.String("kernel.msg*"),
/// 					pulumi.String("net.core.somaxconn"),
/// 				},
/// 				CpuCfsQuota:           pulumi.Bool(true),
/// 				CpuCfsQuotaPeriod:     pulumi.String("200ms"),
/// 				CpuManagerPolicy:      pulumi.String("static"),
/// 				FailSwapOn:            pulumi.Bool(false),
/// 				ImageGcHighThreshold:  pulumi.Int(90),
/// 				ImageGcLowThreshold:   pulumi.Int(70),
/// 				TopologyManagerPolicy: pulumi.String("best-effort"),
/// 			},
/// 			LinuxOSConfig: &containerservice.LinuxOSConfigArgs{
/// 				SwapFileSizeMB: pulumi.Int(1500),
/// 				Sysctls: &containerservice.SysctlConfigArgs{
/// 					KernelThreadsMax:        pulumi.Int(99999),
/// 					NetCoreWmemDefault:      pulumi.Int(12345),
/// 					NetIpv4IpLocalPortRange: pulumi.String("20000 60000"),
/// 					NetIpv4TcpTwReuse:       pulumi.Bool(true),
/// 				},
/// 				TransparentHugePageDefrag:  pulumi.String("madvise"),
/// 				TransparentHugePageEnabled: pulumi.String("always"),
/// 			},
/// 			OrchestratorVersion: pulumi.String(""),
/// 			OsType:              pulumi.String(containerservice.OSTypeLinux),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			ResourceName:        pulumi.String("clustername1"),
/// 			VmSize:              pulumi.String("Standard_DS2_v2"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
/// import com.pulumi.azurenative.containerservice.inputs.KubeletConfigArgs;
/// import com.pulumi.azurenative.containerservice.inputs.LinuxOSConfigArgs;
/// import com.pulumi.azurenative.containerservice.inputs.SysctlConfigArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .count(3)
///             .kubeletConfig(KubeletConfigArgs.builder()
///                 .allowedUnsafeSysctls(
///                     "kernel.msg*",
///                     "net.core.somaxconn")
///                 .cpuCfsQuota(true)
///                 .cpuCfsQuotaPeriod("200ms")
///                 .cpuManagerPolicy("static")
///                 .failSwapOn(false)
///                 .imageGcHighThreshold(90)
///                 .imageGcLowThreshold(70)
///                 .topologyManagerPolicy("best-effort")
///                 .build())
///             .linuxOSConfig(LinuxOSConfigArgs.builder()
///                 .swapFileSizeMB(1500)
///                 .sysctls(SysctlConfigArgs.builder()
///                     .kernelThreadsMax(99999)
///                     .netCoreWmemDefault(12345)
///                     .netIpv4IpLocalPortRange("20000 60000")
///                     .netIpv4TcpTwReuse(true)
///                     .build())
///                 .transparentHugePageDefrag("madvise")
///                 .transparentHugePageEnabled("always")
///                 .build())
///             .orchestratorVersion("")
///             .osType("Linux")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .vmSize("Standard_DS2_v2")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     count: 3,
///     kubeletConfig: {
///         allowedUnsafeSysctls: [
///             "kernel.msg*",
///             "net.core.somaxconn",
///         ],
///         cpuCfsQuota: true,
///         cpuCfsQuotaPeriod: "200ms",
///         cpuManagerPolicy: "static",
///         failSwapOn: false,
///         imageGcHighThreshold: 90,
///         imageGcLowThreshold: 70,
///         topologyManagerPolicy: "best-effort",
///     },
///     linuxOSConfig: {
///         swapFileSizeMB: 1500,
///         sysctls: {
///             kernelThreadsMax: 99999,
///             netCoreWmemDefault: 12345,
///             netIpv4IpLocalPortRange: "20000 60000",
///             netIpv4TcpTwReuse: true,
///         },
///         transparentHugePageDefrag: "madvise",
///         transparentHugePageEnabled: "always",
///     },
///     orchestratorVersion: "",
///     osType: azure_native.containerservice.OSType.Linux,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     vmSize: "Standard_DS2_v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     count=3,
///     kubelet_config={
///         "allowed_unsafe_sysctls": [
///             "kernel.msg*",
///             "net.core.somaxconn",
///         ],
///         "cpu_cfs_quota": True,
///         "cpu_cfs_quota_period": "200ms",
///         "cpu_manager_policy": "static",
///         "fail_swap_on": False,
///         "image_gc_high_threshold": 90,
///         "image_gc_low_threshold": 70,
///         "topology_manager_policy": "best-effort",
///     },
///     linux_os_config={
///         "swap_file_size_mb": 1500,
///         "sysctls": {
///             "kernel_threads_max": 99999,
///             "net_core_wmem_default": 12345,
///             "net_ipv4_ip_local_port_range": "20000 60000",
///             "net_ipv4_tcp_tw_reuse": True,
///         },
///         "transparent_huge_page_defrag": "madvise",
///         "transparent_huge_page_enabled": "always",
///     },
///     orchestrator_version="",
///     os_type=azure_native.containerservice.OSType.LINUX,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     vm_size="Standard_DS2_v2")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       count: 3
///       kubeletConfig:
///         allowedUnsafeSysctls:
///           - kernel.msg*
///           - net.core.somaxconn
///         cpuCfsQuota: true
///         cpuCfsQuotaPeriod: 200ms
///         cpuManagerPolicy: static
///         failSwapOn: false
///         imageGcHighThreshold: 90
///         imageGcLowThreshold: 70
///         topologyManagerPolicy: best-effort
///       linuxOSConfig:
///         swapFileSizeMB: 1500
///         sysctls:
///           kernelThreadsMax: 99999
///           netCoreWmemDefault: 12345
///           netIpv4IpLocalPortRange: 20000 60000
///           netIpv4TcpTwReuse: true
///         transparentHugePageDefrag: madvise
///         transparentHugePageEnabled: always
///       orchestratorVersion: ""
///       osType: Linux
///       resourceGroupName: rg1
///       resourceName: clustername1
///       vmSize: Standard_DS2_v2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Agent Pool with Message of the Day
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         Count = 3,
///         MessageOfTheDay = "Zm9vCg==",
///         Mode = AzureNative.ContainerService.AgentPoolMode.User,
///         OrchestratorVersion = "",
///         OsDiskSizeGB = 64,
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         VmSize = "Standard_DS2_v2",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName:       pulumi.String("agentpool1"),
/// 			Count:               pulumi.Int(3),
/// 			MessageOfTheDay:     pulumi.String("Zm9vCg=="),
/// 			Mode:                pulumi.String(containerservice.AgentPoolModeUser),
/// 			OrchestratorVersion: pulumi.String(""),
/// 			OsDiskSizeGB:        pulumi.Int(64),
/// 			OsType:              pulumi.String(containerservice.OSTypeLinux),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			ResourceName:        pulumi.String("clustername1"),
/// 			VmSize:              pulumi.String("Standard_DS2_v2"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .count(3)
///             .messageOfTheDay("Zm9vCg==")
///             .mode("User")
///             .orchestratorVersion("")
///             .osDiskSizeGB(64)
///             .osType("Linux")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .vmSize("Standard_DS2_v2")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     count: 3,
///     messageOfTheDay: "Zm9vCg==",
///     mode: azure_native.containerservice.AgentPoolMode.User,
///     orchestratorVersion: "",
///     osDiskSizeGB: 64,
///     osType: azure_native.containerservice.OSType.Linux,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     vmSize: "Standard_DS2_v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     count=3,
///     message_of_the_day="Zm9vCg==",
///     mode=azure_native.containerservice.AgentPoolMode.USER,
///     orchestrator_version="",
///     os_disk_size_gb=64,
///     os_type=azure_native.containerservice.OSType.LINUX,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     vm_size="Standard_DS2_v2")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       count: 3
///       messageOfTheDay: Zm9vCg==
///       mode: User
///       orchestratorVersion: ""
///       osDiskSizeGB: 64
///       osType: Linux
///       resourceGroupName: rg1
///       resourceName: clustername1
///       vmSize: Standard_DS2_v2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Agent Pool with OSSKU
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         Count = 3,
///         KubeletConfig = new AzureNative.ContainerService.Inputs.KubeletConfigArgs
///         {
///             AllowedUnsafeSysctls = new[]
///             {
///                 "kernel.msg*",
///                 "net.core.somaxconn",
///             },
///             CpuCfsQuota = true,
///             CpuCfsQuotaPeriod = "200ms",
///             CpuManagerPolicy = "static",
///             FailSwapOn = false,
///             ImageGcHighThreshold = 90,
///             ImageGcLowThreshold = 70,
///             TopologyManagerPolicy = "best-effort",
///         },
///         LinuxOSConfig = new AzureNative.ContainerService.Inputs.LinuxOSConfigArgs
///         {
///             SwapFileSizeMB = 1500,
///             Sysctls = new AzureNative.ContainerService.Inputs.SysctlConfigArgs
///             {
///                 KernelThreadsMax = 99999,
///                 NetCoreWmemDefault = 12345,
///                 NetIpv4IpLocalPortRange = "20000 60000",
///                 NetIpv4TcpTwReuse = true,
///             },
///             TransparentHugePageDefrag = "madvise",
///             TransparentHugePageEnabled = "always",
///         },
///         OrchestratorVersion = "",
///         OsSKU = AzureNative.ContainerService.OSSKU.AzureLinux,
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         VmSize = "Standard_DS2_v2",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName: pulumi.String("agentpool1"),
/// 			Count:         pulumi.Int(3),
/// 			KubeletConfig: &containerservice.KubeletConfigArgs{
/// 				AllowedUnsafeSysctls: pulumi.StringArray{
/// 					pulumi.String("kernel.msg*"),
/// 					pulumi.String("net.core.somaxconn"),
/// 				},
/// 				CpuCfsQuota:           pulumi.Bool(true),
/// 				CpuCfsQuotaPeriod:     pulumi.String("200ms"),
/// 				CpuManagerPolicy:      pulumi.String("static"),
/// 				FailSwapOn:            pulumi.Bool(false),
/// 				ImageGcHighThreshold:  pulumi.Int(90),
/// 				ImageGcLowThreshold:   pulumi.Int(70),
/// 				TopologyManagerPolicy: pulumi.String("best-effort"),
/// 			},
/// 			LinuxOSConfig: &containerservice.LinuxOSConfigArgs{
/// 				SwapFileSizeMB: pulumi.Int(1500),
/// 				Sysctls: &containerservice.SysctlConfigArgs{
/// 					KernelThreadsMax:        pulumi.Int(99999),
/// 					NetCoreWmemDefault:      pulumi.Int(12345),
/// 					NetIpv4IpLocalPortRange: pulumi.String("20000 60000"),
/// 					NetIpv4TcpTwReuse:       pulumi.Bool(true),
/// 				},
/// 				TransparentHugePageDefrag:  pulumi.String("madvise"),
/// 				TransparentHugePageEnabled: pulumi.String("always"),
/// 			},
/// 			OrchestratorVersion: pulumi.String(""),
/// 			OsSKU:               pulumi.String(containerservice.OSSKUAzureLinux),
/// 			OsType:              pulumi.String(containerservice.OSTypeLinux),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			ResourceName:        pulumi.String("clustername1"),
/// 			VmSize:              pulumi.String("Standard_DS2_v2"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
/// import com.pulumi.azurenative.containerservice.inputs.KubeletConfigArgs;
/// import com.pulumi.azurenative.containerservice.inputs.LinuxOSConfigArgs;
/// import com.pulumi.azurenative.containerservice.inputs.SysctlConfigArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .count(3)
///             .kubeletConfig(KubeletConfigArgs.builder()
///                 .allowedUnsafeSysctls(
///                     "kernel.msg*",
///                     "net.core.somaxconn")
///                 .cpuCfsQuota(true)
///                 .cpuCfsQuotaPeriod("200ms")
///                 .cpuManagerPolicy("static")
///                 .failSwapOn(false)
///                 .imageGcHighThreshold(90)
///                 .imageGcLowThreshold(70)
///                 .topologyManagerPolicy("best-effort")
///                 .build())
///             .linuxOSConfig(LinuxOSConfigArgs.builder()
///                 .swapFileSizeMB(1500)
///                 .sysctls(SysctlConfigArgs.builder()
///                     .kernelThreadsMax(99999)
///                     .netCoreWmemDefault(12345)
///                     .netIpv4IpLocalPortRange("20000 60000")
///                     .netIpv4TcpTwReuse(true)
///                     .build())
///                 .transparentHugePageDefrag("madvise")
///                 .transparentHugePageEnabled("always")
///                 .build())
///             .orchestratorVersion("")
///             .osSKU("AzureLinux")
///             .osType("Linux")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .vmSize("Standard_DS2_v2")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     count: 3,
///     kubeletConfig: {
///         allowedUnsafeSysctls: [
///             "kernel.msg*",
///             "net.core.somaxconn",
///         ],
///         cpuCfsQuota: true,
///         cpuCfsQuotaPeriod: "200ms",
///         cpuManagerPolicy: "static",
///         failSwapOn: false,
///         imageGcHighThreshold: 90,
///         imageGcLowThreshold: 70,
///         topologyManagerPolicy: "best-effort",
///     },
///     linuxOSConfig: {
///         swapFileSizeMB: 1500,
///         sysctls: {
///             kernelThreadsMax: 99999,
///             netCoreWmemDefault: 12345,
///             netIpv4IpLocalPortRange: "20000 60000",
///             netIpv4TcpTwReuse: true,
///         },
///         transparentHugePageDefrag: "madvise",
///         transparentHugePageEnabled: "always",
///     },
///     orchestratorVersion: "",
///     osSKU: azure_native.containerservice.OSSKU.AzureLinux,
///     osType: azure_native.containerservice.OSType.Linux,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     vmSize: "Standard_DS2_v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     count=3,
///     kubelet_config={
///         "allowed_unsafe_sysctls": [
///             "kernel.msg*",
///             "net.core.somaxconn",
///         ],
///         "cpu_cfs_quota": True,
///         "cpu_cfs_quota_period": "200ms",
///         "cpu_manager_policy": "static",
///         "fail_swap_on": False,
///         "image_gc_high_threshold": 90,
///         "image_gc_low_threshold": 70,
///         "topology_manager_policy": "best-effort",
///     },
///     linux_os_config={
///         "swap_file_size_mb": 1500,
///         "sysctls": {
///             "kernel_threads_max": 99999,
///             "net_core_wmem_default": 12345,
///             "net_ipv4_ip_local_port_range": "20000 60000",
///             "net_ipv4_tcp_tw_reuse": True,
///         },
///         "transparent_huge_page_defrag": "madvise",
///         "transparent_huge_page_enabled": "always",
///     },
///     orchestrator_version="",
///     os_sku=azure_native.containerservice.OSSKU.AZURE_LINUX,
///     os_type=azure_native.containerservice.OSType.LINUX,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     vm_size="Standard_DS2_v2")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       count: 3
///       kubeletConfig:
///         allowedUnsafeSysctls:
///           - kernel.msg*
///           - net.core.somaxconn
///         cpuCfsQuota: true
///         cpuCfsQuotaPeriod: 200ms
///         cpuManagerPolicy: static
///         failSwapOn: false
///         imageGcHighThreshold: 90
///         imageGcLowThreshold: 70
///         topologyManagerPolicy: best-effort
///       linuxOSConfig:
///         swapFileSizeMB: 1500
///         sysctls:
///           kernelThreadsMax: 99999
///           netCoreWmemDefault: 12345
///           netIpv4IpLocalPortRange: 20000 60000
///           netIpv4TcpTwReuse: true
///         transparentHugePageDefrag: madvise
///         transparentHugePageEnabled: always
///       orchestratorVersion: ""
///       osSKU: AzureLinux
///       osType: Linux
///       resourceGroupName: rg1
///       resourceName: clustername1
///       vmSize: Standard_DS2_v2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Agent Pool with PPG
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         Count = 3,
///         OrchestratorVersion = "",
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ProximityPlacementGroupID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/proximityPlacementGroups/ppg1",
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         VmSize = "Standard_DS2_v2",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName:             pulumi.String("agentpool1"),
/// 			Count:                     pulumi.Int(3),
/// 			OrchestratorVersion:       pulumi.String(""),
/// 			OsType:                    pulumi.String(containerservice.OSTypeLinux),
/// 			ProximityPlacementGroupID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/proximityPlacementGroups/ppg1"),
/// 			ResourceGroupName:         pulumi.String("rg1"),
/// 			ResourceName:              pulumi.String("clustername1"),
/// 			VmSize:                    pulumi.String("Standard_DS2_v2"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .count(3)
///             .orchestratorVersion("")
///             .osType("Linux")
///             .proximityPlacementGroupID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/proximityPlacementGroups/ppg1")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .vmSize("Standard_DS2_v2")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     count: 3,
///     orchestratorVersion: "",
///     osType: azure_native.containerservice.OSType.Linux,
///     proximityPlacementGroupID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/proximityPlacementGroups/ppg1",
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     vmSize: "Standard_DS2_v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     count=3,
///     orchestrator_version="",
///     os_type=azure_native.containerservice.OSType.LINUX,
///     proximity_placement_group_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/proximityPlacementGroups/ppg1",
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     vm_size="Standard_DS2_v2")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       count: 3
///       orchestratorVersion: ""
///       osType: Linux
///       proximityPlacementGroupID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/proximityPlacementGroups/ppg1
///       resourceGroupName: rg1
///       resourceName: clustername1
///       vmSize: Standard_DS2_v2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Agent Pool with UltraSSD enabled
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         Count = 3,
///         EnableUltraSSD = true,
///         OrchestratorVersion = "",
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         VmSize = "Standard_DS2_v2",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName:       pulumi.String("agentpool1"),
/// 			Count:               pulumi.Int(3),
/// 			EnableUltraSSD:      pulumi.Bool(true),
/// 			OrchestratorVersion: pulumi.String(""),
/// 			OsType:              pulumi.String(containerservice.OSTypeLinux),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			ResourceName:        pulumi.String("clustername1"),
/// 			VmSize:              pulumi.String("Standard_DS2_v2"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .count(3)
///             .enableUltraSSD(true)
///             .orchestratorVersion("")
///             .osType("Linux")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .vmSize("Standard_DS2_v2")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     count: 3,
///     enableUltraSSD: true,
///     orchestratorVersion: "",
///     osType: azure_native.containerservice.OSType.Linux,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     vmSize: "Standard_DS2_v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     count=3,
///     enable_ultra_ssd=True,
///     orchestrator_version="",
///     os_type=azure_native.containerservice.OSType.LINUX,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     vm_size="Standard_DS2_v2")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       count: 3
///       enableUltraSSD: true
///       orchestratorVersion: ""
///       osType: Linux
///       resourceGroupName: rg1
///       resourceName: clustername1
///       vmSize: Standard_DS2_v2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Agent Pool with VirtualMachines pool type
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         NodeLabels =
///         {
///             { "key1", "val1" },
///         },
///         NodeTaints = new[]
///         {
///             "Key1=Value1:NoSchedule",
///         },
///         OrchestratorVersion = "1.9.6",
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         Tags =
///         {
///             { "name1", "val1" },
///         },
///         Type = AzureNative.ContainerService.AgentPoolType.VirtualMachines,
///         VirtualMachinesProfile = new AzureNative.ContainerService.Inputs.VirtualMachinesProfileArgs
///         {
///             Scale = new AzureNative.ContainerService.Inputs.ScaleProfileArgs
///             {
///                 Manual = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ManualScaleProfileArgs
///                     {
///                         Count = 3,
///                         Size = "Standard_D2_v2",
///                     },
///                     new AzureNative.ContainerService.Inputs.ManualScaleProfileArgs
///                     {
///                         Count = 2,
///                         Size = "Standard_D2_v3",
///                     },
///                 },
///             },
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName: pulumi.String("agentpool1"),
/// 			NodeLabels: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 			},
/// 			NodeTaints: pulumi.StringArray{
/// 				pulumi.String("Key1=Value1:NoSchedule"),
/// 			},
/// 			OrchestratorVersion: pulumi.String("1.9.6"),
/// 			OsType:              pulumi.String(containerservice.OSTypeLinux),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			ResourceName:        pulumi.String("clustername1"),
/// 			Tags: pulumi.StringMap{
/// 				"name1": pulumi.String("val1"),
/// 			},
/// 			Type: pulumi.String(containerservice.AgentPoolTypeVirtualMachines),
/// 			VirtualMachinesProfile: &containerservice.VirtualMachinesProfileArgs{
/// 				Scale: &containerservice.ScaleProfileArgs{
/// 					Manual: containerservice.ManualScaleProfileArray{
/// 						&containerservice.ManualScaleProfileArgs{
/// 							Count: pulumi.Int(3),
/// 							Size:  pulumi.String("Standard_D2_v2"),
/// 						},
/// 						&containerservice.ManualScaleProfileArgs{
/// 							Count: pulumi.Int(2),
/// 							Size:  pulumi.String("Standard_D2_v3"),
/// 						},
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
/// import com.pulumi.azurenative.containerservice.inputs.VirtualMachinesProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ScaleProfileArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .nodeLabels(Map.of("key1", "val1"))
///             .nodeTaints("Key1=Value1:NoSchedule")
///             .orchestratorVersion("1.9.6")
///             .osType("Linux")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .tags(Map.of("name1", "val1"))
///             .type("VirtualMachines")
///             .virtualMachinesProfile(VirtualMachinesProfileArgs.builder()
///                 .scale(ScaleProfileArgs.builder()
///                     .manual(
///                         ManualScaleProfileArgs.builder()
///                             .count(3)
///                             .size("Standard_D2_v2")
///                             .build(),
///                         ManualScaleProfileArgs.builder()
///                             .count(2)
///                             .size("Standard_D2_v3")
///                             .build())
///                     .build())
///                 .build())
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     nodeLabels: {
///         key1: "val1",
///     },
///     nodeTaints: ["Key1=Value1:NoSchedule"],
///     orchestratorVersion: "1.9.6",
///     osType: azure_native.containerservice.OSType.Linux,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     tags: {
///         name1: "val1",
///     },
///     type: azure_native.containerservice.AgentPoolType.VirtualMachines,
///     virtualMachinesProfile: {
///         scale: {
///             manual: [
///                 {
///                     count: 3,
///                     size: "Standard_D2_v2",
///                 },
///                 {
///                     count: 2,
///                     size: "Standard_D2_v3",
///                 },
///             ],
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     node_labels={
///         "key1": "val1",
///     },
///     node_taints=["Key1=Value1:NoSchedule"],
///     orchestrator_version="1.9.6",
///     os_type=azure_native.containerservice.OSType.LINUX,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     tags={
///         "name1": "val1",
///     },
///     type=azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINES,
///     virtual_machines_profile={
///         "scale": {
///             "manual": [
///                 {
///                     "count": 3,
///                     "size": "Standard_D2_v2",
///                 },
///                 {
///                     "count": 2,
///                     "size": "Standard_D2_v3",
///                 },
///             ],
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       nodeLabels:
///         key1: val1
///       nodeTaints:
///         - Key1=Value1:NoSchedule
///       orchestratorVersion: 1.9.6
///       osType: Linux
///       resourceGroupName: rg1
///       resourceName: clustername1
///       tags:
///         name1: val1
///       type: VirtualMachines
///       virtualMachinesProfile:
///         scale:
///           manual:
///             - count: 3
///               size: Standard_D2_v2
///             - count: 2
///               size: Standard_D2_v3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Agent Pool with Windows OSSKU
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "wnp2",
///         Count = 3,
///         OrchestratorVersion = "1.23.3",
///         OsSKU = AzureNative.ContainerService.OSSKU.Windows2022,
///         OsType = AzureNative.ContainerService.OSType.Windows,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         VmSize = "Standard_D4s_v3",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName:       pulumi.String("wnp2"),
/// 			Count:               pulumi.Int(3),
/// 			OrchestratorVersion: pulumi.String("1.23.3"),
/// 			OsSKU:               pulumi.String(containerservice.OSSKUWindows2022),
/// 			OsType:              pulumi.String(containerservice.OSTypeWindows),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			ResourceName:        pulumi.String("clustername1"),
/// 			VmSize:              pulumi.String("Standard_D4s_v3"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("wnp2")
///             .count(3)
///             .orchestratorVersion("1.23.3")
///             .osSKU("Windows2022")
///             .osType("Windows")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .vmSize("Standard_D4s_v3")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "wnp2",
///     count: 3,
///     orchestratorVersion: "1.23.3",
///     osSKU: azure_native.containerservice.OSSKU.Windows2022,
///     osType: azure_native.containerservice.OSType.Windows,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     vmSize: "Standard_D4s_v3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="wnp2",
///     count=3,
///     orchestrator_version="1.23.3",
///     os_sku=azure_native.containerservice.OSSKU.WINDOWS2022,
///     os_type=azure_native.containerservice.OSType.WINDOWS,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     vm_size="Standard_D4s_v3")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: wnp2
///       count: 3
///       orchestratorVersion: 1.23.3
///       osSKU: Windows2022
///       osType: Windows
///       resourceGroupName: rg1
///       resourceName: clustername1
///       vmSize: Standard_D4s_v3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Spot Agent Pool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         Count = 3,
///         NodeLabels =
///         {
///             { "key1", "val1" },
///         },
///         NodeTaints = new[]
///         {
///             "Key1=Value1:NoSchedule",
///         },
///         OrchestratorVersion = "",
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ScaleSetEvictionPolicy = AzureNative.ContainerService.ScaleSetEvictionPolicy.Delete,
///         ScaleSetPriority = AzureNative.ContainerService.ScaleSetPriority.Spot,
///         Tags =
///         {
///             { "name1", "val1" },
///         },
///         VmSize = "Standard_DS1_v2",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName: pulumi.String("agentpool1"),
/// 			Count:         pulumi.Int(3),
/// 			NodeLabels: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 			},
/// 			NodeTaints: pulumi.StringArray{
/// 				pulumi.String("Key1=Value1:NoSchedule"),
/// 			},
/// 			OrchestratorVersion:    pulumi.String(""),
/// 			OsType:                 pulumi.String(containerservice.OSTypeLinux),
/// 			ResourceGroupName:      pulumi.String("rg1"),
/// 			ResourceName:           pulumi.String("clustername1"),
/// 			ScaleSetEvictionPolicy: pulumi.String(containerservice.ScaleSetEvictionPolicyDelete),
/// 			ScaleSetPriority:       pulumi.String(containerservice.ScaleSetPrioritySpot),
/// 			Tags: pulumi.StringMap{
/// 				"name1": pulumi.String("val1"),
/// 			},
/// 			VmSize: pulumi.String("Standard_DS1_v2"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .count(3)
///             .nodeLabels(Map.of("key1", "val1"))
///             .nodeTaints("Key1=Value1:NoSchedule")
///             .orchestratorVersion("")
///             .osType("Linux")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .scaleSetEvictionPolicy("Delete")
///             .scaleSetPriority("Spot")
///             .tags(Map.of("name1", "val1"))
///             .vmSize("Standard_DS1_v2")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     count: 3,
///     nodeLabels: {
///         key1: "val1",
///     },
///     nodeTaints: ["Key1=Value1:NoSchedule"],
///     orchestratorVersion: "",
///     osType: azure_native.containerservice.OSType.Linux,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     scaleSetEvictionPolicy: azure_native.containerservice.ScaleSetEvictionPolicy.Delete,
///     scaleSetPriority: azure_native.containerservice.ScaleSetPriority.Spot,
///     tags: {
///         name1: "val1",
///     },
///     vmSize: "Standard_DS1_v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     count=3,
///     node_labels={
///         "key1": "val1",
///     },
///     node_taints=["Key1=Value1:NoSchedule"],
///     orchestrator_version="",
///     os_type=azure_native.containerservice.OSType.LINUX,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     scale_set_eviction_policy=azure_native.containerservice.ScaleSetEvictionPolicy.DELETE,
///     scale_set_priority=azure_native.containerservice.ScaleSetPriority.SPOT,
///     tags={
///         "name1": "val1",
///     },
///     vm_size="Standard_DS1_v2")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       count: 3
///       nodeLabels:
///         key1: val1
///       nodeTaints:
///         - Key1=Value1:NoSchedule
///       orchestratorVersion: ""
///       osType: Linux
///       resourceGroupName: rg1
///       resourceName: clustername1
///       scaleSetEvictionPolicy: Delete
///       scaleSetPriority: Spot
///       tags:
///         name1: val1
///       vmSize: Standard_DS1_v2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Windows Agent Pool with disabling OutboundNAT
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "wnp2",
///         Count = 3,
///         OrchestratorVersion = "1.23.8",
///         OsSKU = AzureNative.ContainerService.OSSKU.Windows2022,
///         OsType = AzureNative.ContainerService.OSType.Windows,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         VmSize = "Standard_D4s_v3",
///         WindowsProfile = new AzureNative.ContainerService.Inputs.AgentPoolWindowsProfileArgs
///         {
///             DisableOutboundNat = true,
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName:       pulumi.String("wnp2"),
/// 			Count:               pulumi.Int(3),
/// 			OrchestratorVersion: pulumi.String("1.23.8"),
/// 			OsSKU:               pulumi.String(containerservice.OSSKUWindows2022),
/// 			OsType:              pulumi.String(containerservice.OSTypeWindows),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			ResourceName:        pulumi.String("clustername1"),
/// 			VmSize:              pulumi.String("Standard_D4s_v3"),
/// 			WindowsProfile: &containerservice.AgentPoolWindowsProfileArgs{
/// 				DisableOutboundNat: pulumi.Bool(true),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
/// import com.pulumi.azurenative.containerservice.inputs.AgentPoolWindowsProfileArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("wnp2")
///             .count(3)
///             .orchestratorVersion("1.23.8")
///             .osSKU("Windows2022")
///             .osType("Windows")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .vmSize("Standard_D4s_v3")
///             .windowsProfile(AgentPoolWindowsProfileArgs.builder()
///                 .disableOutboundNat(true)
///                 .build())
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "wnp2",
///     count: 3,
///     orchestratorVersion: "1.23.8",
///     osSKU: azure_native.containerservice.OSSKU.Windows2022,
///     osType: azure_native.containerservice.OSType.Windows,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     vmSize: "Standard_D4s_v3",
///     windowsProfile: {
///         disableOutboundNat: true,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="wnp2",
///     count=3,
///     orchestrator_version="1.23.8",
///     os_sku=azure_native.containerservice.OSSKU.WINDOWS2022,
///     os_type=azure_native.containerservice.OSType.WINDOWS,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     vm_size="Standard_D4s_v3",
///     windows_profile={
///         "disable_outbound_nat": True,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: wnp2
///       count: 3
///       orchestratorVersion: 1.23.8
///       osSKU: Windows2022
///       osType: Windows
///       resourceGroupName: rg1
///       resourceName: clustername1
///       vmSize: Standard_D4s_v3
///       windowsProfile:
///         disableOutboundNat: true
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create/Update Agent Pool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         Count = 3,
///         Mode = AzureNative.ContainerService.AgentPoolMode.User,
///         NodeLabels =
///         {
///             { "key1", "val1" },
///         },
///         NodeTaints = new[]
///         {
///             "Key1=Value1:NoSchedule",
///         },
///         OrchestratorVersion = "",
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ScaleSetEvictionPolicy = AzureNative.ContainerService.ScaleSetEvictionPolicy.Delete,
///         ScaleSetPriority = AzureNative.ContainerService.ScaleSetPriority.Spot,
///         Tags =
///         {
///             { "name1", "val1" },
///         },
///         VmSize = "Standard_DS1_v2",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName: pulumi.String("agentpool1"),
/// 			Count:         pulumi.Int(3),
/// 			Mode:          pulumi.String(containerservice.AgentPoolModeUser),
/// 			NodeLabels: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 			},
/// 			NodeTaints: pulumi.StringArray{
/// 				pulumi.String("Key1=Value1:NoSchedule"),
/// 			},
/// 			OrchestratorVersion:    pulumi.String(""),
/// 			OsType:                 pulumi.String(containerservice.OSTypeLinux),
/// 			ResourceGroupName:      pulumi.String("rg1"),
/// 			ResourceName:           pulumi.String("clustername1"),
/// 			ScaleSetEvictionPolicy: pulumi.String(containerservice.ScaleSetEvictionPolicyDelete),
/// 			ScaleSetPriority:       pulumi.String(containerservice.ScaleSetPrioritySpot),
/// 			Tags: pulumi.StringMap{
/// 				"name1": pulumi.String("val1"),
/// 			},
/// 			VmSize: pulumi.String("Standard_DS1_v2"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .count(3)
///             .mode("User")
///             .nodeLabels(Map.of("key1", "val1"))
///             .nodeTaints("Key1=Value1:NoSchedule")
///             .orchestratorVersion("")
///             .osType("Linux")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .scaleSetEvictionPolicy("Delete")
///             .scaleSetPriority("Spot")
///             .tags(Map.of("name1", "val1"))
///             .vmSize("Standard_DS1_v2")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     count: 3,
///     mode: azure_native.containerservice.AgentPoolMode.User,
///     nodeLabels: {
///         key1: "val1",
///     },
///     nodeTaints: ["Key1=Value1:NoSchedule"],
///     orchestratorVersion: "",
///     osType: azure_native.containerservice.OSType.Linux,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     scaleSetEvictionPolicy: azure_native.containerservice.ScaleSetEvictionPolicy.Delete,
///     scaleSetPriority: azure_native.containerservice.ScaleSetPriority.Spot,
///     tags: {
///         name1: "val1",
///     },
///     vmSize: "Standard_DS1_v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     count=3,
///     mode=azure_native.containerservice.AgentPoolMode.USER,
///     node_labels={
///         "key1": "val1",
///     },
///     node_taints=["Key1=Value1:NoSchedule"],
///     orchestrator_version="",
///     os_type=azure_native.containerservice.OSType.LINUX,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     scale_set_eviction_policy=azure_native.containerservice.ScaleSetEvictionPolicy.DELETE,
///     scale_set_priority=azure_native.containerservice.ScaleSetPriority.SPOT,
///     tags={
///         "name1": "val1",
///     },
///     vm_size="Standard_DS1_v2")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       count: 3
///       mode: User
///       nodeLabels:
///         key1: val1
///       nodeTaints:
///         - Key1=Value1:NoSchedule
///       orchestratorVersion: ""
///       osType: Linux
///       resourceGroupName: rg1
///       resourceName: clustername1
///       scaleSetEvictionPolicy: Delete
///       scaleSetPriority: Spot
///       tags:
///         name1: val1
///       vmSize: Standard_DS1_v2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Start Agent Pool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         PowerState = new AzureNative.ContainerService.Inputs.PowerStateArgs
///         {
///             Code = AzureNative.ContainerService.Code.Running,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName: pulumi.String("agentpool1"),
/// 			PowerState: &containerservice.PowerStateArgs{
/// 				Code: pulumi.String(containerservice.CodeRunning),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
/// import com.pulumi.azurenative.containerservice.inputs.PowerStateArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .powerState(PowerStateArgs.builder()
///                 .code("Running")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     powerState: {
///         code: azure_native.containerservice.Code.Running,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     power_state={
///         "code": azure_native.containerservice.Code.RUNNING,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       powerState:
///         code: Running
///       resourceGroupName: rg1
///       resourceName: clustername1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Stop Agent Pool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         PowerState = new AzureNative.ContainerService.Inputs.PowerStateArgs
///         {
///             Code = AzureNative.ContainerService.Code.Stopped,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName: pulumi.String("agentpool1"),
/// 			PowerState: &containerservice.PowerStateArgs{
/// 				Code: pulumi.String(containerservice.CodeStopped),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
/// import com.pulumi.azurenative.containerservice.inputs.PowerStateArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .powerState(PowerStateArgs.builder()
///                 .code("Stopped")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     powerState: {
///         code: azure_native.containerservice.Code.Stopped,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     power_state={
///         "code": azure_native.containerservice.Code.STOPPED,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       powerState:
///         code: Stopped
///       resourceGroupName: rg1
///       resourceName: clustername1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update Agent Pool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "agentpool1",
///         Count = 3,
///         EnableAutoScaling = true,
///         MaxCount = 2,
///         MinCount = 2,
///         NodeTaints = new[]
///         {
///             "Key1=Value1:NoSchedule",
///         },
///         OrchestratorVersion = "",
///         OsType = AzureNative.ContainerService.OSType.Linux,
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ScaleSetEvictionPolicy = AzureNative.ContainerService.ScaleSetEvictionPolicy.Delete,
///         ScaleSetPriority = AzureNative.ContainerService.ScaleSetPriority.Spot,
///         VmSize = "Standard_DS1_v2",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAgentPool(ctx, "agentPool", &containerservice.AgentPoolArgs{
/// 			AgentPoolName:     pulumi.String("agentpool1"),
/// 			Count:             pulumi.Int(3),
/// 			EnableAutoScaling: pulumi.Bool(true),
/// 			MaxCount:          pulumi.Int(2),
/// 			MinCount:          pulumi.Int(2),
/// 			NodeTaints: pulumi.StringArray{
/// 				pulumi.String("Key1=Value1:NoSchedule"),
/// 			},
/// 			OrchestratorVersion:    pulumi.String(""),
/// 			OsType:                 pulumi.String(containerservice.OSTypeLinux),
/// 			ResourceGroupName:      pulumi.String("rg1"),
/// 			ResourceName:           pulumi.String("clustername1"),
/// 			ScaleSetEvictionPolicy: pulumi.String(containerservice.ScaleSetEvictionPolicyDelete),
/// 			ScaleSetPriority:       pulumi.String(containerservice.ScaleSetPrioritySpot),
/// 			VmSize:                 pulumi.String("Standard_DS1_v2"),
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
/// import com.pulumi.azurenative.containerservice.AgentPool;
/// import com.pulumi.azurenative.containerservice.AgentPoolArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("agentpool1")
///             .count(3)
///             .enableAutoScaling(true)
///             .maxCount(2)
///             .minCount(2)
///             .nodeTaints("Key1=Value1:NoSchedule")
///             .orchestratorVersion("")
///             .osType("Linux")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .scaleSetEvictionPolicy("Delete")
///             .scaleSetPriority("Spot")
///             .vmSize("Standard_DS1_v2")
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
/// const agentPool = new azure_native.containerservice.AgentPool("agentPool", {
///     agentPoolName: "agentpool1",
///     count: 3,
///     enableAutoScaling: true,
///     maxCount: 2,
///     minCount: 2,
///     nodeTaints: ["Key1=Value1:NoSchedule"],
///     orchestratorVersion: "",
///     osType: azure_native.containerservice.OSType.Linux,
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     scaleSetEvictionPolicy: azure_native.containerservice.ScaleSetEvictionPolicy.Delete,
///     scaleSetPriority: azure_native.containerservice.ScaleSetPriority.Spot,
///     vmSize: "Standard_DS1_v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerservice.AgentPool("agentPool",
///     agent_pool_name="agentpool1",
///     count=3,
///     enable_auto_scaling=True,
///     max_count=2,
///     min_count=2,
///     node_taints=["Key1=Value1:NoSchedule"],
///     orchestrator_version="",
///     os_type=azure_native.containerservice.OSType.LINUX,
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     scale_set_eviction_policy=azure_native.containerservice.ScaleSetEvictionPolicy.DELETE,
///     scale_set_priority=azure_native.containerservice.ScaleSetPriority.SPOT,
///     vm_size="Standard_DS1_v2")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerservice:AgentPool
///     properties:
///       agentPoolName: agentpool1
///       count: 3
///       enableAutoScaling: true
///       maxCount: 2
///       minCount: 2
///       nodeTaints:
///         - Key1=Value1:NoSchedule
///       orchestratorVersion: ""
///       osType: Linux
///       resourceGroupName: rg1
///       resourceName: clustername1
///       scaleSetEvictionPolicy: Delete
///       scaleSetPriority: Spot
///       vmSize: Standard_DS1_v2
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
/// $ pulumi import azure-native:containerservice:AgentPool agentpool1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/agentPools/{agentPoolName}
/// ```
class AgentPool extends pulumi.CustomResource {
  /// The list of Availability zones to use for nodes. This can only be specified if the AgentPoolType property is 'VirtualMachineScaleSets'.
  late final pulumi.Output<List<String>?> availabilityZones;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// AKS will associate the specified agent pool with the Capacity Reservation Group.
  late final pulumi.Output<String?> capacityReservationGroupID;

  /// Number of agents (VMs) to host docker containers. Allowed values must be in the range of 0 to 1000 (inclusive) for user pools and in the range of 1 to 1000 (inclusive) for system pools. The default value is 1.
  late final pulumi.Output<int?> count;

  /// CreationData to be used to specify the source Snapshot ID if the node pool will be created/upgraded using a snapshot.
  late final pulumi.Output<CreationDataResponse?> creationData;

  /// The version of Kubernetes the Agent Pool is running. If orchestratorVersion is a fully specified version &lt;major.minor.patch&gt;, this field will be exactly equal to it. If orchestratorVersion is &lt;major.minor&gt;, this field will contain the full &lt;major.minor.patch&gt; version being used.
  late final pulumi.Output<String> currentOrchestratorVersion;

  /// Unique read-only string used to implement optimistic concurrency. The eTag value will change when the resource is updated. Specify an if-match or if-none-match header with the eTag value for a subsequent request to enable optimistic concurrency per the normal eTag convention.
  late final pulumi.Output<String> eTag;

  /// Whether to enable auto-scaler
  late final pulumi.Output<bool?> enableAutoScaling;

  /// Whether to enable host based OS and data drive encryption. This is only supported on certain VM sizes and in certain Azure regions. For more information, see: https://docs.microsoft.com/azure/aks/enable-host-encryption
  late final pulumi.Output<bool?> enableEncryptionAtHost;

  /// Whether to use a FIPS-enabled OS. See [Add a FIPS-enabled node pool](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#add-a-fips-enabled-node-pool-preview) for more details.
  late final pulumi.Output<bool?> enableFIPS;

  /// Whether each node is allocated its own public IP. Some scenarios may require nodes in a node pool to receive their own dedicated public IP addresses. A common scenario is for gaming workloads, where a console needs to make a direct connection to a cloud virtual machine to minimize hops. For more information see [assigning a public IP per node](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#assign-a-public-ip-per-node-for-your-node-pools). The default is false.
  late final pulumi.Output<bool?> enableNodePublicIP;

  /// Whether to enable UltraSSD
  late final pulumi.Output<bool?> enableUltraSSD;

  /// Profile specific to a managed agent pool in Gateway mode. This field cannot be set if agent pool mode is not Gateway.
  late final pulumi.Output<AgentPoolGatewayProfileResponse?> gatewayProfile;

  /// GPUInstanceProfile to be used to specify GPU MIG instance profile for supported GPU VM SKU.
  late final pulumi.Output<String?> gpuInstanceProfile;

  /// GPU settings for the Agent Pool.
  late final pulumi.Output<GPUProfileResponse?> gpuProfile;

  /// The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from, used only in creation scenario and not allowed to changed once set. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}. For more information see [Azure dedicated hosts](https://docs.microsoft.com/azure/virtual-machines/dedicated-hosts).
  late final pulumi.Output<String?> hostGroupID;

  /// The Kubelet configuration on the agent pool nodes.
  late final pulumi.Output<KubeletConfigResponse?> kubeletConfig;

  /// Determines the placement of emptyDir volumes, container runtime data root, and Kubelet ephemeral storage.
  late final pulumi.Output<String?> kubeletDiskType;

  /// The OS configuration of Linux agent nodes.
  late final pulumi.Output<LinuxOSConfigResponse?> linuxOSConfig;

  /// Configures the per-node local DNS, with VnetDNS and KubeDNS overrides. LocalDNS helps improve performance and reliability of DNS resolution in an AKS cluster. For more details see aka.ms/aks/localdns.
  late final pulumi.Output<LocalDNSProfileResponse?> localDNSProfile;

  /// The maximum number of nodes for auto-scaling
  late final pulumi.Output<int?> maxCount;

  /// The maximum number of pods that can run on a node.
  late final pulumi.Output<int?> maxPods;

  /// Message of the day for Linux nodes, base64-encoded. A base64-encoded string which will be written to /etc/motd after decoding. This allows customization of the message of the day for Linux nodes. It must not be specified for Windows nodes. It must be a static string (i.e., will be printed raw and not be executed as a script).
  late final pulumi.Output<String?> messageOfTheDay;

  /// The minimum number of nodes for auto-scaling
  late final pulumi.Output<int?> minCount;

  /// The mode of an agent pool. A cluster must have at least one 'System' Agent Pool at all times. For additional information on agent pool restrictions and best practices, see: https://docs.microsoft.com/azure/aks/use-system-pools
  late final pulumi.Output<String?> mode;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String> name;

  /// Network-related settings of an agent pool.
  late final pulumi.Output<AgentPoolNetworkProfileResponse?> networkProfile;

  /// The version of node image
  late final pulumi.Output<String> nodeImageVersion;

  /// The node labels to be persisted across all nodes in agent pool.
  late final pulumi.Output<Map<String, String>?> nodeLabels;

  /// The public IP prefix ID which VM nodes should use IPs from. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPPrefixes/{publicIPPrefixName}
  late final pulumi.Output<String?> nodePublicIPPrefixID;

  /// The taints added to new nodes during node pool create and scale. For example, key=value:NoSchedule.
  late final pulumi.Output<List<String>?> nodeTaints;

  /// The version of Kubernetes specified by the user. Both patch version &lt;major.minor.patch&gt; (e.g. 1.20.13) and &lt;major.minor&gt; (e.g. 1.20) are supported. When &lt;major.minor&gt; is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same &lt;major.minor&gt; once it has been created (e.g. 1.14.x -&gt; 1.14) will not trigger an upgrade, even if a newer patch version is available. As a best practice, you should upgrade all node pools in an AKS cluster to the same Kubernetes version. The node pool version must have the same major version as the control plane. The node pool minor version must be within two minor versions of the control plane version. The node pool version cannot be greater than the control plane version. For more information see [upgrading a node pool](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#upgrade-a-node-pool).
  late final pulumi.Output<String?> orchestratorVersion;

  /// OS Disk Size in GB to be used to specify the disk size for every machine in the master/agent pool. If you specify 0, it will apply the default osDisk size according to the vmSize specified.
  late final pulumi.Output<int?> osDiskSizeGB;

  /// The OS disk type to be used for machines in the agent pool. The default is 'Ephemeral' if the VM supports it and has a cache disk larger than the requested OSDiskSizeGB. Otherwise, defaults to 'Managed'. May not be changed after creation. For more information see [Ephemeral OS](https://docs.microsoft.com/azure/aks/cluster-configuration#ephemeral-os).
  late final pulumi.Output<String?> osDiskType;

  /// Specifies the OS SKU used by the agent pool. The default is Ubuntu if OSType is Linux. The default is Windows2019 when Kubernetes &lt;= 1.24 or Windows2022 when Kubernetes &gt;= 1.25 if OSType is Windows.
  late final pulumi.Output<String?> osSKU;

  /// The operating system type. The default is Linux.
  late final pulumi.Output<String?> osType;

  /// Pod IP Allocation Mode. The IP allocation mode for pods in the agent pool. Must be used with podSubnetId. The default is 'DynamicIndividual'.
  late final pulumi.Output<String?> podIPAllocationMode;

  /// The ID of the subnet which pods will join when launched. If omitted, pod IPs are statically assigned on the node subnet (see vnetSubnetID for more details). This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
  late final pulumi.Output<String?> podSubnetID;

  /// Whether the Agent Pool is running or stopped. When an Agent Pool is first created it is initially Running. The Agent Pool can be stopped by setting this field to Stopped. A stopped Agent Pool stops all of its VMs and does not accrue billing charges. An Agent Pool can only be stopped if it is Running and provisioning state is Succeeded
  late final pulumi.Output<PowerStateResponse?> powerState;

  /// The current deployment or provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// The ID for Proximity Placement Group.
  late final pulumi.Output<String?> proximityPlacementGroupID;

  /// The scale down mode to use when scaling the Agent Pool. This also effects the cluster autoscaler behavior. If not specified, it defaults to Delete.
  late final pulumi.Output<String?> scaleDownMode;

  /// The Virtual Machine Scale Set eviction policy to use. This cannot be specified unless the scaleSetPriority is 'Spot'. If not specified, the default is 'Delete'.
  late final pulumi.Output<String?> scaleSetEvictionPolicy;

  /// The Virtual Machine Scale Set priority. If not specified, the default is 'Regular'.
  late final pulumi.Output<String?> scaleSetPriority;

  /// The security settings of an agent pool.
  late final pulumi.Output<AgentPoolSecurityProfileResponse?> securityProfile;

  /// The max price (in US Dollars) you are willing to pay for spot instances. Possible values are any decimal value greater than zero or -1 which indicates default price to be up-to on-demand. Possible values are any decimal value greater than zero or -1 which indicates the willingness to pay any on-demand price. For more details on spot pricing, see [spot VMs pricing](https://docs.microsoft.com/azure/virtual-machines/spot-vms#pricing)
  late final pulumi.Output<double?> spotMaxPrice;

  /// Contains read-only information about the Agent Pool.
  late final pulumi.Output<AgentPoolStatusResponse?> status;

  /// The tags to be persisted on the agent pool virtual machine scale set.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type
  late final pulumi.Output<String> type;

  /// Settings for upgrading the agentpool
  late final pulumi.Output<AgentPoolUpgradeSettingsResponse?> upgradeSettings;

  /// The status of nodes in a VirtualMachines agent pool.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  virtualMachineNodesStatus;

  /// Specifications on VirtualMachines agent pool.
  late final pulumi.Output<VirtualMachinesProfileResponse?>
  virtualMachinesProfile;

  /// The size of the agent pool VMs. VM size availability varies by region. If a node contains insufficient compute resources (memory, cpu, etc) pods might fail to run correctly. For more details on restricted VM sizes, see: https://docs.microsoft.com/azure/aks/quotas-skus-regions
  late final pulumi.Output<String?> vmSize;

  /// The ID of the subnet which agent pool nodes and optionally pods will join on startup. If this is not specified, a VNET and subnet will be generated and used. If no podSubnetID is specified, this applies to nodes and pods, otherwise it applies to just nodes. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
  late final pulumi.Output<String?> vnetSubnetID;

  /// The Windows agent pool's specific profile.
  late final pulumi.Output<AgentPoolWindowsProfileResponse?> windowsProfile;

  /// Determines the type of workload a node can run.
  late final pulumi.Output<String?> workloadRuntime;

  /// Creates a new [AgentPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentPool]. {@macro pulumi_containerservice_agent_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentPool(
    String name, {
    AgentPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:containerservice:AgentPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    availabilityZones = registerOutput<List<String>?>('availabilityZones');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    capacityReservationGroupID = registerOutput<String?>(
      'capacityReservationGroupID',
    );
    count = registerOutput<int?>('count');
    creationData = registerOutput<CreationDataResponse?>('creationData');
    currentOrchestratorVersion = registerOutput<String>(
      'currentOrchestratorVersion',
    );
    eTag = registerOutput<String>('eTag');
    enableAutoScaling = registerOutput<bool?>('enableAutoScaling');
    enableEncryptionAtHost = registerOutput<bool?>('enableEncryptionAtHost');
    enableFIPS = registerOutput<bool?>('enableFIPS');
    enableNodePublicIP = registerOutput<bool?>('enableNodePublicIP');
    enableUltraSSD = registerOutput<bool?>('enableUltraSSD');
    gatewayProfile = registerOutput<AgentPoolGatewayProfileResponse?>(
      'gatewayProfile',
    );
    gpuInstanceProfile = registerOutput<String?>('gpuInstanceProfile');
    gpuProfile = registerOutput<GPUProfileResponse?>('gpuProfile');
    hostGroupID = registerOutput<String?>('hostGroupID');
    kubeletConfig = registerOutput<KubeletConfigResponse?>('kubeletConfig');
    kubeletDiskType = registerOutput<String?>('kubeletDiskType');
    linuxOSConfig = registerOutput<LinuxOSConfigResponse?>('linuxOSConfig');
    localDNSProfile = registerOutput<LocalDNSProfileResponse?>(
      'localDNSProfile',
    );
    maxCount = registerOutput<int?>('maxCount');
    maxPods = registerOutput<int?>('maxPods');
    messageOfTheDay = registerOutput<String?>('messageOfTheDay');
    minCount = registerOutput<int?>('minCount');
    mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<AgentPoolNetworkProfileResponse?>(
      'networkProfile',
    );
    nodeImageVersion = registerOutput<String>('nodeImageVersion');
    nodeLabels = registerOutput<Map<String, String>?>('nodeLabels');
    nodePublicIPPrefixID = registerOutput<String?>('nodePublicIPPrefixID');
    nodeTaints = registerOutput<List<String>?>('nodeTaints');
    orchestratorVersion = registerOutput<String?>('orchestratorVersion');
    osDiskSizeGB = registerOutput<int?>('osDiskSizeGB');
    osDiskType = registerOutput<String?>('osDiskType');
    osSKU = registerOutput<String?>('osSKU');
    osType = registerOutput<String?>('osType');
    podIPAllocationMode = registerOutput<String?>('podIPAllocationMode');
    podSubnetID = registerOutput<String?>('podSubnetID');
    powerState = registerOutput<PowerStateResponse?>('powerState');
    provisioningState = registerOutput<String>('provisioningState');
    proximityPlacementGroupID = registerOutput<String?>(
      'proximityPlacementGroupID',
    );
    scaleDownMode = registerOutput<String?>('scaleDownMode');
    scaleSetEvictionPolicy = registerOutput<String?>('scaleSetEvictionPolicy');
    scaleSetPriority = registerOutput<String?>('scaleSetPriority');
    securityProfile = registerOutput<AgentPoolSecurityProfileResponse?>(
      'securityProfile',
    );
    spotMaxPrice = registerOutput<double?>('spotMaxPrice');
    status = registerOutput<AgentPoolStatusResponse?>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    upgradeSettings = registerOutput<AgentPoolUpgradeSettingsResponse?>(
      'upgradeSettings',
    );
    virtualMachineNodesStatus = registerOutput<List<Map<String, dynamic>>?>(
      'virtualMachineNodesStatus',
    );
    virtualMachinesProfile = registerOutput<VirtualMachinesProfileResponse?>(
      'virtualMachinesProfile',
    );
    vmSize = registerOutput<String?>('vmSize');
    vnetSubnetID = registerOutput<String?>('vnetSubnetID');
    windowsProfile = registerOutput<AgentPoolWindowsProfileResponse?>(
      'windowsProfile',
    );
    workloadRuntime = registerOutput<String?>('workloadRuntime');
  }
}
