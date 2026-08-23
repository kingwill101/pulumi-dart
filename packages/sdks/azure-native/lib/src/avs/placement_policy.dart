import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_policy_args.dart';
import 'system_data_response.dart';
import 'vm_host_placement_policy_properties_response.dart';

/// A vSphere Distributed Resource Scheduler (DRS) placement policy
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PlacementPolicies_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var placementPolicy = new AzureNative.AVS.PlacementPolicy("placementPolicy", new()
///     {
///         ClusterName = "cluster1",
///         PlacementPolicyName = "policy1",
///         PrivateCloudName = "cloud1",
///         Properties = new AzureNative.AVS.Inputs.VmHostPlacementPolicyPropertiesArgs
///         {
///             AffinityStrength = AzureNative.AVS.AffinityStrength.Must,
///             AffinityType = AzureNative.AVS.AffinityType.AntiAffinity,
///             AzureHybridBenefitType = AzureNative.AVS.AzureHybridBenefitType.SqlHost,
///             HostMembers = new[]
///             {
///                 "fakehost22.nyc1.kubernetes.center",
///                 "fakehost23.nyc1.kubernetes.center",
///                 "fakehost24.nyc1.kubernetes.center",
///             },
///             Type = "VmHost",
///             VmMembers = new[]
///             {
///                 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/clusters/cluster1/virtualMachines/vm-128",
///                 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/clusters/cluster1/virtualMachines/vm-256",
///             },
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
/// 		_, err := avs.NewPlacementPolicy(ctx, "placementPolicy", &avs.PlacementPolicyArgs{
/// 			ClusterName:         pulumi.String("cluster1"),
/// 			PlacementPolicyName: pulumi.String("policy1"),
/// 			PrivateCloudName:    pulumi.String("cloud1"),
/// 			Properties: &avs.VmHostPlacementPolicyPropertiesArgs{
/// 				AffinityStrength:       pulumi.String(avs.AffinityStrengthMust),
/// 				AffinityType:           pulumi.String(avs.AffinityTypeAntiAffinity),
/// 				AzureHybridBenefitType: pulumi.String(avs.AzureHybridBenefitTypeSqlHost),
/// 				HostMembers: pulumi.StringArray{
/// 					pulumi.String("fakehost22.nyc1.kubernetes.center"),
/// 					pulumi.String("fakehost23.nyc1.kubernetes.center"),
/// 					pulumi.String("fakehost24.nyc1.kubernetes.center"),
/// 				},
/// 				Type: pulumi.String("VmHost"),
/// 				VmMembers: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/clusters/cluster1/virtualMachines/vm-128"),
/// 					pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/clusters/cluster1/virtualMachines/vm-256"),
/// 				},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_avs_placementpolicy" "placementPolicy" {
///   cluster_name          = "cluster1"
///   placement_policy_name = "policy1"
///   private_cloud_name    = "cloud1"
///   properties = {
///     "affinityStrength"       = "Must"
///     "affinityType"           = "AntiAffinity"
///     "azureHybridBenefitType" = "SqlHost"
///     "hostMembers"            = ["fakehost22.nyc1.kubernetes.center", "fakehost23.nyc1.kubernetes.center", "fakehost24.nyc1.kubernetes.center"]
///     "type"                   = "VmHost"
///     "vmMembers"              = ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/clusters/cluster1/virtualMachines/vm-128", "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/clusters/cluster1/virtualMachines/vm-256"]
///   }
///   resource_group_name = "group1"
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
/// import com.pulumi.azurenative.avs.PlacementPolicy;
/// import com.pulumi.azurenative.avs.PlacementPolicyArgs;
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
///         var placementPolicy = new PlacementPolicy("placementPolicy", PlacementPolicyArgs.builder()
///             .clusterName("cluster1")
///             .placementPolicyName("policy1")
///             .privateCloudName("cloud1")
///             .properties(VmHostPlacementPolicyPropertiesArgs.builder()
///                 .affinityStrength("Must")
///                 .affinityType("AntiAffinity")
///                 .azureHybridBenefitType("SqlHost")
///                 .hostMembers(
///                     "fakehost22.nyc1.kubernetes.center",
///                     "fakehost23.nyc1.kubernetes.center",
///                     "fakehost24.nyc1.kubernetes.center")
///                 .type("VmHost")
///                 .vmMembers(
///                     "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/clusters/cluster1/virtualMachines/vm-128",
///                     "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/clusters/cluster1/virtualMachines/vm-256")
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
/// const placementPolicy = new azure_native.avs.PlacementPolicy("placementPolicy", {
///     clusterName: "cluster1",
///     placementPolicyName: "policy1",
///     privateCloudName: "cloud1",
///     properties: {
///         affinityStrength: azure_native.avs.AffinityStrength.Must,
///         affinityType: azure_native.avs.AffinityType.AntiAffinity,
///         azureHybridBenefitType: azure_native.avs.AzureHybridBenefitType.SqlHost,
///         hostMembers: [
///             "fakehost22.nyc1.kubernetes.center",
///             "fakehost23.nyc1.kubernetes.center",
///             "fakehost24.nyc1.kubernetes.center",
///         ],
///         type: "VmHost",
///         vmMembers: [
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/clusters/cluster1/virtualMachines/vm-128",
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/clusters/cluster1/virtualMachines/vm-256",
///         ],
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
/// placement_policy = azure_native.avs.PlacementPolicy("placementPolicy",
///     cluster_name="cluster1",
///     placement_policy_name="policy1",
///     private_cloud_name="cloud1",
///     properties={
///         "affinity_strength": azure_native.avs.AffinityStrength.MUST,
///         "affinity_type": azure_native.avs.AffinityType.ANTI_AFFINITY,
///         "azure_hybrid_benefit_type": azure_native.avs.AzureHybridBenefitType.SQL_HOST,
///         "host_members": [
///             "fakehost22.nyc1.kubernetes.center",
///             "fakehost23.nyc1.kubernetes.center",
///             "fakehost24.nyc1.kubernetes.center",
///         ],
///         "type": "VmHost",
///         "vm_members": [
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/clusters/cluster1/virtualMachines/vm-128",
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/clusters/cluster1/virtualMachines/vm-256",
///         ],
///     },
///     resource_group_name="group1")
///
/// ```
///
/// ```yaml
/// resources:
///   placementPolicy:
///     type: azure-native:avs:PlacementPolicy
///     properties:
///       clusterName: cluster1
///       placementPolicyName: policy1
///       privateCloudName: cloud1
///       properties:
///         affinityStrength: Must
///         affinityType: AntiAffinity
///         azureHybridBenefitType: SqlHost
///         hostMembers:
///           - fakehost22.nyc1.kubernetes.center
///           - fakehost23.nyc1.kubernetes.center
///           - fakehost24.nyc1.kubernetes.center
///         type: VmHost
///         vmMembers:
///           - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/clusters/cluster1/virtualMachines/vm-128
///           - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/cloud1/clusters/cluster1/virtualMachines/vm-256
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
/// $ pulumi import azure-native:avs:PlacementPolicy policy1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/clusters/{clusterName}/placementPolicies/{placementPolicyName}
/// ```
class PlacementPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<VmHostPlacementPolicyPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PlacementPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PlacementPolicy]. {@macro pulumi_avs_placement_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PlacementPolicy(
    String name, {
    PlacementPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:PlacementPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<VmHostPlacementPolicyPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VmHostPlacementPolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
