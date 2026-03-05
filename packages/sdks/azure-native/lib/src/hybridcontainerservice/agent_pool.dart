import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_pool_args.dart';
import 'agent_pool_provisioning_status_response_status.dart';
import 'agent_pool_response_extended_location.dart';
import 'cloud_provider_profile_response.dart';
import 'system_data_response.dart';

/// The agentPool resource definition
///
/// Uses Azure REST API version 2022-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutAgentPool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.HybridContainerService.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "test-hybridaksnodepool",
///         Count = 1,
///         Location = "westus",
///         OsType = AzureNative.HybridContainerService.OsType.Linux,
///         ResourceGroupName = "test-arcappliance-resgrp",
///         ResourceName = "test-hybridakscluster",
///         VmSize = "Standard_A4_v2",
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
/// 	hybridcontainerservice "github.com/pulumi/pulumi-azure-native-sdk/hybridcontainerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcontainerservice.NewAgentPool(ctx, "agentPool", &hybridcontainerservice.AgentPoolArgs{
/// 			AgentPoolName:     pulumi.String("test-hybridaksnodepool"),
/// 			Count:             pulumi.Int(1),
/// 			Location:          pulumi.String("westus"),
/// 			OsType:            pulumi.String(hybridcontainerservice.OsTypeLinux),
/// 			ResourceGroupName: pulumi.String("test-arcappliance-resgrp"),
/// 			ResourceName:      pulumi.String("test-hybridakscluster"),
/// 			VmSize:            pulumi.String("Standard_A4_v2"),
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
/// import com.pulumi.azurenative.hybridcontainerservice.AgentPool;
/// import com.pulumi.azurenative.hybridcontainerservice.AgentPoolArgs;
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
///             .agentPoolName("test-hybridaksnodepool")
///             .count(1)
///             .location("westus")
///             .osType("Linux")
///             .resourceGroupName("test-arcappliance-resgrp")
///             .resourceName("test-hybridakscluster")
///             .vmSize("Standard_A4_v2")
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
/// const agentPool = new azure_native.hybridcontainerservice.AgentPool("agentPool", {
///     agentPoolName: "test-hybridaksnodepool",
///     count: 1,
///     location: "westus",
///     osType: azure_native.hybridcontainerservice.OsType.Linux,
///     resourceGroupName: "test-arcappliance-resgrp",
///     resourceName: "test-hybridakscluster",
///     vmSize: "Standard_A4_v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.hybridcontainerservice.AgentPool("agentPool",
///     agent_pool_name="test-hybridaksnodepool",
///     count=1,
///     location="westus",
///     os_type=azure_native.hybridcontainerservice.OsType.LINUX,
///     resource_group_name="test-arcappliance-resgrp",
///     resource_name_="test-hybridakscluster",
///     vm_size="Standard_A4_v2")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:hybridcontainerservice:AgentPool
///     properties:
///       agentPoolName: test-hybridaksnodepool
///       count: 1
///       location: westus
///       osType: Linux
///       resourceGroupName: test-arcappliance-resgrp
///       resourceName: test-hybridakscluster
///       vmSize: Standard_A4_v2
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
/// $ pulumi import azure-native:hybridcontainerservice:AgentPool test-hybridaksnodepool /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridContainerService/provisionedClusters/{resourceName}/agentPools/{agentPoolName}
/// ```
class AgentPool extends pulumi.CustomResource {
  /// AvailabilityZones - The list of Availability zones to use for nodes. Datacenter racks modelled as zones
  late final pulumi.Output<List<String>?> availabilityZones;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The underlying cloud infra provider properties.
  late final pulumi.Output<CloudProviderProfileResponse?> cloudProviderProfile;

  /// Count - Number of agents to host docker containers. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.
  late final pulumi.Output<int?> count;
  late final pulumi.Output<AgentPoolResponseExtendedLocation?> extendedLocation;

  /// The resource location
  late final pulumi.Output<String?> location;

  /// The maximum number of nodes for auto-scaling
  late final pulumi.Output<int?> maxCount;

  /// The maximum number of pods that can run on a node.
  late final pulumi.Output<int?> maxPods;

  /// The minimum number of nodes for auto-scaling
  late final pulumi.Output<int?> minCount;

  /// Mode - AgentPoolMode represents mode of an agent pool. Possible values include: 'System', 'LB', 'User'. Default is 'User'
  late final pulumi.Output<String?> mode;

  /// Resource Name
  late final pulumi.Output<String> name;

  /// The version of node image
  late final pulumi.Output<String?> nodeImageVersion;

  /// NodeLabels - Agent pool node labels to be persisted across all nodes in agent pool.
  late final pulumi.Output<Map<String, String>?> nodeLabels;

  /// NodeTaints - Taints added to new nodes during node pool create and scale. For example, key=value:NoSchedule.
  late final pulumi.Output<List<String>?> nodeTaints;

  /// OsType - OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux. Possible values include: 'Linux', 'Windows'
  late final pulumi.Output<String?> osType;
  late final pulumi.Output<String> provisioningState;

  /// HybridAKSNodePoolStatus defines the observed state of HybridAKSNodePool
  late final pulumi.Output<AgentPoolProvisioningStatusResponseStatus?> status;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource Type
  late final pulumi.Output<String> type;

  /// VmSize - The size of the agent pool VMs.
  late final pulumi.Output<String?> vmSize;

  /// Creates a new [AgentPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentPool]. {@macro pulumi_hybridcontainerservice_agent_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentPool(
    String name, {
    AgentPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridcontainerservice:AgentPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    availabilityZones = registerOutput<List<String>?>('availabilityZones');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudProviderProfile = registerOutput<CloudProviderProfileResponse?>(
      'cloudProviderProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CloudProviderProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    count = registerOutput<int?>('count');
    extendedLocation = registerOutput<AgentPoolResponseExtendedLocation?>(
      'extendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AgentPoolResponseExtendedLocation.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String?>('location');
    maxCount = registerOutput<int?>('maxCount');
    maxPods = registerOutput<int?>('maxPods');
    minCount = registerOutput<int?>('minCount');
    mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    nodeImageVersion = registerOutput<String?>('nodeImageVersion');
    nodeLabels = registerOutput<Map<String, String>?>('nodeLabels');
    nodeTaints = registerOutput<List<String>?>('nodeTaints');
    osType = registerOutput<String?>('osType');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<AgentPoolProvisioningStatusResponseStatus?>(
      'status',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AgentPoolProvisioningStatusResponseStatus.fromMap(
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
    vmSize = registerOutput<String?>('vmSize');
  }
}
