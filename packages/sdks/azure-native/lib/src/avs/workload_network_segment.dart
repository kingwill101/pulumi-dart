import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workload_network_segment_args.dart';
import 'workload_network_segment_port_vif_response.dart';
import 'workload_network_segment_subnet_response.dart';

/// NSX Segment
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkloadNetworks_CreateSegments
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workloadNetworkSegment = new AzureNative.AVS.WorkloadNetworkSegment("workloadNetworkSegment", new()
///     {
///         ConnectedGateway = "/infra/tier-1s/gateway",
///         DisplayName = "segment1",
///         PrivateCloudName = "cloud1",
///         ResourceGroupName = "group1",
///         Revision = 1,
///         SegmentId = "segment1",
///         Subnet = new AzureNative.AVS.Inputs.WorkloadNetworkSegmentSubnetArgs
///         {
///             DhcpRanges = new[]
///             {
///                 "40.20.0.0-40.20.0.1",
///             },
///             GatewayAddress = "40.20.20.20/16",
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
/// 	avs "github.com/pulumi/pulumi-azure-native-sdk/avs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := avs.NewWorkloadNetworkSegment(ctx, "workloadNetworkSegment", &avs.WorkloadNetworkSegmentArgs{
/// 			ConnectedGateway:  pulumi.String("/infra/tier-1s/gateway"),
/// 			DisplayName:       pulumi.String("segment1"),
/// 			PrivateCloudName:  pulumi.String("cloud1"),
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			Revision:          pulumi.Float64(1),
/// 			SegmentId:         pulumi.String("segment1"),
/// 			Subnet: &avs.WorkloadNetworkSegmentSubnetArgs{
/// 				DhcpRanges: pulumi.StringArray{
/// 					pulumi.String("40.20.0.0-40.20.0.1"),
/// 				},
/// 				GatewayAddress: pulumi.String("40.20.20.20/16"),
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
/// import com.pulumi.azurenative.avs.WorkloadNetworkSegment;
/// import com.pulumi.azurenative.avs.WorkloadNetworkSegmentArgs;
/// import com.pulumi.azurenative.avs.inputs.WorkloadNetworkSegmentSubnetArgs;
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
///         var workloadNetworkSegment = new WorkloadNetworkSegment("workloadNetworkSegment", WorkloadNetworkSegmentArgs.builder()
///             .connectedGateway("/infra/tier-1s/gateway")
///             .displayName("segment1")
///             .privateCloudName("cloud1")
///             .resourceGroupName("group1")
///             .revision(1.0)
///             .segmentId("segment1")
///             .subnet(WorkloadNetworkSegmentSubnetArgs.builder()
///                 .dhcpRanges("40.20.0.0-40.20.0.1")
///                 .gatewayAddress("40.20.20.20/16")
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
/// const workloadNetworkSegment = new azure_native.avs.WorkloadNetworkSegment("workloadNetworkSegment", {
///     connectedGateway: "/infra/tier-1s/gateway",
///     displayName: "segment1",
///     privateCloudName: "cloud1",
///     resourceGroupName: "group1",
///     revision: 1,
///     segmentId: "segment1",
///     subnet: {
///         dhcpRanges: ["40.20.0.0-40.20.0.1"],
///         gatewayAddress: "40.20.20.20/16",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_network_segment = azure_native.avs.WorkloadNetworkSegment("workloadNetworkSegment",
///     connected_gateway="/infra/tier-1s/gateway",
///     display_name="segment1",
///     private_cloud_name="cloud1",
///     resource_group_name="group1",
///     revision=1,
///     segment_id="segment1",
///     subnet={
///         "dhcp_ranges": ["40.20.0.0-40.20.0.1"],
///         "gateway_address": "40.20.20.20/16",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   workloadNetworkSegment:
///     type: azure-native:avs:WorkloadNetworkSegment
///     properties:
///       connectedGateway: /infra/tier-1s/gateway
///       displayName: segment1
///       privateCloudName: cloud1
///       resourceGroupName: group1
///       revision: 1
///       segmentId: segment1
///       subnet:
///         dhcpRanges:
///           - 40.20.0.0-40.20.0.1
///         gatewayAddress: 40.20.20.20/16
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
/// $ pulumi import azure-native:avs:WorkloadNetworkSegment segment1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/workloadNetworks/default/segments/{segmentId}
/// ```
class WorkloadNetworkSegment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gateway which to connect segment to.
  late final pulumi.Output<String?> connectedGateway;
  /// Display name of the segment.
  late final pulumi.Output<String?> displayName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Port Vif which segment is associated with.
  late final pulumi.Output<List<WorkloadNetworkSegmentPortVifResponse>> portVif;
  /// The provisioning state
  late final pulumi.Output<String> provisioningState;
  /// NSX revision number.
  late final pulumi.Output<double?> revision;
  /// Segment status.
  late final pulumi.Output<String> status;
  /// Subnet which to connect segment to.
  late final pulumi.Output<WorkloadNetworkSegmentSubnetResponse?> subnet;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkloadNetworkSegment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadNetworkSegment]. {@macro pulumi_avs_workload_network_segment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadNetworkSegment(
    String name, {
    WorkloadNetworkSegmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:WorkloadNetworkSegment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.connectedGateway = registerOutput<String?>('connectedGateway');
    this.displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    this.portVif = registerOutput<List<WorkloadNetworkSegmentPortVifResponse>>('portVif');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.revision = registerOutput<double?>('revision');
    this.status = registerOutput<String>('status');
    this.subnet = registerOutput<WorkloadNetworkSegmentSubnetResponse?>('subnet');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
