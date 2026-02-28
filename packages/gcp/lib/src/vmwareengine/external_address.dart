import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_address_args.dart';

/// An allocated external IP address and its corresponding internal IP address in a private cloud.
///
///
/// To get more information about ExternalAddress, see:
///
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.externalAddresses)
///
/// ## Example Usage
///
/// ### Vmware Engine External Address Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const external_address_nw = new gcp.vmwareengine.Network("external-address-nw", {
///     name: "pc-nw",
///     location: "global",
///     type: "STANDARD",
///     description: "PC network description.",
/// });
/// const external_address_pc = new gcp.vmwareengine.PrivateCloud("external-address-pc", {
///     location: "us-west1-a",
///     name: "sample-pc",
///     description: "Sample test PC.",
///     networkConfig: {
///         managementCidr: "192.168.50.0/24",
///         vmwareEngineNetwork: external_address_nw.id,
///     },
///     managementCluster: {
///         clusterId: "sample-mgmt-cluster",
///         nodeTypeConfigs: [{
///             nodeTypeId: "standard-72",
///             nodeCount: 3,
///         }],
///     },
/// });
/// const external_address_np = new gcp.vmwareengine.NetworkPolicy("external-address-np", {
///     location: "us-west1",
///     name: "sample-np",
///     edgeServicesCidr: "192.168.30.0/26",
///     vmwareEngineNetwork: external_address_nw.id,
/// });
/// const vmw_engine_external_address = new gcp.vmwareengine.ExternalAddress("vmw-engine-external-address", {
///     name: "sample-external-address",
///     parent: external_address_pc.id,
///     internalIp: "192.168.0.66",
///     description: "Sample description.",
/// }, {
///     dependsOn: [external_address_np],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// external_address_nw = gcp.vmwareengine.Network("external-address-nw",
///     name="pc-nw",
///     location="global",
///     type="STANDARD",
///     description="PC network description.")
/// external_address_pc = gcp.vmwareengine.PrivateCloud("external-address-pc",
///     location="us-west1-a",
///     name="sample-pc",
///     description="Sample test PC.",
///     network_config={
///         "management_cidr": "192.168.50.0/24",
///         "vmware_engine_network": external_address_nw.id,
///     },
///     management_cluster={
///         "cluster_id": "sample-mgmt-cluster",
///         "node_type_configs": [{
///             "node_type_id": "standard-72",
///             "node_count": 3,
///         }],
///     })
/// external_address_np = gcp.vmwareengine.NetworkPolicy("external-address-np",
///     location="us-west1",
///     name="sample-np",
///     edge_services_cidr="192.168.30.0/26",
///     vmware_engine_network=external_address_nw.id)
/// vmw_engine_external_address = gcp.vmwareengine.ExternalAddress("vmw-engine-external-address",
///     name="sample-external-address",
///     parent=external_address_pc.id,
///     internal_ip="192.168.0.66",
///     description="Sample description.",
///     opts = pulumi.ResourceOptions(depends_on=[external_address_np]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var external_address_nw = new Gcp.VMwareEngine.Network("external-address-nw", new()
///     {
///         Name = "pc-nw",
///         Location = "global",
///         Type = "STANDARD",
///         Description = "PC network description.",
///     });
///
///     var external_address_pc = new Gcp.VMwareEngine.PrivateCloud("external-address-pc", new()
///     {
///         Location = "us-west1-a",
///         Name = "sample-pc",
///         Description = "Sample test PC.",
///         NetworkConfig = new Gcp.VMwareEngine.Inputs.PrivateCloudNetworkConfigArgs
///         {
///             ManagementCidr = "192.168.50.0/24",
///             VmwareEngineNetwork = external_address_nw.Id,
///         },
///         ManagementCluster = new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterArgs
///         {
///             ClusterId = "sample-mgmt-cluster",
///             NodeTypeConfigs = new[]
///             {
///                 new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterNodeTypeConfigArgs
///                 {
///                     NodeTypeId = "standard-72",
///                     NodeCount = 3,
///                 },
///             },
///         },
///     });
///
///     var external_address_np = new Gcp.VMwareEngine.NetworkPolicy("external-address-np", new()
///     {
///         Location = "us-west1",
///         Name = "sample-np",
///         EdgeServicesCidr = "192.168.30.0/26",
///         VmwareEngineNetwork = external_address_nw.Id,
///     });
///
///     var vmw_engine_external_address = new Gcp.VMwareEngine.ExternalAddress("vmw-engine-external-address", new()
///     {
///         Name = "sample-external-address",
///         Parent = external_address_pc.Id,
///         InternalIp = "192.168.0.66",
///         Description = "Sample description.",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             external_address_np,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		external_address_nw, err := vmwareengine.NewNetwork(ctx, "external-address-nw", &vmwareengine.NetworkArgs{
/// 			Name:        pulumi.String("pc-nw"),
/// 			Location:    pulumi.String("global"),
/// 			Type:        pulumi.String("STANDARD"),
/// 			Description: pulumi.String("PC network description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		external_address_pc, err := vmwareengine.NewPrivateCloud(ctx, "external-address-pc", &vmwareengine.PrivateCloudArgs{
/// 			Location:    pulumi.String("us-west1-a"),
/// 			Name:        pulumi.String("sample-pc"),
/// 			Description: pulumi.String("Sample test PC."),
/// 			NetworkConfig: &vmwareengine.PrivateCloudNetworkConfigArgs{
/// 				ManagementCidr:      pulumi.String("192.168.50.0/24"),
/// 				VmwareEngineNetwork: external_address_nw.ID(),
/// 			},
/// 			ManagementCluster: &vmwareengine.PrivateCloudManagementClusterArgs{
/// 				ClusterId: pulumi.String("sample-mgmt-cluster"),
/// 				NodeTypeConfigs: vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArray{
/// 					&vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArgs{
/// 						NodeTypeId: pulumi.String("standard-72"),
/// 						NodeCount:  pulumi.Int(3),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		external_address_np, err := vmwareengine.NewNetworkPolicy(ctx, "external-address-np", &vmwareengine.NetworkPolicyArgs{
/// 			Location:            pulumi.String("us-west1"),
/// 			Name:                pulumi.String("sample-np"),
/// 			EdgeServicesCidr:    pulumi.String("192.168.30.0/26"),
/// 			VmwareEngineNetwork: external_address_nw.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vmwareengine.NewExternalAddress(ctx, "vmw-engine-external-address", &vmwareengine.ExternalAddressArgs{
/// 			Name:        pulumi.String("sample-external-address"),
/// 			Parent:      external_address_pc.ID(),
/// 			InternalIp:  pulumi.String("192.168.0.66"),
/// 			Description: pulumi.String("Sample description."),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			external_address_np,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.Network;
/// import com.pulumi.gcp.vmwareengine.NetworkArgs;
/// import com.pulumi.gcp.vmwareengine.PrivateCloud;
/// import com.pulumi.gcp.vmwareengine.PrivateCloudArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudNetworkConfigArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterArgs;
/// import com.pulumi.gcp.vmwareengine.NetworkPolicy;
/// import com.pulumi.gcp.vmwareengine.NetworkPolicyArgs;
/// import com.pulumi.gcp.vmwareengine.ExternalAddress;
/// import com.pulumi.gcp.vmwareengine.ExternalAddressArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var external_address_nw = new Network("external-address-nw", NetworkArgs.builder()
///             .name("pc-nw")
///             .location("global")
///             .type("STANDARD")
///             .description("PC network description.")
///             .build());
///
///         var external_address_pc = new PrivateCloud("external-address-pc", PrivateCloudArgs.builder()
///             .location("us-west1-a")
///             .name("sample-pc")
///             .description("Sample test PC.")
///             .networkConfig(PrivateCloudNetworkConfigArgs.builder()
///                 .managementCidr("192.168.50.0/24")
///                 .vmwareEngineNetwork(external_address_nw.id())
///                 .build())
///             .managementCluster(PrivateCloudManagementClusterArgs.builder()
///                 .clusterId("sample-mgmt-cluster")
///                 .nodeTypeConfigs(PrivateCloudManagementClusterNodeTypeConfigArgs.builder()
///                     .nodeTypeId("standard-72")
///                     .nodeCount(3)
///                     .build())
///                 .build())
///             .build());
///
///         var external_address_np = new NetworkPolicy("external-address-np", NetworkPolicyArgs.builder()
///             .location("us-west1")
///             .name("sample-np")
///             .edgeServicesCidr("192.168.30.0/26")
///             .vmwareEngineNetwork(external_address_nw.id())
///             .build());
///
///         var vmw_engine_external_address = new ExternalAddress("vmw-engine-external-address", ExternalAddressArgs.builder()
///             .name("sample-external-address")
///             .parent(external_address_pc.id())
///             .internalIp("192.168.0.66")
///             .description("Sample description.")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(external_address_np)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   external-address-nw:
///     type: gcp:vmwareengine:Network
///     properties:
///       name: pc-nw
///       location: global
///       type: STANDARD
///       description: PC network description.
///   external-address-pc:
///     type: gcp:vmwareengine:PrivateCloud
///     properties:
///       location: us-west1-a
///       name: sample-pc
///       description: Sample test PC.
///       networkConfig:
///         managementCidr: 192.168.50.0/24
///         vmwareEngineNetwork: ${["external-address-nw"].id}
///       managementCluster:
///         clusterId: sample-mgmt-cluster
///         nodeTypeConfigs:
///           - nodeTypeId: standard-72
///             nodeCount: 3
///   external-address-np:
///     type: gcp:vmwareengine:NetworkPolicy
///     properties:
///       location: us-west1
///       name: sample-np
///       edgeServicesCidr: 192.168.30.0/26
///       vmwareEngineNetwork: ${["external-address-nw"].id}
///   vmw-engine-external-address:
///     type: gcp:vmwareengine:ExternalAddress
///     properties:
///       name: sample-external-address
///       parent: ${["external-address-pc"].id}
///       internalIp: 192.168.0.66
///       description: Sample description.
///     options:
///       dependsOn:
///         - ${["external-address-np"]}
/// ```
///
///
/// ## Import
///
/// ExternalAddress can be imported using any of these accepted formats:
///
/// * `{{parent}}/externalAddresses/{{name}}`
///
/// When using the `pulumi import` command, ExternalAddress can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/externalAddress:ExternalAddress default {{parent}}/externalAddresses/{{name}}
/// ```
class ExternalAddress extends pulumi.CustomResource {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// User-provided description for this resource.
  late final pulumi.Output<String?> description;
  /// The external IP address of a workload VM.
  late final pulumi.Output<String> externalIp;
  /// The internal IP address of a workload VM.
  late final pulumi.Output<String> internalIp;
  /// The ID of the external IP Address.
  late final pulumi.Output<String> name;
  /// The resource name of the private cloud to create a new external address in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  late final pulumi.Output<String> parent;
  /// State of the resource.
  late final pulumi.Output<String> state;
  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;
  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ExternalAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExternalAddress]. {@macro pulumi_vmwareengine_external_address_external_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExternalAddress(
    String name, {
    ExternalAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/externalAddress:ExternalAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.externalIp = registerOutput<String>('externalIp');
    this.internalIp = registerOutput<String>('internalIp');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
