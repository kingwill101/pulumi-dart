import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workload_network_port_mirroring_args.dart';

/// NSX Port Mirroring
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkloadNetworks_CreatePortMirroring
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workloadNetworkPortMirroring = new AzureNative.AVS.WorkloadNetworkPortMirroring("workloadNetworkPortMirroring", new()
///     {
///         Destination = "vmGroup2",
///         Direction = AzureNative.AVS.PortMirroringDirectionEnum.BIDIRECTIONAL,
///         DisplayName = "portMirroring1",
///         PortMirroringId = "portMirroring1",
///         PrivateCloudName = "cloud1",
///         ResourceGroupName = "group1",
///         Revision = 1,
///         Source = "vmGroup1",
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
/// 		_, err := avs.NewWorkloadNetworkPortMirroring(ctx, "workloadNetworkPortMirroring", &avs.WorkloadNetworkPortMirroringArgs{
/// 			Destination:       pulumi.String("vmGroup2"),
/// 			Direction:         pulumi.String(avs.PortMirroringDirectionEnumBIDIRECTIONAL),
/// 			DisplayName:       pulumi.String("portMirroring1"),
/// 			PortMirroringId:   pulumi.String("portMirroring1"),
/// 			PrivateCloudName:  pulumi.String("cloud1"),
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			Revision:          pulumi.Float64(1),
/// 			Source:            pulumi.String("vmGroup1"),
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
/// import com.pulumi.azurenative.avs.WorkloadNetworkPortMirroring;
/// import com.pulumi.azurenative.avs.WorkloadNetworkPortMirroringArgs;
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
///         var workloadNetworkPortMirroring = new WorkloadNetworkPortMirroring("workloadNetworkPortMirroring", WorkloadNetworkPortMirroringArgs.builder()
///             .destination("vmGroup2")
///             .direction("BIDIRECTIONAL")
///             .displayName("portMirroring1")
///             .portMirroringId("portMirroring1")
///             .privateCloudName("cloud1")
///             .resourceGroupName("group1")
///             .revision(1.0)
///             .source("vmGroup1")
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
/// const workloadNetworkPortMirroring = new azure_native.avs.WorkloadNetworkPortMirroring("workloadNetworkPortMirroring", {
///     destination: "vmGroup2",
///     direction: azure_native.avs.PortMirroringDirectionEnum.BIDIRECTIONAL,
///     displayName: "portMirroring1",
///     portMirroringId: "portMirroring1",
///     privateCloudName: "cloud1",
///     resourceGroupName: "group1",
///     revision: 1,
///     source: "vmGroup1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_network_port_mirroring = azure_native.avs.WorkloadNetworkPortMirroring("workloadNetworkPortMirroring",
///     destination="vmGroup2",
///     direction=azure_native.avs.PortMirroringDirectionEnum.BIDIRECTIONAL,
///     display_name="portMirroring1",
///     port_mirroring_id="portMirroring1",
///     private_cloud_name="cloud1",
///     resource_group_name="group1",
///     revision=1,
///     source="vmGroup1")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadNetworkPortMirroring:
///     type: azure-native:avs:WorkloadNetworkPortMirroring
///     properties:
///       destination: vmGroup2
///       direction: BIDIRECTIONAL
///       displayName: portMirroring1
///       portMirroringId: portMirroring1
///       privateCloudName: cloud1
///       resourceGroupName: group1
///       revision: 1
///       source: vmGroup1
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
/// $ pulumi import azure-native:avs:WorkloadNetworkPortMirroring portMirroring1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/workloadNetworks/default/portMirroringProfiles/{portMirroringId}
/// ```
class WorkloadNetworkPortMirroring extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Destination VM Group.
  late final pulumi.Output<String?> destination;
  /// Direction of port mirroring profile.
  late final pulumi.Output<String?> direction;
  /// Display name of the port mirroring profile.
  late final pulumi.Output<String?> displayName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state
  late final pulumi.Output<String> provisioningState;
  /// NSX revision number.
  late final pulumi.Output<double?> revision;
  /// Source VM Group.
  late final pulumi.Output<String?> source;
  /// Port Mirroring Status.
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkloadNetworkPortMirroring].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadNetworkPortMirroring]. {@macro pulumi_avs_workload_network_port_mirroring_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadNetworkPortMirroring(
    String name, {
    WorkloadNetworkPortMirroringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:WorkloadNetworkPortMirroring',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    destination = registerOutput<String?>('destination');
    direction = registerOutput<String?>('direction');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    revision = registerOutput<double?>('revision');
    source = registerOutput<String?>('source');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
