import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acl_args.dart';
import 'network_acl_state.dart';

/// Provides a VPC Network Acl resource.
///
/// Network Access Control List (ACL) is a Network Access Control function in VPC. You can customize the network ACL rules and bind the network ACL to the switch to control the traffic of ECS instances in the switch.
///
/// For information about VPC Network Acl and how to use it, see [What is Network Acl](https://www.alibabacloud.com/help/en/ens/latest/createnetworkacl).
///
/// &gt; **NOTE:** Available since v1.43.0.
///
/// &gt; **WARNING:** Do not mix the use of the `resources` field in this resource with the separate `alicloud.vpc.VpcNetworkAclAttachment` resource to bind VSW (Virtual Switch) to the same ACL. Using both methods simultaneously can cause conflicts and result in repeated apply operations that toggle between binding and unbinding VSWs. Choose one method and stick with it to avoid these issues.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const example = new alicloud.vpc.Network("example", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: example.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const exampleNetworkAcl = new alicloud.vpc.NetworkAcl("example", {
///     vpcId: example.id,
///     networkAclName: name,
///     description: name,
///     ingressAclEntries: [{
///         description: `${name}-ingress`,
///         networkAclEntryName: `${name}-ingress`,
///         sourceCidrIp: "10.0.0.0/24",
///         policy: "accept",
///         port: "20/80",
///         protocol: "tcp",
///     }],
///     egressAclEntries: [{
///         description: `${name}-egress`,
///         networkAclEntryName: `${name}-egress`,
///         destinationCidrIp: "10.0.0.0/24",
///         policy: "accept",
///         port: "20/80",
///         protocol: "tcp",
///     }],
///     resources: [{
///         resourceId: exampleSwitch.id,
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
///     name = "tf-example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// example = alicloud.vpc.Network("example",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// example_switch = alicloud.vpc.Switch("example",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=example.id,
///     zone_id=default.zones[0].id)
/// example_network_acl = alicloud.vpc.NetworkAcl("example",
///     vpc_id=example.id,
///     network_acl_name=name,
///     description=name,
///     ingress_acl_entries=[{
///         "description": f"{name}-ingress",
///         "network_acl_entry_name": f"{name}-ingress",
///         "source_cidr_ip": "10.0.0.0/24",
///         "policy": "accept",
///         "port": "20/80",
///         "protocol": "tcp",
///     }],
///     egress_acl_entries=[{
///         "description": f"{name}-egress",
///         "network_acl_entry_name": f"{name}-egress",
///         "destination_cidr_ip": "10.0.0.0/24",
///         "policy": "accept",
///         "port": "20/80",
///         "protocol": "tcp",
///     }],
///     resources=[{
///         "resource_id": example_switch.id,
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var example = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = example.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var exampleNetworkAcl = new AliCloud.Vpc.NetworkAcl("example", new()
///     {
///         VpcId = example.Id,
///         NetworkAclName = name,
///         Description = name,
///         IngressAclEntries = new[]
///         {
///             new AliCloud.Vpc.Inputs.NetworkAclIngressAclEntryArgs
///             {
///                 Description = $"{name}-ingress",
///                 NetworkAclEntryName = $"{name}-ingress",
///                 SourceCidrIp = "10.0.0.0/24",
///                 Policy = "accept",
///                 Port = "20/80",
///                 Protocol = "tcp",
///             },
///         },
///         EgressAclEntries = new[]
///         {
///             new AliCloud.Vpc.Inputs.NetworkAclEgressAclEntryArgs
///             {
///                 Description = $"{name}-egress",
///                 NetworkAclEntryName = $"{name}-egress",
///                 DestinationCidrIp = "10.0.0.0/24",
///                 Policy = "accept",
///                 Port = "20/80",
///                 Protocol = "tcp",
///             },
///         },
///         Resources = new[]
///         {
///             new AliCloud.Vpc.Inputs.NetworkAclResourceArgs
///             {
///                 ResourceId = exampleSwitch.Id,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       example.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewNetworkAcl(ctx, "example", &vpc.NetworkAclArgs{
/// 			VpcId:          example.ID(),
/// 			NetworkAclName: pulumi.String(name),
/// 			Description:    pulumi.String(name),
/// 			IngressAclEntries: vpc.NetworkAclIngressAclEntryArray{
/// 				&vpc.NetworkAclIngressAclEntryArgs{
/// 					Description:         pulumi.Sprintf("%v-ingress", name),
/// 					NetworkAclEntryName: pulumi.Sprintf("%v-ingress", name),
/// 					SourceCidrIp:        pulumi.String("10.0.0.0/24"),
/// 					Policy:              pulumi.String("accept"),
/// 					Port:                pulumi.String("20/80"),
/// 					Protocol:            pulumi.String("tcp"),
/// 				},
/// 			},
/// 			EgressAclEntries: vpc.NetworkAclEgressAclEntryArray{
/// 				&vpc.NetworkAclEgressAclEntryArgs{
/// 					Description:         pulumi.Sprintf("%v-egress", name),
/// 					NetworkAclEntryName: pulumi.Sprintf("%v-egress", name),
/// 					DestinationCidrIp:   pulumi.String("10.0.0.0/24"),
/// 					Policy:              pulumi.String("accept"),
/// 					Port:                pulumi.String("20/80"),
/// 					Protocol:            pulumi.String("tcp"),
/// 				},
/// 			},
/// 			Resources: vpc.NetworkAclResourceArray{
/// 				&vpc.NetworkAclResourceArgs{
/// 					ResourceId:   exampleSwitch.ID(),
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
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.vpc.NetworkAcl;
/// import com.pulumi.alicloud.vpc.NetworkAclArgs;
/// import com.pulumi.alicloud.vpc.inputs.NetworkAclIngressAclEntryArgs;
/// import com.pulumi.alicloud.vpc.inputs.NetworkAclEgressAclEntryArgs;
/// import com.pulumi.alicloud.vpc.inputs.NetworkAclResourceArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var example = new Network("example", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(example.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var exampleNetworkAcl = new NetworkAcl("exampleNetworkAcl", NetworkAclArgs.builder()
///             .vpcId(example.id())
///             .networkAclName(name)
///             .description(name)
///             .ingressAclEntries(NetworkAclIngressAclEntryArgs.builder()
///                 .description(String.format("%s-ingress", name))
///                 .networkAclEntryName(String.format("%s-ingress", name))
///                 .sourceCidrIp("10.0.0.0/24")
///                 .policy("accept")
///                 .port("20/80")
///                 .protocol("tcp")
///                 .build())
///             .egressAclEntries(NetworkAclEgressAclEntryArgs.builder()
///                 .description(String.format("%s-egress", name))
///                 .networkAclEntryName(String.format("%s-egress", name))
///                 .destinationCidrIp("10.0.0.0/24")
///                 .policy("accept")
///                 .port("20/80")
///                 .protocol("tcp")
///                 .build())
///             .resources(NetworkAclResourceArgs.builder()
///                 .resourceId(exampleSwitch.id())
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
///     default: tf-example
/// resources:
///   example:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${example.id}
///       zoneId: ${default.zones[0].id}
///   exampleNetworkAcl:
///     type: alicloud:vpc:NetworkAcl
///     name: example
///     properties:
///       vpcId: ${example.id}
///       networkAclName: ${name}
///       description: ${name}
///       ingressAclEntries:
///         - description: ${name}-ingress
///           networkAclEntryName: ${name}-ingress
///           sourceCidrIp: 10.0.0.0/24
///           policy: accept
///           port: 20/80
///           protocol: tcp
///       egressAclEntries:
///         - description: ${name}-egress
///           networkAclEntryName: ${name}-egress
///           destinationCidrIp: 10.0.0.0/24
///           policy: accept
///           port: 20/80
///           protocol: tcp
///       resources:
///         - resourceId: ${exampleSwitch.id}
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
///
/// ## Import
///
/// VPC Network Acl can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/networkAcl:NetworkAcl example <id>
/// ```
class NetworkAcl extends pulumi.CustomResource {
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;
  /// The description of the network ACL. The description must be 1 to 256 characters in length, and cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> description;
  /// Out direction rule information. See `egress_acl_entries` below.
  late final pulumi.Output<List<Map<String, dynamic>>> egressAclEntries;
  /// Inward direction rule information. See `ingress_acl_entries` below.
  late final pulumi.Output<List<Map<String, dynamic>>> ingressAclEntries;
  /// . Field 'name' has been deprecated from provider version 1.122.0. New field 'network_acl_name' instead.
  late final pulumi.Output<String> name;
  /// The name of the network ACL.
  /// The name must be 1 to 128 characters in length and cannot start with http:// or https.
  late final pulumi.Output<String> networkAclName;
  /// The associated resource. See `resources` below.
  late final pulumi.Output<List<Map<String, dynamic>>> resources;
  /// SOURCE NetworkAcl specified by CopyNetworkAclEntries
  late final pulumi.Output<String?> sourceNetworkAclId;
  /// The state of the network ACL.
  late final pulumi.Output<String> status;
  /// The tags of this resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the associated VPC.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String> vpcId;

  /// Creates a new [NetworkAcl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkAcl]. {@macro pulumi_vpc_network_acl_network_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkAcl(
    String name, {
    NetworkAclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/networkAcl:NetworkAcl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    egressAclEntries = registerOutput<List<Map<String, dynamic>>>('egressAclEntries');
    ingressAclEntries = registerOutput<List<Map<String, dynamic>>>('ingressAclEntries');
    this.name = registerOutput<String>('name');
    networkAclName = registerOutput<String>('networkAclName');
    resources = registerOutput<List<Map<String, dynamic>>>('resources');
    sourceNetworkAclId = registerOutput<String?>('sourceNetworkAclId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [NetworkAcl] resource's state with the given [name] and [id].
  static NetworkAcl get(
    String name,
    pulumi.Input<String> id, {
    NetworkAclState? state,
  }) {
    return NetworkAcl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkAcl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/networkAcl:NetworkAcl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    egressAclEntries = registerOutput<List<Map<String, dynamic>>>('egressAclEntries');
    ingressAclEntries = registerOutput<List<Map<String, dynamic>>>('ingressAclEntries');
    this.name = registerOutput<String>('name');
    networkAclName = registerOutput<String>('networkAclName');
    resources = registerOutput<List<Map<String, dynamic>>>('resources');
    sourceNetworkAclId = registerOutput<String?>('sourceNetworkAclId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
  }
}
