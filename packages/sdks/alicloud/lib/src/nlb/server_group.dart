import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_args.dart';
import 'server_group_health_check.dart';
import 'server_group_state.dart';

/// Provides a Network Load Balancer (NLB) Server Group resource.
///
///
///
/// For information about Network Load Balancer (NLB) Server Group and how to use it, see [What is Server Group](https://www.alibabacloud.com/help/en/server-load-balancer/latest/createservergroup-nlb).
///
/// &gt; **NOTE:** Available since v1.186.0.
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
///     serverGroupType: "Instance",
///     vpcId: defaultNetwork.id,
///     scheduler: "Wrr",
///     protocol: "TCP",
///     connectionDrainEnabled: true,
///     connectionDrainTimeout: 60,
///     addressIpVersion: "Ipv4",
///     healthCheck: {
///         healthCheckEnabled: true,
///         healthCheckType: "TCP",
///         healthCheckConnectPort: 0,
///         healthyThreshold: 2,
///         unhealthyThreshold: 2,
///         healthCheckConnectTimeout: 5,
///         healthCheckInterval: 10,
///         httpCheckMethod: "GET",
///         healthCheckHttpCodes: [
///             "http_2xx",
///             "http_3xx",
///             "http_4xx",
///         ],
///     },
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
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
///     server_group_type="Instance",
///     vpc_id=default_network.id,
///     scheduler="Wrr",
///     protocol="TCP",
///     connection_drain_enabled=True,
///     connection_drain_timeout=60,
///     address_ip_version="Ipv4",
///     health_check={
///         "health_check_enabled": True,
///         "health_check_type": "TCP",
///         "health_check_connect_port": 0,
///         "healthy_threshold": 2,
///         "unhealthy_threshold": 2,
///         "health_check_connect_timeout": 5,
///         "health_check_interval": 10,
///         "http_check_method": "GET",
///         "health_check_http_codes": [
///             "http_2xx",
///             "http_3xx",
///             "http_4xx",
///         ],
///     },
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
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
///         ServerGroupType = "Instance",
///         VpcId = defaultNetwork.Id,
///         Scheduler = "Wrr",
///         Protocol = "TCP",
///         ConnectionDrainEnabled = true,
///         ConnectionDrainTimeout = 60,
///         AddressIpVersion = "Ipv4",
///         HealthCheck = new AliCloud.Nlb.Inputs.ServerGroupHealthCheckArgs
///         {
///             HealthCheckEnabled = true,
///             HealthCheckType = "TCP",
///             HealthCheckConnectPort = 0,
///             HealthyThreshold = 2,
///             UnhealthyThreshold = 2,
///             HealthCheckConnectTimeout = 5,
///             HealthCheckInterval = 10,
///             HttpCheckMethod = "GET",
///             HealthCheckHttpCodes = new[]
///             {
///                 "http_2xx",
///                 "http_3xx",
///                 "http_4xx",
///             },
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
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
/// 		_, err = nlb.NewServerGroup(ctx, "default", &nlb.ServerGroupArgs{
/// 			ResourceGroupId:        pulumi.String(_default.Ids[0]),
/// 			ServerGroupName:        pulumi.String(name),
/// 			ServerGroupType:        pulumi.String("Instance"),
/// 			VpcId:                  defaultNetwork.ID(),
/// 			Scheduler:              pulumi.String("Wrr"),
/// 			Protocol:               pulumi.String("TCP"),
/// 			ConnectionDrainEnabled: pulumi.Bool(true),
/// 			ConnectionDrainTimeout: pulumi.Int(60),
/// 			AddressIpVersion:       pulumi.String("Ipv4"),
/// 			HealthCheck: &nlb.ServerGroupHealthCheckArgs{
/// 				HealthCheckEnabled:        pulumi.Bool(true),
/// 				HealthCheckType:           pulumi.String("TCP"),
/// 				HealthCheckConnectPort:    pulumi.Int(0),
/// 				HealthyThreshold:          pulumi.Int(2),
/// 				UnhealthyThreshold:        pulumi.Int(2),
/// 				HealthCheckConnectTimeout: pulumi.Int(5),
/// 				HealthCheckInterval:       pulumi.Int(10),
/// 				HttpCheckMethod:           pulumi.String("GET"),
/// 				HealthCheckHttpCodes: pulumi.StringArray{
/// 					pulumi.String("http_2xx"),
/// 					pulumi.String("http_3xx"),
/// 					pulumi.String("http_4xx"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.nlb.ServerGroup;
/// import com.pulumi.alicloud.nlb.ServerGroupArgs;
/// import com.pulumi.alicloud.nlb.inputs.ServerGroupHealthCheckArgs;
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
///             .serverGroupType("Instance")
///             .vpcId(defaultNetwork.id())
///             .scheduler("Wrr")
///             .protocol("TCP")
///             .connectionDrainEnabled(true)
///             .connectionDrainTimeout(60)
///             .addressIpVersion("Ipv4")
///             .healthCheck(ServerGroupHealthCheckArgs.builder()
///                 .healthCheckEnabled(true)
///                 .healthCheckType("TCP")
///                 .healthCheckConnectPort(0)
///                 .healthyThreshold(2)
///                 .unhealthyThreshold(2)
///                 .healthCheckConnectTimeout(5)
///                 .healthCheckInterval(10)
///                 .httpCheckMethod("GET")
///                 .healthCheckHttpCodes(
///                     "http_2xx",
///                     "http_3xx",
///                     "http_4xx")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
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
///       serverGroupType: Instance
///       vpcId: ${defaultNetwork.id}
///       scheduler: Wrr
///       protocol: TCP
///       connectionDrainEnabled: true
///       connectionDrainTimeout: 60
///       addressIpVersion: Ipv4
///       healthCheck:
///         healthCheckEnabled: true
///         healthCheckType: TCP
///         healthCheckConnectPort: 0
///         healthyThreshold: 2
///         unhealthyThreshold: 2
///         healthCheckConnectTimeout: 5
///         healthCheckInterval: 10
///         httpCheckMethod: GET
///         healthCheckHttpCodes:
///           - http_2xx
///           - http_3xx
///           - http_4xx
///       tags:
///         Created: TF
///         For: example
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
/// Network Load Balancer (NLB) Server Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nlb/serverGroup:ServerGroup example <id>
/// ```
class ServerGroup extends pulumi.CustomResource {
  /// The protocol version. Valid values:
  late final pulumi.Output<String> addressIpVersion;

  /// Specifies whether to enable all-port forwarding. Valid values:
  late final pulumi.Output<bool> anyPortEnabled;

  /// . Field 'connection_drain' has been deprecated from provider version 1.231.0. New field 'connection_drain_enabled' instead.
  late final pulumi.Output<bool> connectionDrain;

  /// Specifies whether to enable connection draining. Valid values:
  late final pulumi.Output<bool> connectionDrainEnabled;

  /// The timeout period of connection draining. Unit: seconds. Valid values: `10` to `900`.
  late final pulumi.Output<int> connectionDrainTimeout;

  /// Health check configuration information. See `health_check` below.
  late final pulumi.Output<ServerGroupHealthCheck> healthCheck;

  /// Specifies whether to enable client IP preservation. Valid values:
  late final pulumi.Output<bool> preserveClientIpEnabled;

  /// The protocol used to forward requests to the backend servers. Valid values:
  ///
  /// - `TCP` (default)
  /// - `UDP`
  /// - `TCPSSL`
  late final pulumi.Output<String> protocol;

  /// The ID of the region where the NLB instance is deployed.
  late final pulumi.Output<String> regionId;

  /// The ID of the new resource group.
  /// You can log on to the [Resource Management console](https://resourcemanager.console.aliyun.com/resource-groups) to view resource group IDs.
  late final pulumi.Output<String> resourceGroupId;

  /// The scheduling algorithm. Valid values:
  ///
  /// - **Wrr:** The weighted round-robin algorithm is used. Backend servers with higher weights receive more requests than backend servers with lower weights. This is the default value.
  /// - **Rr:** The round-robin algorithm is used. Requests are forwarded to backend servers in sequence.
  /// - **Sch:** Source IP hashing is used. Requests from the same source IP address are forwarded to the same backend server.
  /// - **Tch:** Four-element hashing is used. It specifies consistent hashing that is based on four factors: source IP address, destination IP address, source port, and destination port. Requests that contain the same information based on the four factors are forwarded to the same backend server.
  /// - `Qch`: QUIC ID hashing. Requests that contain the same QUIC ID are forwarded to the same backend server.
  late final pulumi.Output<String> scheduler;

  /// The new name of the server group.
  /// The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The name must start with a letter.
  late final pulumi.Output<String> serverGroupName;

  /// The type of server group. Valid values:
  ///
  /// - `Instance`: allows you to add servers of the `Ecs`, `Eni`, or `Eci` type. This is the default value.
  /// - `Ip`: allows you to add servers by specifying IP addresses.
  late final pulumi.Output<String> serverGroupType;

  /// Server group status. Value:
  late final pulumi.Output<String> status;

  /// Label.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The ID of the virtual private cloud (VPC) to which the server group belongs.
  ///
  /// &gt; **NOTE:**  If `ServerGroupType` is set to `Instance`, only servers in the specified VPC can be added to the server group.
  ///
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String> vpcId;

  /// Creates a new [ServerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerGroup]. {@macro pulumi_nlb_server_group_server_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerGroup(
    String name, {
    ServerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:nlb/serverGroup:ServerGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addressIpVersion = registerOutput<String>('addressIpVersion');
    anyPortEnabled = registerOutput<bool>('anyPortEnabled');
    connectionDrain = registerOutput<bool>('connectionDrain');
    connectionDrainEnabled = registerOutput<bool>('connectionDrainEnabled');
    connectionDrainTimeout = registerOutput<int>('connectionDrainTimeout');
    healthCheck = registerOutput<ServerGroupHealthCheck>(
      'healthCheck',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServerGroupHealthCheck.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    preserveClientIpEnabled = registerOutput<bool>('preserveClientIpEnabled');
    protocol = registerOutput<String>('protocol');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    scheduler = registerOutput<String>('scheduler');
    serverGroupName = registerOutput<String>('serverGroupName');
    serverGroupType = registerOutput<String>('serverGroupType');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [ServerGroup] resource's state with the given [name] and [id].
  static ServerGroup get(
    String name,
    pulumi.Input<String> id, {
    ServerGroupState? state,
  }) {
    return ServerGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:nlb/serverGroup:ServerGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addressIpVersion = registerOutput<String>('addressIpVersion');
    anyPortEnabled = registerOutput<bool>('anyPortEnabled');
    connectionDrain = registerOutput<bool>('connectionDrain');
    connectionDrainEnabled = registerOutput<bool>('connectionDrainEnabled');
    connectionDrainTimeout = registerOutput<int>('connectionDrainTimeout');
    healthCheck = registerOutput<ServerGroupHealthCheck>(
      'healthCheck',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServerGroupHealthCheck.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    preserveClientIpEnabled = registerOutput<bool>('preserveClientIpEnabled');
    protocol = registerOutput<String>('protocol');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    scheduler = registerOutput<String>('scheduler');
    serverGroupName = registerOutput<String>('serverGroupName');
    serverGroupType = registerOutput<String>('serverGroupType');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
  }
}
