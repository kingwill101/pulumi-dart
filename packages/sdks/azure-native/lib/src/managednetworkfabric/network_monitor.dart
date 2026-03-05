import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_monitor_args.dart';
import 'network_monitor_properties_response.dart';
import 'system_data_response.dart';

/// The NetworkMonitor resource definition.
///
/// Uses Azure REST API version 2024-06-15-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NetworkMonitors_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkMonitor = new AzureNative.ManagedNetworkFabric.NetworkMonitor("networkMonitor", new()
///     {
///         Location = "eastus",
///         NetworkMonitorName = "example-monitor",
///         Properties = new AzureNative.ManagedNetworkFabric.Inputs.NetworkMonitorPropertiesArgs
///         {
///             Annotation = "annotation",
///             BmpConfiguration = new AzureNative.ManagedNetworkFabric.Inputs.BmpConfigurationPropertiesArgs
///             {
///                 ExportPolicy = AzureNative.ManagedNetworkFabric.BmpExportPolicy.PrePolicy,
///                 MonitoredAddressFamilies = new[]
///                 {
///                     AzureNative.ManagedNetworkFabric.BmpMonitoredAddressFamily.Ipv4Unicast,
///                 },
///                 MonitoredNetworks = new[]
///                 {
///                     "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/example-l3domain",
///                 },
///                 ScopeResourceId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric",
///                 StationConfigurationState = AzureNative.ManagedNetworkFabric.StationConfigurationState.Enabled,
///                 StationConnectionMode = AzureNative.ManagedNetworkFabric.StationConnectionMode.Active,
///                 StationConnectionProperties = new AzureNative.ManagedNetworkFabric.Inputs.StationConnectionPropertiesArgs
///                 {
///                     KeepaliveIdleTime = 49,
///                     ProbeCount = 43,
///                     ProbeInterval = 3558,
///                 },
///                 StationIp = "10.0.0.1",
///                 StationName = "name",
///                 StationNetwork = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/example-l3domain/internalNetworks/example-internalnetwork",
///                 StationPort = 62695,
///             },
///         },
///         ResourceGroupName = "example-rg",
///         Tags =
///         {
///             { "key", "value" },
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
/// 	managednetworkfabric "github.com/pulumi/pulumi-azure-native-sdk/managednetworkfabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managednetworkfabric.NewNetworkMonitor(ctx, "networkMonitor", &managednetworkfabric.NetworkMonitorArgs{
/// 			Location:           pulumi.String("eastus"),
/// 			NetworkMonitorName: pulumi.String("example-monitor"),
/// 			Properties: &managednetworkfabric.NetworkMonitorPropertiesArgs{
/// 				Annotation: pulumi.String("annotation"),
/// 				BmpConfiguration: &managednetworkfabric.BmpConfigurationPropertiesArgs{
/// 					ExportPolicy: pulumi.String(managednetworkfabric.BmpExportPolicyPrePolicy),
/// 					MonitoredAddressFamilies: pulumi.StringArray{
/// 						pulumi.String(managednetworkfabric.BmpMonitoredAddressFamilyIpv4Unicast),
/// 					},
/// 					MonitoredNetworks: pulumi.StringArray{
/// 						pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/example-l3domain"),
/// 					},
/// 					ScopeResourceId:           pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric"),
/// 					StationConfigurationState: pulumi.String(managednetworkfabric.StationConfigurationStateEnabled),
/// 					StationConnectionMode:     pulumi.String(managednetworkfabric.StationConnectionModeActive),
/// 					StationConnectionProperties: &managednetworkfabric.StationConnectionPropertiesArgs{
/// 						KeepaliveIdleTime: pulumi.Int(49),
/// 						ProbeCount:        pulumi.Int(43),
/// 						ProbeInterval:     pulumi.Int(3558),
/// 					},
/// 					StationIp:      pulumi.String("10.0.0.1"),
/// 					StationName:    pulumi.String("name"),
/// 					StationNetwork: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/example-l3domain/internalNetworks/example-internalnetwork"),
/// 					StationPort:    pulumi.Int(62695),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("example-rg"),
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
/// import com.pulumi.azurenative.managednetworkfabric.NetworkMonitor;
/// import com.pulumi.azurenative.managednetworkfabric.NetworkMonitorArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.NetworkMonitorPropertiesArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.BmpConfigurationPropertiesArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.StationConnectionPropertiesArgs;
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
///         var networkMonitor = new NetworkMonitor("networkMonitor", NetworkMonitorArgs.builder()
///             .location("eastus")
///             .networkMonitorName("example-monitor")
///             .properties(NetworkMonitorPropertiesArgs.builder()
///                 .annotation("annotation")
///                 .bmpConfiguration(BmpConfigurationPropertiesArgs.builder()
///                     .exportPolicy("Pre-Policy")
///                     .monitoredAddressFamilies("ipv4Unicast")
///                     .monitoredNetworks("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/example-l3domain")
///                     .scopeResourceId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric")
///                     .stationConfigurationState("Enabled")
///                     .stationConnectionMode("Active")
///                     .stationConnectionProperties(StationConnectionPropertiesArgs.builder()
///                         .keepaliveIdleTime(49)
///                         .probeCount(43)
///                         .probeInterval(3558)
///                         .build())
///                     .stationIp("10.0.0.1")
///                     .stationName("name")
///                     .stationNetwork("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/example-l3domain/internalNetworks/example-internalnetwork")
///                     .stationPort(62695)
///                     .build())
///                 .build())
///             .resourceGroupName("example-rg")
///             .tags(Map.of("key", "value"))
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
/// const networkMonitor = new azure_native.managednetworkfabric.NetworkMonitor("networkMonitor", {
///     location: "eastus",
///     networkMonitorName: "example-monitor",
///     properties: {
///         annotation: "annotation",
///         bmpConfiguration: {
///             exportPolicy: azure_native.managednetworkfabric.BmpExportPolicy.PrePolicy,
///             monitoredAddressFamilies: [azure_native.managednetworkfabric.BmpMonitoredAddressFamily.Ipv4Unicast],
///             monitoredNetworks: ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/example-l3domain"],
///             scopeResourceId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric",
///             stationConfigurationState: azure_native.managednetworkfabric.StationConfigurationState.Enabled,
///             stationConnectionMode: azure_native.managednetworkfabric.StationConnectionMode.Active,
///             stationConnectionProperties: {
///                 keepaliveIdleTime: 49,
///                 probeCount: 43,
///                 probeInterval: 3558,
///             },
///             stationIp: "10.0.0.1",
///             stationName: "name",
///             stationNetwork: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/example-l3domain/internalNetworks/example-internalnetwork",
///             stationPort: 62695,
///         },
///     },
///     resourceGroupName: "example-rg",
///     tags: {
///         key: "value",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_monitor = azure_native.managednetworkfabric.NetworkMonitor("networkMonitor",
///     location="eastus",
///     network_monitor_name="example-monitor",
///     properties={
///         "annotation": "annotation",
///         "bmp_configuration": {
///             "export_policy": azure_native.managednetworkfabric.BmpExportPolicy.PRE_POLICY,
///             "monitored_address_families": [azure_native.managednetworkfabric.BmpMonitoredAddressFamily.IPV4_UNICAST],
///             "monitored_networks": ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/example-l3domain"],
///             "scope_resource_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric",
///             "station_configuration_state": azure_native.managednetworkfabric.StationConfigurationState.ENABLED,
///             "station_connection_mode": azure_native.managednetworkfabric.StationConnectionMode.ACTIVE,
///             "station_connection_properties": {
///                 "keepalive_idle_time": 49,
///                 "probe_count": 43,
///                 "probe_interval": 3558,
///             },
///             "station_ip": "10.0.0.1",
///             "station_name": "name",
///             "station_network": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/example-l3domain/internalNetworks/example-internalnetwork",
///             "station_port": 62695,
///         },
///     },
///     resource_group_name="example-rg",
///     tags={
///         "key": "value",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   networkMonitor:
///     type: azure-native:managednetworkfabric:NetworkMonitor
///     properties:
///       location: eastus
///       networkMonitorName: example-monitor
///       properties:
///         annotation: annotation
///         bmpConfiguration:
///           exportPolicy: Pre-Policy
///           monitoredAddressFamilies:
///             - ipv4Unicast
///           monitoredNetworks:
///             - /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/example-l3domain
///           scopeResourceId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric
///           stationConfigurationState: Enabled
///           stationConnectionMode: Active
///           stationConnectionProperties:
///             keepaliveIdleTime: 49
///             probeCount: 43
///             probeInterval: 3558
///           stationIp: 10.0.0.1
///           stationName: name
///           stationNetwork: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/example-l3domain/internalNetworks/example-internalnetwork
///           stationPort: 62695
///       resourceGroupName: example-rg
///       tags:
///         key: value
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
/// $ pulumi import azure-native:managednetworkfabric:NetworkMonitor example-monitor /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/networkMonitors/{networkMonitorName}
/// ```
class NetworkMonitor extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The NetworkFabric Properties
  late final pulumi.Output<NetworkMonitorPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkMonitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkMonitor]. {@macro pulumi_managednetworkfabric_network_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkMonitor(
    String name, {
    NetworkMonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:managednetworkfabric:NetworkMonitor',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<NetworkMonitorPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NetworkMonitorPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
