import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acl_entries_args.dart';
import 'network_acl_entries_egress.dart';
import 'network_acl_entries_ingress.dart';

/// Provides a network acl entries resource to create ingress and egress entries.
///
/// > **NOTE:** Available in 1.45.0+.
///
/// > **NOTE:** It doesn't support concurrency and the order of the ingress and egress entries determines the priority.
///
/// > **DEPRECATED:**  This resource  has been deprecated from version `1.122.0`. Replace by `ingress_acl_entries` and `egress_acl_entries` with the resource alicloud_network_acl.
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
/// const name = config.get("name") || "NetworkAclEntries";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     name: name,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const defaultNetworkAcl = new alicloud.vpc.NetworkAcl("default", {
///     vpcId: defaultNetwork.id,
///     name: name,
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     name: name,
/// });
/// const defaultNetworkAclAttachment = new alicloud.vpc.NetworkAclAttachment("default", {
///     networkAclId: defaultNetworkAcl.id,
///     resources: [{
///         resourceId: defaultSwitch.id,
///         resourceType: "VSwitch",
///     }],
/// });
/// const defaultNetworkAclEntries = new alicloud.vpc.NetworkAclEntries("default", {
///     networkAclId: defaultNetworkAcl.id,
///     ingresses: [{
///         protocol: "all",
///         port: "-1/-1",
///         sourceCidrIp: "0.0.0.0/32",
///         name: name,
///         entryType: "custom",
///         policy: "accept",
///         description: name,
///     }],
///     egresses: [{
///         protocol: "all",
///         port: "-1/-1",
///         destinationCidrIp: "0.0.0.0/32",
///         name: name,
///         entryType: "custom",
///         policy: "accept",
///         description: name,
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
///     name = "NetworkAclEntries"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     name=name,
///     cidr_block="172.16.0.0/12")
/// default_network_acl = alicloud.vpc.NetworkAcl("default",
///     vpc_id=default_network.id,
///     name=name)
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=default.zones[0].id,
///     name=name)
/// default_network_acl_attachment = alicloud.vpc.NetworkAclAttachment("default",
///     network_acl_id=default_network_acl.id,
///     resources=[{
///         "resource_id": default_switch.id,
///         "resource_type": "VSwitch",
///     }])
/// default_network_acl_entries = alicloud.vpc.NetworkAclEntries("default",
///     network_acl_id=default_network_acl.id,
///     ingresses=[{
///         "protocol": "all",
///         "port": "-1/-1",
///         "source_cidr_ip": "0.0.0.0/32",
///         "name": name,
///         "entry_type": "custom",
///         "policy": "accept",
///         "description": name,
///     }],
///     egresses=[{
///         "protocol": "all",
///         "port": "-1/-1",
///         "destination_cidr_ip": "0.0.0.0/32",
///         "name": name,
///         "entry_type": "custom",
///         "policy": "accept",
///         "description": name,
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
///     var name = config.Get("name") ?? "NetworkAclEntries";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         Name = name,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var defaultNetworkAcl = new AliCloud.Vpc.NetworkAcl("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         Name = name,
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         Name = name,
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
///     var defaultNetworkAclEntries = new AliCloud.Vpc.NetworkAclEntries("default", new()
///     {
///         NetworkAclId = defaultNetworkAcl.Id,
///         Ingresses = new[]
///         {
///             new AliCloud.Vpc.Inputs.NetworkAclEntriesIngressArgs
///             {
///                 Protocol = "all",
///                 Port = "-1/-1",
///                 SourceCidrIp = "0.0.0.0/32",
///                 Name = name,
///                 EntryType = "custom",
///                 Policy = "accept",
///                 Description = name,
///             },
///         },
///         Egresses = new[]
///         {
///             new AliCloud.Vpc.Inputs.NetworkAclEntriesEgressArgs
///             {
///                 Protocol = "all",
///                 Port = "-1/-1",
///                 DestinationCidrIp = "0.0.0.0/32",
///                 Name = name,
///                 EntryType = "custom",
///                 Policy = "accept",
///                 Description = name,
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
/// 		name := "NetworkAclEntries"
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
/// 			Name:      pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetworkAcl, err := vpc.NewNetworkAcl(ctx, "default", &vpc.NetworkAclArgs{
/// 			VpcId: defaultNetwork.ID(),
/// 			Name:  pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:     defaultNetwork.ID(),
/// 			CidrBlock: pulumi.String("172.16.0.0/21"),
/// 			ZoneId:    pulumi.String(_default.Zones[0].Id),
/// 			Name:      pulumi.String(name),
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
/// 		_, err = vpc.NewNetworkAclEntries(ctx, "default", &vpc.NetworkAclEntriesArgs{
/// 			NetworkAclId: defaultNetworkAcl.ID(),
/// 			Ingresses: vpc.NetworkAclEntriesIngressArray{
/// 				&vpc.NetworkAclEntriesIngressArgs{
/// 					Protocol:     pulumi.String("all"),
/// 					Port:         pulumi.String("-1/-1"),
/// 					SourceCidrIp: pulumi.String("0.0.0.0/32"),
/// 					Name:         pulumi.String(name),
/// 					EntryType:    pulumi.String("custom"),
/// 					Policy:       pulumi.String("accept"),
/// 					Description:  pulumi.String(name),
/// 				},
/// 			},
/// 			Egresses: vpc.NetworkAclEntriesEgressArray{
/// 				&vpc.NetworkAclEntriesEgressArgs{
/// 					Protocol:          pulumi.String("all"),
/// 					Port:              pulumi.String("-1/-1"),
/// 					DestinationCidrIp: pulumi.String("0.0.0.0/32"),
/// 					Name:              pulumi.String(name),
/// 					EntryType:         pulumi.String("custom"),
/// 					Policy:            pulumi.String("accept"),
/// 					Description:       pulumi.String(name),
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
/// import com.pulumi.alicloud.vpc.NetworkAclEntries;
/// import com.pulumi.alicloud.vpc.NetworkAclEntriesArgs;
/// import com.pulumi.alicloud.vpc.inputs.NetworkAclEntriesIngressArgs;
/// import com.pulumi.alicloud.vpc.inputs.NetworkAclEntriesEgressArgs;
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
///         final var name = config.get("name").orElse("NetworkAclEntries");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name(name)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var defaultNetworkAcl = new NetworkAcl("defaultNetworkAcl", NetworkAclArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .name(name)
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(default_.zones()[0].id())
///             .name(name)
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
///         var defaultNetworkAclEntries = new NetworkAclEntries("defaultNetworkAclEntries", NetworkAclEntriesArgs.builder()
///             .networkAclId(defaultNetworkAcl.id())
///             .ingresses(NetworkAclEntriesIngressArgs.builder()
///                 .protocol("all")
///                 .port("-1/-1")
///                 .sourceCidrIp("0.0.0.0/32")
///                 .name(name)
///                 .entryType("custom")
///                 .policy("accept")
///                 .description(name)
///                 .build())
///             .egresses(NetworkAclEntriesEgressArgs.builder()
///                 .protocol("all")
///                 .port("-1/-1")
///                 .destinationCidrIp("0.0.0.0/32")
///                 .name(name)
///                 .entryType("custom")
///                 .policy("accept")
///                 .description(name)
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
///     default: NetworkAclEntries
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       name: ${name}
///       cidrBlock: 172.16.0.0/12
///   defaultNetworkAcl:
///     type: alicloud:vpc:NetworkAcl
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       name: ${name}
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/21
///       zoneId: ${default.zones[0].id}
///       name: ${name}
///   defaultNetworkAclAttachment:
///     type: alicloud:vpc:NetworkAclAttachment
///     name: default
///     properties:
///       networkAclId: ${defaultNetworkAcl.id}
///       resources:
///         - resourceId: ${defaultSwitch.id}
///           resourceType: VSwitch
///   defaultNetworkAclEntries:
///     type: alicloud:vpc:NetworkAclEntries
///     name: default
///     properties:
///       networkAclId: ${defaultNetworkAcl.id}
///       ingresses:
///         - protocol: all
///           port: -1/-1
///           sourceCidrIp: 0.0.0.0/32
///           name: ${name}
///           entryType: custom
///           policy: accept
///           description: ${name}
///       egresses:
///         - protocol: all
///           port: -1/-1
///           destinationCidrIp: 0.0.0.0/32
///           name: ${name}
///           entryType: custom
///           policy: accept
///           description: ${name}
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
class NetworkAclEntries extends pulumi.CustomResource {
  /// List of the egress entries of the network acl. The order of the egress entries determines the priority. See `egress` below.
  late final pulumi.Output<List<NetworkAclEntriesEgress>?> egresses;
  /// List of the ingress entries of the network acl. The order of the ingress entries determines the priority. See `ingress` below.
  late final pulumi.Output<List<NetworkAclEntriesIngress>?> ingresses;
  /// The id of the network acl, the field can't be changed.
  late final pulumi.Output<String> networkAclId;

  /// Creates a new [NetworkAclEntries].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkAclEntries]. {@macro pulumi_vpc_network_acl_entries_network_acl_entries_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkAclEntries(
    String name, {
    NetworkAclEntriesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/networkAclEntries:NetworkAclEntries',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.egresses = registerOutput<List<NetworkAclEntriesEgress>?>('egresses');
    this.ingresses = registerOutput<List<NetworkAclEntriesIngress>?>('ingresses');
    this.networkAclId = registerOutput<String>('networkAclId');
  }
}
