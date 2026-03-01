import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workload_network_dhcp_args.dart';
import 'workload_network_dhcp_relay_response.dart';

/// NSX DHCP
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkloadNetworks_CreateDhcp
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workloadNetworkDhcp = new AzureNative.AVS.WorkloadNetworkDhcp("workloadNetworkDhcp", new()
///     {
///         DhcpId = "dhcp1",
///         PrivateCloudName = "cloud1",
///         Properties = new AzureNative.AVS.Inputs.WorkloadNetworkDhcpServerArgs
///         {
///             DhcpType = "SERVER",
///             DisplayName = "dhcpConfigurations1",
///             LeaseTime = 86400,
///             Revision = 1,
///             ServerAddress = "40.1.5.1/24",
///         },
///         ResourceGroupName = "group1",
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
/// 	avs "github.com/pulumi/pulumi-azure-native-sdk/avs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := avs.NewWorkloadNetworkDhcp(ctx, "workloadNetworkDhcp", &avs.WorkloadNetworkDhcpArgs{
/// 			DhcpId:           pulumi.String("dhcp1"),
/// 			PrivateCloudName: pulumi.String("cloud1"),
/// 			Properties: &avs.WorkloadNetworkDhcpServerArgs{
/// 				DhcpType:      pulumi.String("SERVER"),
/// 				DisplayName:   pulumi.String("dhcpConfigurations1"),
/// 				LeaseTime:     pulumi.Float64(86400),
/// 				Revision:      pulumi.Float64(1),
/// 				ServerAddress: pulumi.String("40.1.5.1/24"),
/// 			},
/// 			ResourceGroupName: pulumi.String("group1"),
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
/// import com.pulumi.azurenative.avs.WorkloadNetworkDhcp;
/// import com.pulumi.azurenative.avs.WorkloadNetworkDhcpArgs;
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
///         var workloadNetworkDhcp = new WorkloadNetworkDhcp("workloadNetworkDhcp", WorkloadNetworkDhcpArgs.builder()
///             .dhcpId("dhcp1")
///             .privateCloudName("cloud1")
///             .properties(WorkloadNetworkDhcpServerArgs.builder()
///                 .dhcpType("SERVER")
///                 .displayName("dhcpConfigurations1")
///                 .leaseTime(86400.0)
///                 .revision(1.0)
///                 .serverAddress("40.1.5.1/24")
///                 .build())
///             .resourceGroupName("group1")
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
/// const workloadNetworkDhcp = new azure_native.avs.WorkloadNetworkDhcp("workloadNetworkDhcp", {
///     dhcpId: "dhcp1",
///     privateCloudName: "cloud1",
///     properties: {
///         dhcpType: "SERVER",
///         displayName: "dhcpConfigurations1",
///         leaseTime: 86400,
///         revision: 1,
///         serverAddress: "40.1.5.1/24",
///     },
///     resourceGroupName: "group1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_network_dhcp = azure_native.avs.WorkloadNetworkDhcp("workloadNetworkDhcp",
///     dhcp_id="dhcp1",
///     private_cloud_name="cloud1",
///     properties={
///         "dhcp_type": "SERVER",
///         "display_name": "dhcpConfigurations1",
///         "lease_time": 86400,
///         "revision": 1,
///         "server_address": "40.1.5.1/24",
///     },
///     resource_group_name="group1")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadNetworkDhcp:
///     type: azure-native:avs:WorkloadNetworkDhcp
///     properties:
///       dhcpId: dhcp1
///       privateCloudName: cloud1
///       properties:
///         dhcpType: SERVER
///         displayName: dhcpConfigurations1
///         leaseTime: 86400
///         revision: 1
///         serverAddress: 40.1.5.1/24
///       resourceGroupName: group1
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
/// $ pulumi import azure-native:avs:WorkloadNetworkDhcp dhcp1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/workloadNetworks/default/dhcpConfigurations/{dhcpId}
/// ```
class WorkloadNetworkDhcp extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<WorkloadNetworkDhcpRelayResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkloadNetworkDhcp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadNetworkDhcp]. {@macro pulumi_avs_workload_network_dhcp_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadNetworkDhcp(
    String name, {
    WorkloadNetworkDhcpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:WorkloadNetworkDhcp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<WorkloadNetworkDhcpRelayResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
