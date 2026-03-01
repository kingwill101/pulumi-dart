import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_server_attachment_args.dart';
import 'server_group_server_attachment_state.dart';

/// Provides a Network Load Balancer (NLB) Server Group Server Attachment resource.
///
/// Network Server Load Balancer.
///
/// For information about Network Load Balancer (NLB) Server Group Server Attachment and how to use it, see [What is Server Group Server Attachment](https://www.alibabacloud.com/help/en/server-load-balancer/latest/addserverstoservergroup-nlb).
///
/// > **NOTE:** Available since v1.192.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultServerGroup = new alicloud.nlb.ServerGroup("default", {
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
///     serverGroupName: name,
///     serverGroupType: "Ip",
///     connectionDrainTimeout: 10,
///     connectionDrainEnabled: true,
///     vpcId: defaultNetwork.id,
///     scheduler: "Wrr",
///     protocol: "TCP",
///     healthCheck: {
///         healthCheckEnabled: false,
///     },
///     addressIpVersion: "Ipv4",
/// });
/// const defaultServerGroupServerAttachment = new alicloud.nlb.ServerGroupServerAttachment("default", {
///     serverType: "Ip",
///     serverId: "10.0.0.0",
///     description: name,
///     port: 80,
///     serverGroupId: defaultServerGroup.id,
///     weight: 100,
///     serverIp: "10.0.0.0",
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
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_server_group = alicloud.nlb.ServerGroup("default",
///     resource_group_id=default.ids[0],
///     server_group_name=name,
///     server_group_type="Ip",
///     connection_drain_timeout=10,
///     connection_drain_enabled=True,
///     vpc_id=default_network.id,
///     scheduler="Wrr",
///     protocol="TCP",
///     health_check={
///         "health_check_enabled": False,
///     },
///     address_ip_version="Ipv4")
/// default_server_group_server_attachment = alicloud.nlb.ServerGroupServerAttachment("default",
///     server_type="Ip",
///     server_id="10.0.0.0",
///     description=name,
///     port=80,
///     server_group_id=default_server_group.id,
///     weight=100,
///     server_ip="10.0.0.0")
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultServerGroup = new AliCloud.Nlb.ServerGroup("default", new()
///     {
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///         ServerGroupName = name,
///         ServerGroupType = "Ip",
///         ConnectionDrainTimeout = 10,
///         ConnectionDrainEnabled = true,
///         VpcId = defaultNetwork.Id,
///         Scheduler = "Wrr",
///         Protocol = "TCP",
///         HealthCheck = new AliCloud.Nlb.Inputs.ServerGroupHealthCheckArgs
///         {
///             HealthCheckEnabled = false,
///         },
///         AddressIpVersion = "Ipv4",
///     });
///
///     var defaultServerGroupServerAttachment = new AliCloud.Nlb.ServerGroupServerAttachment("default", new()
///     {
///         ServerType = "Ip",
///         ServerId = "10.0.0.0",
///         Description = name,
///         Port = 80,
///         ServerGroupId = defaultServerGroup.Id,
///         Weight = 100,
///         ServerIp = "10.0.0.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nlb"
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
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultServerGroup, err := nlb.NewServerGroup(ctx, "default", &nlb.ServerGroupArgs{
/// 			ResourceGroupId:        pulumi.String(_default.Ids[0]),
/// 			ServerGroupName:        pulumi.String(name),
/// 			ServerGroupType:        pulumi.String("Ip"),
/// 			ConnectionDrainTimeout: pulumi.Int(10),
/// 			ConnectionDrainEnabled: pulumi.Bool(true),
/// 			VpcId:                  defaultNetwork.ID(),
/// 			Scheduler:              pulumi.String("Wrr"),
/// 			Protocol:               pulumi.String("TCP"),
/// 			HealthCheck: &nlb.ServerGroupHealthCheckArgs{
/// 				HealthCheckEnabled: pulumi.Bool(false),
/// 			},
/// 			AddressIpVersion: pulumi.String("Ipv4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nlb.NewServerGroupServerAttachment(ctx, "default", &nlb.ServerGroupServerAttachmentArgs{
/// 			ServerType:    pulumi.String("Ip"),
/// 			ServerId:      pulumi.String("10.0.0.0"),
/// 			Description:   pulumi.String(name),
/// 			Port:          pulumi.Int(80),
/// 			ServerGroupId: defaultServerGroup.ID(),
/// 			Weight:        pulumi.Int(100),
/// 			ServerIp:      pulumi.String("10.0.0.0"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.nlb.ServerGroup;
/// import com.pulumi.alicloud.nlb.ServerGroupArgs;
/// import com.pulumi.alicloud.nlb.inputs.ServerGroupHealthCheckArgs;
/// import com.pulumi.alicloud.nlb.ServerGroupServerAttachment;
/// import com.pulumi.alicloud.nlb.ServerGroupServerAttachmentArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultServerGroup = new ServerGroup("defaultServerGroup", ServerGroupArgs.builder()
///             .resourceGroupId(default_.ids()[0])
///             .serverGroupName(name)
///             .serverGroupType("Ip")
///             .connectionDrainTimeout(10)
///             .connectionDrainEnabled(true)
///             .vpcId(defaultNetwork.id())
///             .scheduler("Wrr")
///             .protocol("TCP")
///             .healthCheck(ServerGroupHealthCheckArgs.builder()
///                 .healthCheckEnabled(false)
///                 .build())
///             .addressIpVersion("Ipv4")
///             .build());
///
///         var defaultServerGroupServerAttachment = new ServerGroupServerAttachment("defaultServerGroupServerAttachment", ServerGroupServerAttachmentArgs.builder()
///             .serverType("Ip")
///             .serverId("10.0.0.0")
///             .description(name)
///             .port(80)
///             .serverGroupId(defaultServerGroup.id())
///             .weight(100)
///             .serverIp("10.0.0.0")
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
///       cidrBlock: 10.4.0.0/16
///   defaultServerGroup:
///     type: alicloud:nlb:ServerGroup
///     name: default
///     properties:
///       resourceGroupId: ${default.ids[0]}
///       serverGroupName: ${name}
///       serverGroupType: Ip
///       connectionDrainTimeout: 10
///       connectionDrainEnabled: true
///       vpcId: ${defaultNetwork.id}
///       scheduler: Wrr
///       protocol: TCP
///       healthCheck:
///         healthCheckEnabled: false
///       addressIpVersion: Ipv4
///   defaultServerGroupServerAttachment:
///     type: alicloud:nlb:ServerGroupServerAttachment
///     name: default
///     properties:
///       serverType: Ip
///       serverId: 10.0.0.0
///       description: ${name}
///       port: 80
///       serverGroupId: ${defaultServerGroup.id}
///       weight: 100
///       serverIp: 10.0.0.0
/// variables:
///   default:
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
/// Network Load Balancer (NLB) Server Group Server Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nlb/serverGroupServerAttachment:ServerGroupServerAttachment example <server_group_id>_<server_id>_<server_ip>_<server_type>_<port>
/// ```
class ServerGroupServerAttachment extends pulumi.CustomResource {
  /// The description of the servers.
  /// The description must be 2 to 256 characters in length, and can contain letters, digits, commas (,), periods (.), semicolons (;), forward slashes (/), at signs (@), underscores (\_), and hyphens (-).
  late final pulumi.Output<String?> description;
  /// The port that is used by the backend server. Valid values: `1` to `65535`.
  late final pulumi.Output<int> port;
  /// The ID of the server group.
  late final pulumi.Output<String> serverGroupId;
  /// The ID of the server.
  ///
  /// - If the server group type is `Instance`, set the ServerId parameter to the ID of an Elastic Compute Service (ECS) instance, an elastic network interface (ENI), or an elastic container instance. These backend servers are specified by `Ecs`, `Eni`, or `Eci`.
  /// - If the server group type is `Ip`, set the ServerId parameter to an IP address.
  late final pulumi.Output<String> serverId;
  /// The IP address of the server. If the server group type is `Ip`, set the ServerId parameter to an IP address.
  late final pulumi.Output<String> serverIp;
  /// The type of the backend server. Valid values:
  ///
  /// - `Ecs`: ECS instance
  /// - `Eni`: ENI
  /// - `Eci`: an elastic container instance
  /// - `Ip`: an IP address
  late final pulumi.Output<String> serverType;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The weight of the backend server. Valid values: `0` to `100`. Default value: `100`. If the weight of a backend server is set to `0`, no requests are forwarded to the backend server.
  late final pulumi.Output<int> weight;
  /// The zone ID of the server.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ServerGroupServerAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerGroupServerAttachment]. {@macro pulumi_nlb_server_group_server_attachment_server_group_server_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerGroupServerAttachment(
    String name, {
    ServerGroupServerAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nlb/serverGroupServerAttachment:ServerGroupServerAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.port = registerOutput<int>('port');
    this.serverGroupId = registerOutput<String>('serverGroupId');
    this.serverId = registerOutput<String>('serverId');
    this.serverIp = registerOutput<String>('serverIp');
    this.serverType = registerOutput<String>('serverType');
    this.status = registerOutput<String>('status');
    this.weight = registerOutput<int>('weight');
    this.zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ServerGroupServerAttachment] resource's state with the given [name] and [id].
  static ServerGroupServerAttachment get(
    String name,
    pulumi.Input<String> id, {
    ServerGroupServerAttachmentState? state,
  }) {
    return ServerGroupServerAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerGroupServerAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nlb/serverGroupServerAttachment:ServerGroupServerAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.port = registerOutput<int>('port');
    this.serverGroupId = registerOutput<String>('serverGroupId');
    this.serverId = registerOutput<String>('serverId');
    this.serverIp = registerOutput<String>('serverIp');
    this.serverType = registerOutput<String>('serverType');
    this.status = registerOutput<String>('status');
    this.weight = registerOutput<int>('weight');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
