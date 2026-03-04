import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_monitor_args.dart';
import 'connection_monitor_destination_response.dart';
import 'connection_monitor_source_response.dart';

/// Information about the connection monitor.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create connection monitor V1
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectionMonitor = new AzureNative.Network.ConnectionMonitor("connectionMonitor", new()
///     {
///         ConnectionMonitorName = "cm1",
///         Endpoints = new[]
///         {
///             new AzureNative.Network.Inputs.ConnectionMonitorEndpointArgs
///             {
///                 Name = "source",
///                 ResourceId = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/ct1",
///             },
///             new AzureNative.Network.Inputs.ConnectionMonitorEndpointArgs
///             {
///                 Address = "bing.com",
///                 Name = "destination",
///             },
///         },
///         Location = "eastus",
///         NetworkWatcherName = "nw1",
///         ResourceGroupName = "rg1",
///         TestConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.ConnectionMonitorTestConfigurationArgs
///             {
///                 Name = "tcp",
///                 Protocol = AzureNative.Network.ConnectionMonitorTestConfigurationProtocol.Tcp,
///                 TcpConfiguration = new AzureNative.Network.Inputs.ConnectionMonitorTcpConfigurationArgs
///                 {
///                     Port = 80,
///                 },
///                 TestFrequencySec = 60,
///             },
///         },
///         TestGroups = new[]
///         {
///             new AzureNative.Network.Inputs.ConnectionMonitorTestGroupArgs
///             {
///                 Destinations = new[]
///                 {
///                     "destination",
///                 },
///                 Name = "tg",
///                 Sources = new[]
///                 {
///                     "source",
///                 },
///                 TestConfigurations = new[]
///                 {
///                     "tcp",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewConnectionMonitor(ctx, "connectionMonitor", &network.ConnectionMonitorArgs{
/// 			ConnectionMonitorName: pulumi.String("cm1"),
/// 			Endpoints: network.ConnectionMonitorEndpointArray{
/// 				&network.ConnectionMonitorEndpointArgs{
/// 					Name:       pulumi.String("source"),
/// 					ResourceId: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/ct1"),
/// 				},
/// 				&network.ConnectionMonitorEndpointArgs{
/// 					Address: pulumi.String("bing.com"),
/// 					Name:    pulumi.String("destination"),
/// 				},
/// 			},
/// 			Location:           pulumi.String("eastus"),
/// 			NetworkWatcherName: pulumi.String("nw1"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			TestConfigurations: network.ConnectionMonitorTestConfigurationArray{
/// 				&network.ConnectionMonitorTestConfigurationArgs{
/// 					Name:     pulumi.String("tcp"),
/// 					Protocol: pulumi.String(network.ConnectionMonitorTestConfigurationProtocolTcp),
/// 					TcpConfiguration: &network.ConnectionMonitorTcpConfigurationArgs{
/// 						Port: pulumi.Int(80),
/// 					},
/// 					TestFrequencySec: pulumi.Int(60),
/// 				},
/// 			},
/// 			TestGroups: network.ConnectionMonitorTestGroupArray{
/// 				&network.ConnectionMonitorTestGroupArgs{
/// 					Destinations: pulumi.StringArray{
/// 						pulumi.String("destination"),
/// 					},
/// 					Name: pulumi.String("tg"),
/// 					Sources: pulumi.StringArray{
/// 						pulumi.String("source"),
/// 					},
/// 					TestConfigurations: pulumi.StringArray{
/// 						pulumi.String("tcp"),
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
/// import com.pulumi.azurenative.network.ConnectionMonitor;
/// import com.pulumi.azurenative.network.ConnectionMonitorArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectionMonitorEndpointArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectionMonitorTestConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectionMonitorTcpConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectionMonitorTestGroupArgs;
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
///         var connectionMonitor = new ConnectionMonitor("connectionMonitor", ConnectionMonitorArgs.builder()
///             .connectionMonitorName("cm1")
///             .endpoints(
///                 ConnectionMonitorEndpointArgs.builder()
///                     .name("source")
///                     .resourceId("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/ct1")
///                     .build(),
///                 ConnectionMonitorEndpointArgs.builder()
///                     .address("bing.com")
///                     .name("destination")
///                     .build())
///             .location("eastus")
///             .networkWatcherName("nw1")
///             .resourceGroupName("rg1")
///             .testConfigurations(ConnectionMonitorTestConfigurationArgs.builder()
///                 .name("tcp")
///                 .protocol("Tcp")
///                 .tcpConfiguration(ConnectionMonitorTcpConfigurationArgs.builder()
///                     .port(80)
///                     .build())
///                 .testFrequencySec(60)
///                 .build())
///             .testGroups(ConnectionMonitorTestGroupArgs.builder()
///                 .destinations("destination")
///                 .name("tg")
///                 .sources("source")
///                 .testConfigurations("tcp")
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
/// const connectionMonitor = new azure_native.network.ConnectionMonitor("connectionMonitor", {
///     connectionMonitorName: "cm1",
///     endpoints: [
///         {
///             name: "source",
///             resourceId: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/ct1",
///         },
///         {
///             address: "bing.com",
///             name: "destination",
///         },
///     ],
///     location: "eastus",
///     networkWatcherName: "nw1",
///     resourceGroupName: "rg1",
///     testConfigurations: [{
///         name: "tcp",
///         protocol: azure_native.network.ConnectionMonitorTestConfigurationProtocol.Tcp,
///         tcpConfiguration: {
///             port: 80,
///         },
///         testFrequencySec: 60,
///     }],
///     testGroups: [{
///         destinations: ["destination"],
///         name: "tg",
///         sources: ["source"],
///         testConfigurations: ["tcp"],
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connection_monitor = azure_native.network.ConnectionMonitor("connectionMonitor",
///     connection_monitor_name="cm1",
///     endpoints=[
///         {
///             "name": "source",
///             "resource_id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/ct1",
///         },
///         {
///             "address": "bing.com",
///             "name": "destination",
///         },
///     ],
///     location="eastus",
///     network_watcher_name="nw1",
///     resource_group_name="rg1",
///     test_configurations=[{
///         "name": "tcp",
///         "protocol": azure_native.network.ConnectionMonitorTestConfigurationProtocol.TCP,
///         "tcp_configuration": {
///             "port": 80,
///         },
///         "test_frequency_sec": 60,
///     }],
///     test_groups=[{
///         "destinations": ["destination"],
///         "name": "tg",
///         "sources": ["source"],
///         "test_configurations": ["tcp"],
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   connectionMonitor:
///     type: azure-native:network:ConnectionMonitor
///     properties:
///       connectionMonitorName: cm1
///       endpoints:
///         - name: source
///           resourceId: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/ct1
///         - address: bing.com
///           name: destination
///       location: eastus
///       networkWatcherName: nw1
///       resourceGroupName: rg1
///       testConfigurations:
///         - name: tcp
///           protocol: Tcp
///           tcpConfiguration:
///             port: 80
///           testFrequencySec: 60
///       testGroups:
///         - destinations:
///             - destination
///           name: tg
///           sources:
///             - source
///           testConfigurations:
///             - tcp
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create connection monitor V2
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectionMonitor = new AzureNative.Network.ConnectionMonitor("connectionMonitor", new()
///     {
///         ConnectionMonitorName = "cm1",
///         Endpoints = new[]
///         {
///             new AzureNative.Network.Inputs.ConnectionMonitorEndpointArgs
///             {
///                 Name = "vm1",
///                 ResourceId = "/subscriptions/96e68903-0a56-4819-9987-8d08ad6a1f99/resourceGroups/NwRgIrinaCentralUSEUAP/providers/Microsoft.Compute/virtualMachines/vm1",
///             },
///             new AzureNative.Network.Inputs.ConnectionMonitorEndpointArgs
///             {
///                 Filter = new AzureNative.Network.Inputs.ConnectionMonitorEndpointFilterArgs
///                 {
///                     Items = new[]
///                     {
///                         new AzureNative.Network.Inputs.ConnectionMonitorEndpointFilterItemArgs
///                         {
///                             Address = "npmuser",
///                             Type = AzureNative.Network.ConnectionMonitorEndpointFilterItemType.AgentAddress,
///                         },
///                     },
///                     Type = AzureNative.Network.ConnectionMonitorEndpointFilterType.Include,
///                 },
///                 Name = "CanaryWorkspaceVamshi",
///                 ResourceId = "/subscriptions/96e68903-0a56-4819-9987-8d08ad6a1f99/resourceGroups/vasamudrRG/providers/Microsoft.OperationalInsights/workspaces/vasamudrWorkspace",
///             },
///             new AzureNative.Network.Inputs.ConnectionMonitorEndpointArgs
///             {
///                 Address = "bing.com",
///                 Name = "bing",
///             },
///             new AzureNative.Network.Inputs.ConnectionMonitorEndpointArgs
///             {
///                 Address = "google.com",
///                 Name = "google",
///             },
///         },
///         NetworkWatcherName = "nw1",
///         Outputs = new[] {},
///         ResourceGroupName = "rg1",
///         TestConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.ConnectionMonitorTestConfigurationArgs
///             {
///                 Name = "testConfig1",
///                 Protocol = AzureNative.Network.ConnectionMonitorTestConfigurationProtocol.Tcp,
///                 TcpConfiguration = new AzureNative.Network.Inputs.ConnectionMonitorTcpConfigurationArgs
///                 {
///                     DisableTraceRoute = false,
///                     Port = 80,
///                 },
///                 TestFrequencySec = 60,
///             },
///         },
///         TestGroups = new[]
///         {
///             new AzureNative.Network.Inputs.ConnectionMonitorTestGroupArgs
///             {
///                 Destinations = new[]
///                 {
///                     "bing",
///                     "google",
///                 },
///                 Disable = false,
///                 Name = "test1",
///                 Sources = new[]
///                 {
///                     "vm1",
///                     "CanaryWorkspaceVamshi",
///                 },
///                 TestConfigurations = new[]
///                 {
///                     "testConfig1",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewConnectionMonitor(ctx, "connectionMonitor", &network.ConnectionMonitorArgs{
/// 			ConnectionMonitorName: pulumi.String("cm1"),
/// 			Endpoints: network.ConnectionMonitorEndpointArray{
/// 				&network.ConnectionMonitorEndpointArgs{
/// 					Name:       pulumi.String("vm1"),
/// 					ResourceId: pulumi.String("/subscriptions/96e68903-0a56-4819-9987-8d08ad6a1f99/resourceGroups/NwRgIrinaCentralUSEUAP/providers/Microsoft.Compute/virtualMachines/vm1"),
/// 				},
/// 				&network.ConnectionMonitorEndpointArgs{
/// 					Filter: &network.ConnectionMonitorEndpointFilterArgs{
/// 						Items: network.ConnectionMonitorEndpointFilterItemArray{
/// 							&network.ConnectionMonitorEndpointFilterItemArgs{
/// 								Address: pulumi.String("npmuser"),
/// 								Type:    pulumi.String(network.ConnectionMonitorEndpointFilterItemTypeAgentAddress),
/// 							},
/// 						},
/// 						Type: pulumi.String(network.ConnectionMonitorEndpointFilterTypeInclude),
/// 					},
/// 					Name:       pulumi.String("CanaryWorkspaceVamshi"),
/// 					ResourceId: pulumi.String("/subscriptions/96e68903-0a56-4819-9987-8d08ad6a1f99/resourceGroups/vasamudrRG/providers/Microsoft.OperationalInsights/workspaces/vasamudrWorkspace"),
/// 				},
/// 				&network.ConnectionMonitorEndpointArgs{
/// 					Address: pulumi.String("bing.com"),
/// 					Name:    pulumi.String("bing"),
/// 				},
/// 				&network.ConnectionMonitorEndpointArgs{
/// 					Address: pulumi.String("google.com"),
/// 					Name:    pulumi.String("google"),
/// 				},
/// 			},
/// 			NetworkWatcherName: pulumi.String("nw1"),
/// 			Outputs:            network.ConnectionMonitorOutputTypeArray{},
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			TestConfigurations: network.ConnectionMonitorTestConfigurationArray{
/// 				&network.ConnectionMonitorTestConfigurationArgs{
/// 					Name:     pulumi.String("testConfig1"),
/// 					Protocol: pulumi.String(network.ConnectionMonitorTestConfigurationProtocolTcp),
/// 					TcpConfiguration: &network.ConnectionMonitorTcpConfigurationArgs{
/// 						DisableTraceRoute: pulumi.Bool(false),
/// 						Port:              pulumi.Int(80),
/// 					},
/// 					TestFrequencySec: pulumi.Int(60),
/// 				},
/// 			},
/// 			TestGroups: network.ConnectionMonitorTestGroupArray{
/// 				&network.ConnectionMonitorTestGroupArgs{
/// 					Destinations: pulumi.StringArray{
/// 						pulumi.String("bing"),
/// 						pulumi.String("google"),
/// 					},
/// 					Disable: pulumi.Bool(false),
/// 					Name:    pulumi.String("test1"),
/// 					Sources: pulumi.StringArray{
/// 						pulumi.String("vm1"),
/// 						pulumi.String("CanaryWorkspaceVamshi"),
/// 					},
/// 					TestConfigurations: pulumi.StringArray{
/// 						pulumi.String("testConfig1"),
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
/// import com.pulumi.azurenative.network.ConnectionMonitor;
/// import com.pulumi.azurenative.network.ConnectionMonitorArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectionMonitorEndpointArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectionMonitorEndpointFilterArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectionMonitorTestConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectionMonitorTcpConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectionMonitorTestGroupArgs;
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
///         var connectionMonitor = new ConnectionMonitor("connectionMonitor", ConnectionMonitorArgs.builder()
///             .connectionMonitorName("cm1")
///             .endpoints(
///                 ConnectionMonitorEndpointArgs.builder()
///                     .name("vm1")
///                     .resourceId("/subscriptions/96e68903-0a56-4819-9987-8d08ad6a1f99/resourceGroups/NwRgIrinaCentralUSEUAP/providers/Microsoft.Compute/virtualMachines/vm1")
///                     .build(),
///                 ConnectionMonitorEndpointArgs.builder()
///                     .filter(ConnectionMonitorEndpointFilterArgs.builder()
///                         .items(ConnectionMonitorEndpointFilterItemArgs.builder()
///                             .address("npmuser")
///                             .type("AgentAddress")
///                             .build())
///                         .type("Include")
///                         .build())
///                     .name("CanaryWorkspaceVamshi")
///                     .resourceId("/subscriptions/96e68903-0a56-4819-9987-8d08ad6a1f99/resourceGroups/vasamudrRG/providers/Microsoft.OperationalInsights/workspaces/vasamudrWorkspace")
///                     .build(),
///                 ConnectionMonitorEndpointArgs.builder()
///                     .address("bing.com")
///                     .name("bing")
///                     .build(),
///                 ConnectionMonitorEndpointArgs.builder()
///                     .address("google.com")
///                     .name("google")
///                     .build())
///             .networkWatcherName("nw1")
///             .outputs()
///             .resourceGroupName("rg1")
///             .testConfigurations(ConnectionMonitorTestConfigurationArgs.builder()
///                 .name("testConfig1")
///                 .protocol("Tcp")
///                 .tcpConfiguration(ConnectionMonitorTcpConfigurationArgs.builder()
///                     .disableTraceRoute(false)
///                     .port(80)
///                     .build())
///                 .testFrequencySec(60)
///                 .build())
///             .testGroups(ConnectionMonitorTestGroupArgs.builder()
///                 .destinations(
///                     "bing",
///                     "google")
///                 .disable(false)
///                 .name("test1")
///                 .sources(
///                     "vm1",
///                     "CanaryWorkspaceVamshi")
///                 .testConfigurations("testConfig1")
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
/// const connectionMonitor = new azure_native.network.ConnectionMonitor("connectionMonitor", {
///     connectionMonitorName: "cm1",
///     endpoints: [
///         {
///             name: "vm1",
///             resourceId: "/subscriptions/96e68903-0a56-4819-9987-8d08ad6a1f99/resourceGroups/NwRgIrinaCentralUSEUAP/providers/Microsoft.Compute/virtualMachines/vm1",
///         },
///         {
///             filter: {
///                 items: [{
///                     address: "npmuser",
///                     type: azure_native.network.ConnectionMonitorEndpointFilterItemType.AgentAddress,
///                 }],
///                 type: azure_native.network.ConnectionMonitorEndpointFilterType.Include,
///             },
///             name: "CanaryWorkspaceVamshi",
///             resourceId: "/subscriptions/96e68903-0a56-4819-9987-8d08ad6a1f99/resourceGroups/vasamudrRG/providers/Microsoft.OperationalInsights/workspaces/vasamudrWorkspace",
///         },
///         {
///             address: "bing.com",
///             name: "bing",
///         },
///         {
///             address: "google.com",
///             name: "google",
///         },
///     ],
///     networkWatcherName: "nw1",
///     outputs: [],
///     resourceGroupName: "rg1",
///     testConfigurations: [{
///         name: "testConfig1",
///         protocol: azure_native.network.ConnectionMonitorTestConfigurationProtocol.Tcp,
///         tcpConfiguration: {
///             disableTraceRoute: false,
///             port: 80,
///         },
///         testFrequencySec: 60,
///     }],
///     testGroups: [{
///         destinations: [
///             "bing",
///             "google",
///         ],
///         disable: false,
///         name: "test1",
///         sources: [
///             "vm1",
///             "CanaryWorkspaceVamshi",
///         ],
///         testConfigurations: ["testConfig1"],
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connection_monitor = azure_native.network.ConnectionMonitor("connectionMonitor",
///     connection_monitor_name="cm1",
///     endpoints=[
///         {
///             "name": "vm1",
///             "resource_id": "/subscriptions/96e68903-0a56-4819-9987-8d08ad6a1f99/resourceGroups/NwRgIrinaCentralUSEUAP/providers/Microsoft.Compute/virtualMachines/vm1",
///         },
///         {
///             "filter": {
///                 "items": [{
///                     "address": "npmuser",
///                     "type": azure_native.network.ConnectionMonitorEndpointFilterItemType.AGENT_ADDRESS,
///                 }],
///                 "type": azure_native.network.ConnectionMonitorEndpointFilterType.INCLUDE,
///             },
///             "name": "CanaryWorkspaceVamshi",
///             "resource_id": "/subscriptions/96e68903-0a56-4819-9987-8d08ad6a1f99/resourceGroups/vasamudrRG/providers/Microsoft.OperationalInsights/workspaces/vasamudrWorkspace",
///         },
///         {
///             "address": "bing.com",
///             "name": "bing",
///         },
///         {
///             "address": "google.com",
///             "name": "google",
///         },
///     ],
///     network_watcher_name="nw1",
///     outputs=[],
///     resource_group_name="rg1",
///     test_configurations=[{
///         "name": "testConfig1",
///         "protocol": azure_native.network.ConnectionMonitorTestConfigurationProtocol.TCP,
///         "tcp_configuration": {
///             "disable_trace_route": False,
///             "port": 80,
///         },
///         "test_frequency_sec": 60,
///     }],
///     test_groups=[{
///         "destinations": [
///             "bing",
///             "google",
///         ],
///         "disable": False,
///         "name": "test1",
///         "sources": [
///             "vm1",
///             "CanaryWorkspaceVamshi",
///         ],
///         "test_configurations": ["testConfig1"],
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   connectionMonitor:
///     type: azure-native:network:ConnectionMonitor
///     properties:
///       connectionMonitorName: cm1
///       endpoints:
///         - name: vm1
///           resourceId: /subscriptions/96e68903-0a56-4819-9987-8d08ad6a1f99/resourceGroups/NwRgIrinaCentralUSEUAP/providers/Microsoft.Compute/virtualMachines/vm1
///         - filter:
///             items:
///               - address: npmuser
///                 type: AgentAddress
///             type: Include
///           name: CanaryWorkspaceVamshi
///           resourceId: /subscriptions/96e68903-0a56-4819-9987-8d08ad6a1f99/resourceGroups/vasamudrRG/providers/Microsoft.OperationalInsights/workspaces/vasamudrWorkspace
///         - address: bing.com
///           name: bing
///         - address: google.com
///           name: google
///       networkWatcherName: nw1
///       outputs: []
///       resourceGroupName: rg1
///       testConfigurations:
///         - name: testConfig1
///           protocol: Tcp
///           tcpConfiguration:
///             disableTraceRoute: false
///             port: 80
///           testFrequencySec: 60
///       testGroups:
///         - destinations:
///             - bing
///             - google
///           disable: false
///           name: test1
///           sources:
///             - vm1
///             - CanaryWorkspaceVamshi
///           testConfigurations:
///             - testConfig1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create connection monitor with Arc Network
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectionMonitor = new AzureNative.Network.ConnectionMonitor("connectionMonitor", new()
///     {
///         ConnectionMonitorName = "cm1",
///         Endpoints = new[]
///         {
///             new AzureNative.Network.Inputs.ConnectionMonitorEndpointArgs
///             {
///                 Name = "vm1",
///                 ResourceId = "/subscriptions/9cece3e3-0f7d-47ca-af0e-9772773f90b7/resourceGroups/testRG/providers/Microsoft.Compute/virtualMachines/TESTVM",
///                 Type = AzureNative.Network.EndpointType.AzureVM,
///             },
///             new AzureNative.Network.Inputs.ConnectionMonitorEndpointArgs
///             {
///                 Address = "bing.com",
///                 Name = "bing",
///                 Type = AzureNative.Network.EndpointType.ExternalAddress,
///             },
///             new AzureNative.Network.Inputs.ConnectionMonitorEndpointArgs
///             {
///                 Address = "google.com",
///                 Name = "google",
///                 Type = AzureNative.Network.EndpointType.ExternalAddress,
///             },
///             new AzureNative.Network.Inputs.ConnectionMonitorEndpointArgs
///             {
///                 LocationDetails = new AzureNative.Network.Inputs.ConnectionMonitorEndpointLocationDetailsArgs
///                 {
///                     Region = "eastus",
///                 },
///                 Name = "ArcBasedNetwork",
///                 Scope = new AzureNative.Network.Inputs.ConnectionMonitorEndpointScopeArgs
///                 {
///                     Include = new[]
///                     {
///                         new AzureNative.Network.Inputs.ConnectionMonitorEndpointScopeItemArgs
///                         {
///                             Address = "172.21.128.0/20",
///                         },
///                     },
///                 },
///                 SubscriptionId = "9cece3e3-0f7d-47ca-af0e-9772773f90b7",
///                 Type = AzureNative.Network.EndpointType.AzureArcNetwork,
///             },
///         },
///         NetworkWatcherName = "nw1",
///         Outputs = new[] {},
///         ResourceGroupName = "rg1",
///         TestConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.ConnectionMonitorTestConfigurationArgs
///             {
///                 Name = "testConfig1",
///                 Protocol = AzureNative.Network.ConnectionMonitorTestConfigurationProtocol.Tcp,
///                 TcpConfiguration = new AzureNative.Network.Inputs.ConnectionMonitorTcpConfigurationArgs
///                 {
///                     DisableTraceRoute = false,
///                     Port = 80,
///                 },
///                 TestFrequencySec = 60,
///             },
///         },
///         TestGroups = new[]
///         {
///             new AzureNative.Network.Inputs.ConnectionMonitorTestGroupArgs
///             {
///                 Destinations = new[]
///                 {
///                     "bing",
///                     "google",
///                 },
///                 Disable = false,
///                 Name = "test1",
///                 Sources = new[]
///                 {
///                     "vm1",
///                     "ArcBasedNetwork",
///                 },
///                 TestConfigurations = new[]
///                 {
///                     "testConfig1",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewConnectionMonitor(ctx, "connectionMonitor", &network.ConnectionMonitorArgs{
/// 			ConnectionMonitorName: pulumi.String("cm1"),
/// 			Endpoints: network.ConnectionMonitorEndpointArray{
/// 				&network.ConnectionMonitorEndpointArgs{
/// 					Name:       pulumi.String("vm1"),
/// 					ResourceId: pulumi.String("/subscriptions/9cece3e3-0f7d-47ca-af0e-9772773f90b7/resourceGroups/testRG/providers/Microsoft.Compute/virtualMachines/TESTVM"),
/// 					Type:       pulumi.String(network.EndpointTypeAzureVM),
/// 				},
/// 				&network.ConnectionMonitorEndpointArgs{
/// 					Address: pulumi.String("bing.com"),
/// 					Name:    pulumi.String("bing"),
/// 					Type:    pulumi.String(network.EndpointTypeExternalAddress),
/// 				},
/// 				&network.ConnectionMonitorEndpointArgs{
/// 					Address: pulumi.String("google.com"),
/// 					Name:    pulumi.String("google"),
/// 					Type:    pulumi.String(network.EndpointTypeExternalAddress),
/// 				},
/// 				&network.ConnectionMonitorEndpointArgs{
/// 					LocationDetails: &network.ConnectionMonitorEndpointLocationDetailsArgs{
/// 						Region: pulumi.String("eastus"),
/// 					},
/// 					Name: pulumi.String("ArcBasedNetwork"),
/// 					Scope: &network.ConnectionMonitorEndpointScopeArgs{
/// 						Include: network.ConnectionMonitorEndpointScopeItemArray{
/// 							&network.ConnectionMonitorEndpointScopeItemArgs{
/// 								Address: pulumi.String("172.21.128.0/20"),
/// 							},
/// 						},
/// 					},
/// 					SubscriptionId: pulumi.String("9cece3e3-0f7d-47ca-af0e-9772773f90b7"),
/// 					Type:           pulumi.String(network.EndpointTypeAzureArcNetwork),
/// 				},
/// 			},
/// 			NetworkWatcherName: pulumi.String("nw1"),
/// 			Outputs:            network.ConnectionMonitorOutputTypeArray{},
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			TestConfigurations: network.ConnectionMonitorTestConfigurationArray{
/// 				&network.ConnectionMonitorTestConfigurationArgs{
/// 					Name:     pulumi.String("testConfig1"),
/// 					Protocol: pulumi.String(network.ConnectionMonitorTestConfigurationProtocolTcp),
/// 					TcpConfiguration: &network.ConnectionMonitorTcpConfigurationArgs{
/// 						DisableTraceRoute: pulumi.Bool(false),
/// 						Port:              pulumi.Int(80),
/// 					},
/// 					TestFrequencySec: pulumi.Int(60),
/// 				},
/// 			},
/// 			TestGroups: network.ConnectionMonitorTestGroupArray{
/// 				&network.ConnectionMonitorTestGroupArgs{
/// 					Destinations: pulumi.StringArray{
/// 						pulumi.String("bing"),
/// 						pulumi.String("google"),
/// 					},
/// 					Disable: pulumi.Bool(false),
/// 					Name:    pulumi.String("test1"),
/// 					Sources: pulumi.StringArray{
/// 						pulumi.String("vm1"),
/// 						pulumi.String("ArcBasedNetwork"),
/// 					},
/// 					TestConfigurations: pulumi.StringArray{
/// 						pulumi.String("testConfig1"),
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
/// import com.pulumi.azurenative.network.ConnectionMonitor;
/// import com.pulumi.azurenative.network.ConnectionMonitorArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectionMonitorEndpointArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectionMonitorEndpointLocationDetailsArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectionMonitorEndpointScopeArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectionMonitorTestConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectionMonitorTcpConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectionMonitorTestGroupArgs;
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
///         var connectionMonitor = new ConnectionMonitor("connectionMonitor", ConnectionMonitorArgs.builder()
///             .connectionMonitorName("cm1")
///             .endpoints(
///                 ConnectionMonitorEndpointArgs.builder()
///                     .name("vm1")
///                     .resourceId("/subscriptions/9cece3e3-0f7d-47ca-af0e-9772773f90b7/resourceGroups/testRG/providers/Microsoft.Compute/virtualMachines/TESTVM")
///                     .type("AzureVM")
///                     .build(),
///                 ConnectionMonitorEndpointArgs.builder()
///                     .address("bing.com")
///                     .name("bing")
///                     .type("ExternalAddress")
///                     .build(),
///                 ConnectionMonitorEndpointArgs.builder()
///                     .address("google.com")
///                     .name("google")
///                     .type("ExternalAddress")
///                     .build(),
///                 ConnectionMonitorEndpointArgs.builder()
///                     .locationDetails(ConnectionMonitorEndpointLocationDetailsArgs.builder()
///                         .region("eastus")
///                         .build())
///                     .name("ArcBasedNetwork")
///                     .scope(ConnectionMonitorEndpointScopeArgs.builder()
///                         .include(ConnectionMonitorEndpointScopeItemArgs.builder()
///                             .address("172.21.128.0/20")
///                             .build())
///                         .build())
///                     .subscriptionId("9cece3e3-0f7d-47ca-af0e-9772773f90b7")
///                     .type("AzureArcNetwork")
///                     .build())
///             .networkWatcherName("nw1")
///             .outputs()
///             .resourceGroupName("rg1")
///             .testConfigurations(ConnectionMonitorTestConfigurationArgs.builder()
///                 .name("testConfig1")
///                 .protocol("Tcp")
///                 .tcpConfiguration(ConnectionMonitorTcpConfigurationArgs.builder()
///                     .disableTraceRoute(false)
///                     .port(80)
///                     .build())
///                 .testFrequencySec(60)
///                 .build())
///             .testGroups(ConnectionMonitorTestGroupArgs.builder()
///                 .destinations(
///                     "bing",
///                     "google")
///                 .disable(false)
///                 .name("test1")
///                 .sources(
///                     "vm1",
///                     "ArcBasedNetwork")
///                 .testConfigurations("testConfig1")
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
/// const connectionMonitor = new azure_native.network.ConnectionMonitor("connectionMonitor", {
///     connectionMonitorName: "cm1",
///     endpoints: [
///         {
///             name: "vm1",
///             resourceId: "/subscriptions/9cece3e3-0f7d-47ca-af0e-9772773f90b7/resourceGroups/testRG/providers/Microsoft.Compute/virtualMachines/TESTVM",
///             type: azure_native.network.EndpointType.AzureVM,
///         },
///         {
///             address: "bing.com",
///             name: "bing",
///             type: azure_native.network.EndpointType.ExternalAddress,
///         },
///         {
///             address: "google.com",
///             name: "google",
///             type: azure_native.network.EndpointType.ExternalAddress,
///         },
///         {
///             locationDetails: {
///                 region: "eastus",
///             },
///             name: "ArcBasedNetwork",
///             scope: {
///                 include: [{
///                     address: "172.21.128.0/20",
///                 }],
///             },
///             subscriptionId: "9cece3e3-0f7d-47ca-af0e-9772773f90b7",
///             type: azure_native.network.EndpointType.AzureArcNetwork,
///         },
///     ],
///     networkWatcherName: "nw1",
///     outputs: [],
///     resourceGroupName: "rg1",
///     testConfigurations: [{
///         name: "testConfig1",
///         protocol: azure_native.network.ConnectionMonitorTestConfigurationProtocol.Tcp,
///         tcpConfiguration: {
///             disableTraceRoute: false,
///             port: 80,
///         },
///         testFrequencySec: 60,
///     }],
///     testGroups: [{
///         destinations: [
///             "bing",
///             "google",
///         ],
///         disable: false,
///         name: "test1",
///         sources: [
///             "vm1",
///             "ArcBasedNetwork",
///         ],
///         testConfigurations: ["testConfig1"],
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connection_monitor = azure_native.network.ConnectionMonitor("connectionMonitor",
///     connection_monitor_name="cm1",
///     endpoints=[
///         {
///             "name": "vm1",
///             "resource_id": "/subscriptions/9cece3e3-0f7d-47ca-af0e-9772773f90b7/resourceGroups/testRG/providers/Microsoft.Compute/virtualMachines/TESTVM",
///             "type": azure_native.network.EndpointType.AZURE_VM,
///         },
///         {
///             "address": "bing.com",
///             "name": "bing",
///             "type": azure_native.network.EndpointType.EXTERNAL_ADDRESS,
///         },
///         {
///             "address": "google.com",
///             "name": "google",
///             "type": azure_native.network.EndpointType.EXTERNAL_ADDRESS,
///         },
///         {
///             "location_details": {
///                 "region": "eastus",
///             },
///             "name": "ArcBasedNetwork",
///             "scope": {
///                 "include": [{
///                     "address": "172.21.128.0/20",
///                 }],
///             },
///             "subscription_id": "9cece3e3-0f7d-47ca-af0e-9772773f90b7",
///             "type": azure_native.network.EndpointType.AZURE_ARC_NETWORK,
///         },
///     ],
///     network_watcher_name="nw1",
///     outputs=[],
///     resource_group_name="rg1",
///     test_configurations=[{
///         "name": "testConfig1",
///         "protocol": azure_native.network.ConnectionMonitorTestConfigurationProtocol.TCP,
///         "tcp_configuration": {
///             "disable_trace_route": False,
///             "port": 80,
///         },
///         "test_frequency_sec": 60,
///     }],
///     test_groups=[{
///         "destinations": [
///             "bing",
///             "google",
///         ],
///         "disable": False,
///         "name": "test1",
///         "sources": [
///             "vm1",
///             "ArcBasedNetwork",
///         ],
///         "test_configurations": ["testConfig1"],
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   connectionMonitor:
///     type: azure-native:network:ConnectionMonitor
///     properties:
///       connectionMonitorName: cm1
///       endpoints:
///         - name: vm1
///           resourceId: /subscriptions/9cece3e3-0f7d-47ca-af0e-9772773f90b7/resourceGroups/testRG/providers/Microsoft.Compute/virtualMachines/TESTVM
///           type: AzureVM
///         - address: bing.com
///           name: bing
///           type: ExternalAddress
///         - address: google.com
///           name: google
///           type: ExternalAddress
///         - locationDetails:
///             region: eastus
///           name: ArcBasedNetwork
///           scope:
///             include:
///               - address: 172.21.128.0/20
///           subscriptionId: 9cece3e3-0f7d-47ca-af0e-9772773f90b7
///           type: AzureArcNetwork
///       networkWatcherName: nw1
///       outputs: []
///       resourceGroupName: rg1
///       testConfigurations:
///         - name: testConfig1
///           protocol: Tcp
///           tcpConfiguration:
///             disableTraceRoute: false
///             port: 80
///           testFrequencySec: 60
///       testGroups:
///         - destinations:
///             - bing
///             - google
///           disable: false
///           name: test1
///           sources:
///             - vm1
///             - ArcBasedNetwork
///           testConfigurations:
///             - testConfig1
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
/// $ pulumi import azure-native:network:ConnectionMonitor cm1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkWatchers/{networkWatcherName}/connectionMonitors/{connectionMonitorName}
/// ```
class ConnectionMonitor extends pulumi.CustomResource {
  /// Determines if the connection monitor will start automatically once created.
  late final pulumi.Output<bool?> autoStart;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Type of connection monitor.
  late final pulumi.Output<String> connectionMonitorType;

  /// Describes the destination of connection monitor.
  late final pulumi.Output<ConnectionMonitorDestinationResponse?> destination;

  /// List of connection monitor endpoints.
  late final pulumi.Output<List<Map<String, dynamic>>?> endpoints;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// Connection monitor location.
  late final pulumi.Output<String?> location;

  /// Monitoring interval in seconds.
  late final pulumi.Output<int?> monitoringIntervalInSeconds;

  /// The monitoring status of the connection monitor.
  late final pulumi.Output<String> monitoringStatus;

  /// Name of the connection monitor.
  late final pulumi.Output<String> name;

  /// Optional notes to be associated with the connection monitor.
  late final pulumi.Output<String?> notes;

  /// List of connection monitor outputs.
  late final pulumi.Output<List<Map<String, dynamic>>?> outputs;

  /// The provisioning state of the connection monitor.
  late final pulumi.Output<String> provisioningState;

  /// Describes the source of connection monitor.
  late final pulumi.Output<ConnectionMonitorSourceResponse?> source;

  /// The date and time when the connection monitor was started.
  late final pulumi.Output<String> startTime;

  /// Connection monitor tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// List of connection monitor test configurations.
  late final pulumi.Output<List<Map<String, dynamic>>?> testConfigurations;

  /// List of connection monitor test groups.
  late final pulumi.Output<List<Map<String, dynamic>>?> testGroups;

  /// Connection monitor type.
  late final pulumi.Output<String> type;

  /// Creates a new [ConnectionMonitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionMonitor]. {@macro pulumi_network_connection_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionMonitor(
    String name, {
    ConnectionMonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:ConnectionMonitor',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoStart = registerOutput<bool?>('autoStart');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionMonitorType = registerOutput<String>('connectionMonitorType');
    destination = registerOutput<ConnectionMonitorDestinationResponse?>(
      'destination',
    );
    endpoints = registerOutput<List<Map<String, dynamic>>?>('endpoints');
    etag = registerOutput<String>('etag');
    location = registerOutput<String?>('location');
    monitoringIntervalInSeconds = registerOutput<int?>(
      'monitoringIntervalInSeconds',
    );
    monitoringStatus = registerOutput<String>('monitoringStatus');
    this.name = registerOutput<String>('name');
    notes = registerOutput<String?>('notes');
    outputs = registerOutput<List<Map<String, dynamic>>?>('outputs');
    provisioningState = registerOutput<String>('provisioningState');
    source = registerOutput<ConnectionMonitorSourceResponse?>('source');
    startTime = registerOutput<String>('startTime');
    tags = registerOutput<Map<String, String>?>('tags');
    testConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'testConfigurations',
    );
    testGroups = registerOutput<List<Map<String, dynamic>>?>('testGroups');
    type = registerOutput<String>('type');
  }
}
