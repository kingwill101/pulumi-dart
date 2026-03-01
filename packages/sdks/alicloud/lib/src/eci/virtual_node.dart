import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_args.dart';
import 'virtual_node_state.dart';
import 'virtual_node_taint.dart';

/// Provides a ECI Virtual Node resource.
///
/// For information about ECI Virtual Node and how to use it, see [What is Virtual Node](https://www.alibabacloud.com/help/en/doc-detail/89129.html).
///
/// > **NOTE:** Available since v1.145.0.
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.eci.getZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.0.0.0/8",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.1.0.0/16",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.zoneIds?.[0]),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultEipAddress = new alicloud.ecs.EipAddress("default", {
///     isp: "BGP",
///     addressName: name,
///     netmode: "public",
///     bandwidth: "1",
///     securityProtectionTypes: ["AntiDDoS_Enhanced"],
///     paymentType: "PayAsYouGo",
/// });
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({});
/// const defaultVirtualNode = new alicloud.eci.VirtualNode("default", {
///     securityGroupId: defaultSecurityGroup.id,
///     virtualNodeName: name,
///     vswitchId: defaultSwitch.id,
///     enablePublicNetwork: false,
///     eipInstanceId: defaultEipAddress.id,
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.groups?.[0]?.id),
///     kubeConfig: "kube_config",
///     tags: {
///         Created: "TF",
///     },
///     taints: [{
///         effect: "NoSchedule",
///         key: "TF",
///         value: "example",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.eci.get_zones()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.0.0.0/8")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.1.0.0/16",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].zone_ids[0])
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_eip_address = alicloud.ecs.EipAddress("default",
///     isp="BGP",
///     address_name=name,
///     netmode="public",
///     bandwidth="1",
///     security_protection_types=["AntiDDoS_Enhanced"],
///     payment_type="PayAsYouGo")
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups()
/// default_virtual_node = alicloud.eci.VirtualNode("default",
///     security_group_id=default_security_group.id,
///     virtual_node_name=name,
///     vswitch_id=default_switch.id,
///     enable_public_network=False,
///     eip_instance_id=default_eip_address.id,
///     resource_group_id=default_get_resource_groups.groups[0].id,
///     kube_config="kube_config",
///     tags={
///         "Created": "TF",
///     },
///     taints=[{
///         "effect": "NoSchedule",
///         "key": "TF",
///         "value": "example",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.Eci.GetZones.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.0.0.0/8",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.1.0.0/16",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.ZoneIds[0])),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultEipAddress = new AliCloud.Ecs.EipAddress("default", new()
///     {
///         Isp = "BGP",
///         AddressName = name,
///         Netmode = "public",
///         Bandwidth = "1",
///         SecurityProtectionTypes = new[]
///         {
///             "AntiDDoS_Enhanced",
///         },
///         PaymentType = "PayAsYouGo",
///     });
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultVirtualNode = new AliCloud.Eci.VirtualNode("default", new()
///     {
///         SecurityGroupId = defaultSecurityGroup.Id,
///         VirtualNodeName = name,
///         VswitchId = defaultSwitch.Id,
///         EnablePublicNetwork = false,
///         EipInstanceId = defaultEipAddress.Id,
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///         KubeConfig = "kube_config",
///         Tags =
///         {
///             { "Created", "TF" },
///         },
///         Taints = new[]
///         {
///             new AliCloud.Eci.Inputs.VirtualNodeTaintArgs
///             {
///                 Effect = "NoSchedule",
///                 Key = "TF",
///                 Value = "example",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eci"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := eci.GetZones(ctx, &eci.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.0.0.0/8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.1.0.0/16"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].ZoneIds[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEipAddress, err := ecs.NewEipAddress(ctx, "default", &ecs.EipAddressArgs{
/// 			Isp:         pulumi.String("BGP"),
/// 			AddressName: pulumi.String(name),
/// 			Netmode:     pulumi.String("public"),
/// 			Bandwidth:   pulumi.String("1"),
/// 			SecurityProtectionTypes: pulumi.StringArray{
/// 				pulumi.String("AntiDDoS_Enhanced"),
/// 			},
/// 			PaymentType: pulumi.String("PayAsYouGo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eci.NewVirtualNode(ctx, "default", &eci.VirtualNodeArgs{
/// 			SecurityGroupId:     defaultSecurityGroup.ID(),
/// 			VirtualNodeName:     pulumi.String(name),
/// 			VswitchId:           defaultSwitch.ID(),
/// 			EnablePublicNetwork: pulumi.Bool(false),
/// 			EipInstanceId:       defaultEipAddress.ID(),
/// 			ResourceGroupId:     pulumi.String(defaultGetResourceGroups.Groups[0].Id),
/// 			KubeConfig:          pulumi.String("kube_config"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 			},
/// 			Taints: eci.VirtualNodeTaintArray{
/// 				&eci.VirtualNodeTaintArgs{
/// 					Effect: pulumi.String("NoSchedule"),
/// 					Key:    pulumi.String("TF"),
/// 					Value:  pulumi.String("example"),
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.eci.EciFunctions;
/// import com.pulumi.alicloud.eci.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.EipAddress;
/// import com.pulumi.alicloud.ecs.EipAddressArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.eci.VirtualNode;
/// import com.pulumi.alicloud.eci.VirtualNodeArgs;
/// import com.pulumi.alicloud.eci.inputs.VirtualNodeTaintArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var default = EciFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.0.0.0/8")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.1.0.0/16")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].zoneIds()[0])
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultEipAddress = new EipAddress("defaultEipAddress", EipAddressArgs.builder()
///             .isp("BGP")
///             .addressName(name)
///             .netmode("public")
///             .bandwidth("1")
///             .securityProtectionTypes("AntiDDoS_Enhanced")
///             .paymentType("PayAsYouGo")
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultVirtualNode = new VirtualNode("defaultVirtualNode", VirtualNodeArgs.builder()
///             .securityGroupId(defaultSecurityGroup.id())
///             .virtualNodeName(name)
///             .vswitchId(defaultSwitch.id())
///             .enablePublicNetwork(false)
///             .eipInstanceId(defaultEipAddress.id())
///             .resourceGroupId(defaultGetResourceGroups.groups()[0].id())
///             .kubeConfig("kube_config")
///             .tags(Map.of("Created", "TF"))
///             .taints(VirtualNodeTaintArgs.builder()
///                 .effect("NoSchedule")
///                 .key("TF")
///                 .value("example")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.0.0.0/8
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.1.0.0/16
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].zoneIds[0]}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultNetwork.id}
///   defaultEipAddress:
///     type: alicloud:ecs:EipAddress
///     name: default
///     properties:
///       isp: BGP
///       addressName: ${name}
///       netmode: public
///       bandwidth: '1'
///       securityProtectionTypes:
///         - AntiDDoS_Enhanced
///       paymentType: PayAsYouGo
///   defaultVirtualNode:
///     type: alicloud:eci:VirtualNode
///     name: default
///     properties:
///       securityGroupId: ${defaultSecurityGroup.id}
///       virtualNodeName: ${name}
///       vswitchId: ${defaultSwitch.id}
///       enablePublicNetwork: false
///       eipInstanceId: ${defaultEipAddress.id}
///       resourceGroupId: ${defaultGetResourceGroups.groups[0].id}
///       kubeConfig: kube_config
///       tags:
///         Created: TF
///       taints:
///         - effect: NoSchedule
///           key: TF
///           value: example
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eci:getZones
///       arguments: {}
///   defaultGetResourceGroups:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECI Virtual Node can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eci/virtualNode:VirtualNode example <id>
/// ```
class VirtualNode extends pulumi.CustomResource {
  /// The Id of eip.
  late final pulumi.Output<String> eipInstanceId;
  /// Whether to enable public network. **NOTE:** If `eip_instance_id` is not configured and `enable_public_network` is true, the system will create an elastic public network IP.
  late final pulumi.Output<bool?> enablePublicNetwork;
  /// The kube config for the k8s cluster. It needs to be connected after Base64 encoding.
  late final pulumi.Output<String> kubeConfig;
  /// The resource group ID.
  late final pulumi.Output<String?> resourceGroupId;
  /// The security group ID.
  late final pulumi.Output<String> securityGroupId;
  /// The Status of the virtual node. Valid values: `Cleaned`, `Failed`, `Pending`, `Ready`.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The taint. See `taints` below.
  late final pulumi.Output<List<VirtualNodeTaint>?> taints;
  /// The name of the virtual node. The length of the name is limited to `2` to `128` characters. It can contain uppercase and lowercase letters, Chinese characters, numbers, half-width colon (:), underscores (_), or hyphens (-), and must start with letters.
  late final pulumi.Output<String?> virtualNodeName;
  /// The vswitch id.
  late final pulumi.Output<String> vswitchId;
  /// The Zone.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [VirtualNode].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNode]. {@macro pulumi_eci_virtual_node_virtual_node_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNode(
    String name, {
    VirtualNodeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eci/virtualNode:VirtualNode',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.eipInstanceId = registerOutput<String>('eipInstanceId');
    this.enablePublicNetwork = registerOutput<bool?>('enablePublicNetwork');
    this.kubeConfig = registerOutput<String>('kubeConfig');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.taints = registerOutput<List<VirtualNodeTaint>?>('taints');
    this.virtualNodeName = registerOutput<String?>('virtualNodeName');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [VirtualNode] resource's state with the given [name] and [id].
  static VirtualNode get(
    String name,
    pulumi.Input<String> id, {
    VirtualNodeState? state,
  }) {
    return VirtualNode._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualNode._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eci/virtualNode:VirtualNode',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.eipInstanceId = registerOutput<String>('eipInstanceId');
    this.enablePublicNetwork = registerOutput<bool?>('enablePublicNetwork');
    this.kubeConfig = registerOutput<String>('kubeConfig');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.taints = registerOutput<List<VirtualNodeTaint>?>('taints');
    this.virtualNodeName = registerOutput<String?>('virtualNodeName');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
