import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acl_attachment_args.dart';
import 'network_acl_attachment_state.dart';

/// Provides a network acl attachment resource to associate network acls to vswitches.
///
/// &gt; **DEPRECATED:**  This resource  has been deprecated from version `1.124.0`. Replace by `resources` with the resource alicloud_network_acl.
/// Note that because this resource conflicts with the `resources` attribute of `alicloud.vpc.NetworkAcl`, this resource can no be used.
///
/// &gt; **WARNING:** Do not mix the use of this deprecated resource with the `resources` field in the `alicloud.vpc.NetworkAcl` resource to bind VSW (Virtual Switch) to the same ACL. Using both methods simultaneously can cause conflicts and result in repeated apply operations that toggle between binding and unbinding VSWs. This resource is deprecated and should be replaced with the `resources` field in `alicloud.vpc.NetworkAcl`.
///
/// &gt; **NOTE:** Available since v1.44.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "NatGatewayConfigSpec";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const defaultNetworkAcl = new alicloud.vpc.NetworkAcl("default", {
///     vpcId: defaultNetwork.id,
///     networkAclName: name,
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultNetworkAclAttachment = new alicloud.vpc.NetworkAclAttachment("default", {
///     networkAclId: defaultNetworkAcl.id,
///     resources: [{
///         resourceId: defaultSwitch.id,
///         resourceType: "VSwitch",
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
///     name = "NatGatewayConfigSpec"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/12")
/// default_network_acl = alicloud.vpc.NetworkAcl("default",
///     vpc_id=default_network.id,
///     network_acl_name=name)
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_network_acl_attachment = alicloud.vpc.NetworkAclAttachment("default",
///     network_acl_id=default_network_acl.id,
///     resources=[{
///         "resource_id": default_switch.id,
///         "resource_type": "VSwitch",
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
///     var name = config.Get("name") ?? "NatGatewayConfigSpec";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var defaultNetworkAcl = new AliCloud.Vpc.NetworkAcl("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         NetworkAclName = name,
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultNetworkAclAttachment = new AliCloud.Vpc.NetworkAclAttachment("default", new()
///     {
///         NetworkAclId = defaultNetworkAcl.Id,
///         Resources = new[]
///         {
///             new AliCloud.Vpc.Inputs.NetworkAclAttachmentResourceArgs
///             {
///                 ResourceId = defaultSwitch.Id,
///                 ResourceType = "VSwitch",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "NatGatewayConfigSpec"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetworkAcl, err := vpc.NewNetworkAcl(ctx, "default", &vpc.NetworkAclArgs{
/// 			VpcId:          defaultNetwork.ID(),
/// 			NetworkAclName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/21"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewNetworkAclAttachment(ctx, "default", &vpc.NetworkAclAttachmentArgs{
/// 			NetworkAclId: defaultNetworkAcl.ID(),
/// 			Resources: vpc.NetworkAclAttachmentResourceArray{
/// 				&vpc.NetworkAclAttachmentResourceArgs{
/// 					ResourceId:   defaultSwitch.ID(),
/// 					ResourceType: pulumi.String("VSwitch"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.NetworkAcl;
/// import com.pulumi.alicloud.vpc.NetworkAclArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.vpc.NetworkAclAttachment;
/// import com.pulumi.alicloud.vpc.NetworkAclAttachmentArgs;
/// import com.pulumi.alicloud.vpc.inputs.NetworkAclAttachmentResourceArgs;
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
///         final var name = config.get("name").orElse("NatGatewayConfigSpec");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var defaultNetworkAcl = new NetworkAcl("defaultNetworkAcl", NetworkAclArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .networkAclName(name)
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultNetworkAclAttachment = new NetworkAclAttachment("defaultNetworkAclAttachment", NetworkAclAttachmentArgs.builder()
///             .networkAclId(defaultNetworkAcl.id())
///             .resources(NetworkAclAttachmentResourceArgs.builder()
///                 .resourceId(defaultSwitch.id())
///                 .resourceType("VSwitch")
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
///     default: NatGatewayConfigSpec
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/12
///   defaultNetworkAcl:
///     type: alicloud:vpc:NetworkAcl
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       networkAclName: ${name}
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/21
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultNetworkAclAttachment:
///     type: alicloud:vpc:NetworkAclAttachment
///     name: default
///     properties:
///       networkAclId: ${defaultNetworkAcl.id}
///       resources:
///         - resourceId: ${defaultSwitch.id}
///           resourceType: VSwitch
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
class NetworkAclAttachment extends pulumi.CustomResource {
  /// The id of the network acl, the field can't be changed.
  late final pulumi.Output<String> networkAclId;
  /// List of the resources associated with the network acl. The details see Block Resources.
  late final pulumi.Output<List<Map<String, dynamic>>> resources;

  /// Creates a new [NetworkAclAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkAclAttachment]. {@macro pulumi_vpc_network_acl_attachment_network_acl_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkAclAttachment(
    String name, {
    NetworkAclAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/networkAclAttachment:NetworkAclAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    networkAclId = registerOutput<String>('networkAclId');
    resources = registerOutput<List<Map<String, dynamic>>>('resources');
  }

  /// Gets an existing [NetworkAclAttachment] resource's state with the given [name] and [id].
  static NetworkAclAttachment get(
    String name,
    pulumi.Input<String> id, {
    NetworkAclAttachmentState? state,
  }) {
    return NetworkAclAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkAclAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/networkAclAttachment:NetworkAclAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    networkAclId = registerOutput<String>('networkAclId');
    resources = registerOutput<List<Map<String, dynamic>>>('resources');
  }
}
