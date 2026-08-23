import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workload_network_vmgroup_args.dart';

/// NSX VM Group
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkloadNetworks_CreateVMGroup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workloadNetworkVMGroup = new AzureNative.AVS.WorkloadNetworkVMGroup("workloadNetworkVMGroup", new()
///     {
///         DisplayName = "vmGroup1",
///         Members = new[]
///         {
///             "564d43da-fefc-2a3b-1d92-42855622fa50",
///         },
///         PrivateCloudName = "cloud1",
///         ResourceGroupName = "group1",
///         Revision = 1,
///         VmGroupId = "vmGroup1",
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
/// 		_, err := avs.NewWorkloadNetworkVMGroup(ctx, "workloadNetworkVMGroup", &avs.WorkloadNetworkVMGroupArgs{
/// 			DisplayName: pulumi.String("vmGroup1"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("564d43da-fefc-2a3b-1d92-42855622fa50"),
/// 			},
/// 			PrivateCloudName:  pulumi.String("cloud1"),
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			Revision:          pulumi.Float64(1),
/// 			VmGroupId:         pulumi.String("vmGroup1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_avs_workloadnetworkvmgroup" "workloadNetworkVMGroup" {
///   display_name        = "vmGroup1"
///   members             = ["564d43da-fefc-2a3b-1d92-42855622fa50"]
///   private_cloud_name  = "cloud1"
///   resource_group_name = "group1"
///   revision            = 1
///   vm_group_id         = "vmGroup1"
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
/// import com.pulumi.azurenative.avs.WorkloadNetworkVMGroup;
/// import com.pulumi.azurenative.avs.WorkloadNetworkVMGroupArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var workloadNetworkVMGroup = new WorkloadNetworkVMGroup("workloadNetworkVMGroup", WorkloadNetworkVMGroupArgs.builder()
///             .displayName("vmGroup1")
///             .members("564d43da-fefc-2a3b-1d92-42855622fa50")
///             .privateCloudName("cloud1")
///             .resourceGroupName("group1")
///             .revision(1.0)
///             .vmGroupId("vmGroup1")
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
/// const workloadNetworkVMGroup = new azure_native.avs.WorkloadNetworkVMGroup("workloadNetworkVMGroup", {
///     displayName: "vmGroup1",
///     members: ["564d43da-fefc-2a3b-1d92-42855622fa50"],
///     privateCloudName: "cloud1",
///     resourceGroupName: "group1",
///     revision: 1,
///     vmGroupId: "vmGroup1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_network_vm_group = azure_native.avs.WorkloadNetworkVMGroup("workloadNetworkVMGroup",
///     display_name="vmGroup1",
///     members=["564d43da-fefc-2a3b-1d92-42855622fa50"],
///     private_cloud_name="cloud1",
///     resource_group_name="group1",
///     revision=float(1),
///     vm_group_id="vmGroup1")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadNetworkVMGroup:
///     type: azure-native:avs:WorkloadNetworkVMGroup
///     properties:
///       displayName: vmGroup1
///       members:
///         - 564d43da-fefc-2a3b-1d92-42855622fa50
///       privateCloudName: cloud1
///       resourceGroupName: group1
///       revision: 1
///       vmGroupId: vmGroup1
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
/// $ pulumi import azure-native:avs:WorkloadNetworkVMGroup vmGroup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/workloadNetworks/default/vmGroups/{vmGroupId}
/// ```
class WorkloadNetworkVMGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Display name of the VM group.
  late final pulumi.Output<String?> displayName;
  /// Virtual machine members of this group.
  late final pulumi.Output<List<String>?> members;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state
  late final pulumi.Output<String> provisioningState;
  /// NSX revision number.
  late final pulumi.Output<double?> revision;
  /// VM Group status.
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkloadNetworkVMGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadNetworkVMGroup]. {@macro pulumi_avs_workload_network_vmgroup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadNetworkVMGroup(
    String name, {
    WorkloadNetworkVMGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:WorkloadNetworkVMGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String?>('displayName');
    members = registerOutput<List<String>?>('members');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    revision = registerOutput<double?>('revision');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
