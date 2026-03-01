import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_attachment_args.dart';
import 'membership_attachment_state.dart';

/// Provides an Ack One Membership Attachment resource. Fleet Manager Membership Attachment.
///
/// For information about Ack One Membership Attachment and how to use it, see [How to attach cluster tp hub](https://www.alibabacloud.com/help/en/ack/distributed-cloud-container-platform-for-kubernetes/developer-reference/api-adcp-2022-01-01-attachclustertohub).
///
/// > **NOTE:** Available since v1.243.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const keyName = config.get("keyName") || "%s";
/// const enhanced = alicloud.vpc.getEnhancedNatAvailableZones({});
/// const cloudEfficiency = enhanced.then(enhanced => alicloud.ecs.getInstanceTypes({
///     availabilityZone: enhanced.zones?.[0]?.zoneId,
///     cpuCoreCount: 4,
///     memorySize: 8,
///     kubernetesNodeRole: "Worker",
///     systemDiskCategory: "cloud_efficiency",
/// }));
/// const _default = new alicloud.vpc.Network("default", {cidrBlock: "10.4.0.0/16"});
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     cidrBlock: "10.4.0.0/24",
///     vpcId: _default.id,
///     zoneId: enhanced.then(enhanced => enhanced.zones?.[0]?.zoneId),
/// });
/// const defaultManagedKubernetes = new alicloud.cs.ManagedKubernetes("default", {
///     clusterSpec: "ack.pro.small",
///     vswitchIds: [defaultSwitch.id],
///     newNatGateway: true,
///     podCidr: std.cidrsubnet({
///         input: "10.0.0.0/8",
///         newbits: 8,
///         netnum: 36,
///     }).then(invoke => invoke.result),
///     serviceCidr: std.cidrsubnet({
///         input: "172.16.0.0/16",
///         newbits: 4,
///         netnum: 7,
///     }).then(invoke => invoke.result),
///     slbInternetEnabled: true,
///     isEnterpriseSecurityGroup: true,
/// });
/// const defaultKeyPair = new alicloud.ecs.KeyPair("default", {keyPairName: keyName});
/// const defaultNodePool = new alicloud.cs.NodePool("default", {
///     nodePoolName: name,
///     clusterId: defaultManagedKubernetes.id,
///     vswitchIds: [defaultSwitch.id],
///     instanceTypes: [cloudEfficiency.then(cloudEfficiency => cloudEfficiency.instanceTypes?.[0]?.id)],
///     systemDiskCategory: "cloud_efficiency",
///     systemDiskSize: 40,
///     keyName: defaultKeyPair.keyPairName,
///     desiredSize: "1",
/// });
/// const defaultCluster = new alicloud.ackone.Cluster("default", {
///     network: {
///         vpcId: _default.id,
///         vswitches: [defaultSwitch.id],
///     },
///     argocdEnabled: false,
/// }, {
///     dependsOn: [defaultManagedKubernetes],
/// });
/// const defaultMembershipAttachment = new alicloud.ackone.MembershipAttachment("default", {
///     clusterId: defaultCluster.id,
///     subClusterId: defaultManagedKubernetes.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// key_name = config.get("keyName")
/// if key_name is None:
///     key_name = "%s"
/// enhanced = alicloud.vpc.get_enhanced_nat_available_zones()
/// cloud_efficiency = alicloud.ecs.get_instance_types(availability_zone=enhanced.zones[0].zone_id,
///     cpu_core_count=4,
///     memory_size=8,
///     kubernetes_node_role="Worker",
///     system_disk_category="cloud_efficiency")
/// default = alicloud.vpc.Network("default", cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     cidr_block="10.4.0.0/24",
///     vpc_id=default.id,
///     zone_id=enhanced.zones[0].zone_id)
/// default_managed_kubernetes = alicloud.cs.ManagedKubernetes("default",
///     cluster_spec="ack.pro.small",
///     vswitch_ids=[default_switch.id],
///     new_nat_gateway=True,
///     pod_cidr=std.cidrsubnet(input="10.0.0.0/8",
///         newbits=8,
///         netnum=36).result,
///     service_cidr=std.cidrsubnet(input="172.16.0.0/16",
///         newbits=4,
///         netnum=7).result,
///     slb_internet_enabled=True,
///     is_enterprise_security_group=True)
/// default_key_pair = alicloud.ecs.KeyPair("default", key_pair_name=key_name)
/// default_node_pool = alicloud.cs.NodePool("default",
///     node_pool_name=name,
///     cluster_id=default_managed_kubernetes.id,
///     vswitch_ids=[default_switch.id],
///     instance_types=[cloud_efficiency.instance_types[0].id],
///     system_disk_category="cloud_efficiency",
///     system_disk_size=40,
///     key_name=default_key_pair.key_pair_name,
///     desired_size="1")
/// default_cluster = alicloud.ackone.Cluster("default",
///     network={
///         "vpc_id": default.id,
///         "vswitches": [default_switch.id],
///     },
///     argocd_enabled=False,
///     opts = pulumi.ResourceOptions(depends_on=[default_managed_kubernetes]))
/// default_membership_attachment = alicloud.ackone.MembershipAttachment("default",
///     cluster_id=default_cluster.id,
///     sub_cluster_id=default_managed_kubernetes.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var keyName = config.Get("keyName") ?? "%s";
///     var enhanced = AliCloud.Vpc.GetEnhancedNatAvailableZones.Invoke();
///
///     var cloudEfficiency = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = enhanced.Apply(getEnhancedNatAvailableZonesResult => getEnhancedNatAvailableZonesResult.Zones[0]?.ZoneId),
///         CpuCoreCount = 4,
///         MemorySize = 8,
///         KubernetesNodeRole = "Worker",
///         SystemDiskCategory = "cloud_efficiency",
///     });
///
///     var @default = new AliCloud.Vpc.Network("default", new()
///     {
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         CidrBlock = "10.4.0.0/24",
///         VpcId = @default.Id,
///         ZoneId = enhanced.Apply(getEnhancedNatAvailableZonesResult => getEnhancedNatAvailableZonesResult.Zones[0]?.ZoneId),
///     });
///
///     var defaultManagedKubernetes = new AliCloud.CS.ManagedKubernetes("default", new()
///     {
///         ClusterSpec = "ack.pro.small",
///         VswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///         NewNatGateway = true,
///         PodCidr = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = "10.0.0.0/8",
///             Newbits = 8,
///             Netnum = 36,
///         }).Apply(invoke => invoke.Result),
///         ServiceCidr = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = "172.16.0.0/16",
///             Newbits = 4,
///             Netnum = 7,
///         }).Apply(invoke => invoke.Result),
///         SlbInternetEnabled = true,
///         IsEnterpriseSecurityGroup = true,
///     });
///
///     var defaultKeyPair = new AliCloud.Ecs.KeyPair("default", new()
///     {
///         KeyPairName = keyName,
///     });
///
///     var defaultNodePool = new AliCloud.CS.NodePool("default", new()
///     {
///         NodePoolName = name,
///         ClusterId = defaultManagedKubernetes.Id,
///         VswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///         InstanceTypes = new[]
///         {
///             cloudEfficiency.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         },
///         SystemDiskCategory = "cloud_efficiency",
///         SystemDiskSize = 40,
///         KeyName = defaultKeyPair.KeyPairName,
///         DesiredSize = "1",
///     });
///
///     var defaultCluster = new AliCloud.AckOne.Cluster("default", new()
///     {
///         Network = new AliCloud.AckOne.Inputs.ClusterNetworkArgs
///         {
///             VpcId = @default.Id,
///             Vswitches = new[]
///             {
///                 defaultSwitch.Id,
///             },
///         },
///         ArgocdEnabled = false,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultManagedKubernetes,
///         },
///     });
///
///     var defaultMembershipAttachment = new AliCloud.AckOne.MembershipAttachment("default", new()
///     {
///         ClusterId = defaultCluster.Id,
///         SubClusterId = defaultManagedKubernetes.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ackone"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		keyName := "%s"
/// 		if param := cfg.Get("keyName"); param != "" {
/// 			keyName = param
/// 		}
/// 		enhanced, err := vpc.GetEnhancedNatAvailableZones(ctx, &vpc.GetEnhancedNatAvailableZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cloudEfficiency, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone:   pulumi.StringRef(enhanced.Zones[0].ZoneId),
/// 			CpuCoreCount:       pulumi.IntRef(4),
/// 			MemorySize:         pulumi.Float64Ref(8),
/// 			KubernetesNodeRole: pulumi.StringRef("Worker"),
/// 			SystemDiskCategory: pulumi.StringRef("cloud_efficiency"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			CidrBlock: pulumi.String("10.4.0.0/24"),
/// 			VpcId:     _default.ID(),
/// 			ZoneId:    pulumi.String(enhanced.Zones[0].ZoneId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// 			Input:   "10.0.0.0/8",
/// 			Newbits: 8,
/// 			Netnum:  36,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeCidrsubnet1, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// 			Input:   "172.16.0.0/16",
/// 			Newbits: 4,
/// 			Netnum:  7,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultManagedKubernetes, err := cs.NewManagedKubernetes(ctx, "default", &cs.ManagedKubernetesArgs{
/// 			ClusterSpec: pulumi.String("ack.pro.small"),
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 			NewNatGateway:             pulumi.Bool(true),
/// 			PodCidr:                   pulumi.String(invokeCidrsubnet.Result),
/// 			ServiceCidr:               pulumi.String(invokeCidrsubnet1.Result),
/// 			SlbInternetEnabled:        pulumi.Bool(true),
/// 			IsEnterpriseSecurityGroup: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultKeyPair, err := ecs.NewKeyPair(ctx, "default", &ecs.KeyPairArgs{
/// 			KeyPairName: pulumi.String(keyName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cs.NewNodePool(ctx, "default", &cs.NodePoolArgs{
/// 			NodePoolName: pulumi.String(name),
/// 			ClusterId:    defaultManagedKubernetes.ID(),
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 			InstanceTypes: pulumi.StringArray{
/// 				pulumi.String(cloudEfficiency.InstanceTypes[0].Id),
/// 			},
/// 			SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// 			SystemDiskSize:     pulumi.Int(40),
/// 			KeyName:            defaultKeyPair.KeyPairName,
/// 			DesiredSize:        pulumi.String("1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCluster, err := ackone.NewCluster(ctx, "default", &ackone.ClusterArgs{
/// 			Network: &ackone.ClusterNetworkArgs{
/// 				VpcId: _default.ID(),
/// 				Vswitches: pulumi.StringArray{
/// 					defaultSwitch.ID(),
/// 				},
/// 			},
/// 			ArgocdEnabled: pulumi.Bool(false),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultManagedKubernetes,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ackone.NewMembershipAttachment(ctx, "default", &ackone.MembershipAttachmentArgs{
/// 			ClusterId:    defaultCluster.ID(),
/// 			SubClusterId: defaultManagedKubernetes.ID(),
/// 		})
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetEnhancedNatAvailableZonesArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cs.ManagedKubernetes;
/// import com.pulumi.alicloud.cs.ManagedKubernetesArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.alicloud.ecs.KeyPair;
/// import com.pulumi.alicloud.ecs.KeyPairArgs;
/// import com.pulumi.alicloud.cs.NodePool;
/// import com.pulumi.alicloud.cs.NodePoolArgs;
/// import com.pulumi.alicloud.ackone.Cluster;
/// import com.pulumi.alicloud.ackone.ClusterArgs;
/// import com.pulumi.alicloud.ackone.inputs.ClusterNetworkArgs;
/// import com.pulumi.alicloud.ackone.MembershipAttachment;
/// import com.pulumi.alicloud.ackone.MembershipAttachmentArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var keyName = config.get("keyName").orElse("%s");
///         final var enhanced = VpcFunctions.getEnhancedNatAvailableZones(GetEnhancedNatAvailableZonesArgs.builder()
///             .build());
///
///         final var cloudEfficiency = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(enhanced.zones()[0].zoneId())
///             .cpuCoreCount(4)
///             .memorySize(8)
///             .kubernetesNodeRole("Worker")
///             .systemDiskCategory("cloud_efficiency")
///             .build());
///
///         var default_ = new Network("default", NetworkArgs.builder()
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(default_.id())
///             .zoneId(enhanced.zones()[0].zoneId())
///             .build());
///
///         var defaultManagedKubernetes = new ManagedKubernetes("defaultManagedKubernetes", ManagedKubernetesArgs.builder()
///             .clusterSpec("ack.pro.small")
///             .vswitchIds(defaultSwitch.id())
///             .newNatGateway(true)
///             .podCidr(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input("10.0.0.0/8")
///                 .newbits(8)
///                 .netnum(36)
///                 .build()).result())
///             .serviceCidr(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input("172.16.0.0/16")
///                 .newbits(4)
///                 .netnum(7)
///                 .build()).result())
///             .slbInternetEnabled(true)
///             .isEnterpriseSecurityGroup(true)
///             .build());
///
///         var defaultKeyPair = new KeyPair("defaultKeyPair", KeyPairArgs.builder()
///             .keyPairName(keyName)
///             .build());
///
///         var defaultNodePool = new NodePool("defaultNodePool", NodePoolArgs.builder()
///             .nodePoolName(name)
///             .clusterId(defaultManagedKubernetes.id())
///             .vswitchIds(defaultSwitch.id())
///             .instanceTypes(cloudEfficiency.instanceTypes()[0].id())
///             .systemDiskCategory("cloud_efficiency")
///             .systemDiskSize(40)
///             .keyName(defaultKeyPair.keyPairName())
///             .desiredSize("1")
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .network(ClusterNetworkArgs.builder()
///                 .vpcId(default_.id())
///                 .vswitches(defaultSwitch.id())
///                 .build())
///             .argocdEnabled(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultManagedKubernetes)
///                 .build());
///
///         var defaultMembershipAttachment = new MembershipAttachment("defaultMembershipAttachment", MembershipAttachmentArgs.builder()
///             .clusterId(defaultCluster.id())
///             .subClusterId(defaultManagedKubernetes.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   keyName:
///     type: string
///     default: '%s'
/// resources:
///   default:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${default.id}
///       zoneId: ${enhanced.zones[0].zoneId}
///   defaultManagedKubernetes:
///     type: alicloud:cs:ManagedKubernetes
///     name: default
///     properties:
///       clusterSpec: ack.pro.small
///       vswitchIds:
///         - ${defaultSwitch.id}
///       newNatGateway: true
///       podCidr:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: 10.0.0.0/8
///             newbits: 8
///             netnum: 36
///           return: result
///       serviceCidr:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: 172.16.0.0/16
///             newbits: 4
///             netnum: 7
///           return: result
///       slbInternetEnabled: true
///       isEnterpriseSecurityGroup: true
///   defaultKeyPair:
///     type: alicloud:ecs:KeyPair
///     name: default
///     properties:
///       keyPairName: ${keyName}
///   defaultNodePool:
///     type: alicloud:cs:NodePool
///     name: default
///     properties:
///       nodePoolName: ${name}
///       clusterId: ${defaultManagedKubernetes.id}
///       vswitchIds:
///         - ${defaultSwitch.id}
///       instanceTypes:
///         - ${cloudEfficiency.instanceTypes[0].id}
///       systemDiskCategory: cloud_efficiency
///       systemDiskSize: 40
///       keyName: ${defaultKeyPair.keyPairName}
///       desiredSize: 1
///   defaultCluster:
///     type: alicloud:ackone:Cluster
///     name: default
///     properties:
///       network:
///         vpcId: ${default.id}
///         vswitches:
///           - ${defaultSwitch.id}
///       argocdEnabled: false
///     options:
///       dependsOn:
///         - ${defaultManagedKubernetes}
///   defaultMembershipAttachment:
///     type: alicloud:ackone:MembershipAttachment
///     name: default
///     properties:
///       clusterId: ${defaultCluster.id}
///       subClusterId: ${defaultManagedKubernetes.id}
/// variables:
///   enhanced:
///     fn::invoke:
///       function: alicloud:vpc:getEnhancedNatAvailableZones
///       arguments: {}
///   cloudEfficiency:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${enhanced.zones[0].zoneId}
///         cpuCoreCount: 4
///         memorySize: 8
///         kubernetesNodeRole: Worker
///         systemDiskCategory: cloud_efficiency
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ack One Membership Attachment can be imported using the id, which consists of cluster_id and sub_cluster_id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ackone/membershipAttachment:MembershipAttachment example <cluster_id>:<sub_cluster_id>
/// ```
class MembershipAttachment extends pulumi.CustomResource {
  /// The ID of the cluster to which the membership is being attached.
  late final pulumi.Output<String> clusterId;
  /// The ID of the member being attached to the cluster.
  late final pulumi.Output<String> subClusterId;

  /// Creates a new [MembershipAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MembershipAttachment]. {@macro pulumi_ackone_membership_attachment_membership_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MembershipAttachment(
    String name, {
    MembershipAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ackone/membershipAttachment:MembershipAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.subClusterId = registerOutput<String>('subClusterId');
  }

  /// Gets an existing [MembershipAttachment] resource's state with the given [name] and [id].
  static MembershipAttachment get(
    String name,
    pulumi.Input<String> id, {
    MembershipAttachmentState? state,
  }) {
    return MembershipAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MembershipAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ackone/membershipAttachment:MembershipAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.subClusterId = registerOutput<String>('subClusterId');
  }
}
