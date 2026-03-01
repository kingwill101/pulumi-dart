import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_args.dart';
import 'load_balancer_backend_server.dart';

/// Provides a ENS Load Balancer resource.
///
/// Load balancing.
///
/// For information about ENS Load Balancer and how to use it, see [What is Load Balancer](https://www.alibabacloud.com/help/en/ens/developer-reference/api-createloadbalancer).
///
/// > **NOTE:** Available since v1.213.0.
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
/// const name = config.get("name") || "terraform-example";
/// const network = new alicloud.ens.Network("network", {
///     networkName: name,
///     description: name,
///     cidrBlock: "192.168.2.0/24",
///     ensRegionId: "cn-chenzhou-telecom_unicom_cmcc",
/// });
/// const _switch = new alicloud.ens.Vswitch("switch", {
///     description: name,
///     cidrBlock: "192.168.2.0/24",
///     vswitchName: name,
///     ensRegionId: "cn-chenzhou-telecom_unicom_cmcc",
///     networkId: network.id,
/// });
/// const _default = new alicloud.ens.LoadBalancer("default", {
///     loadBalancerName: name,
///     paymentType: "PayAsYouGo",
///     ensRegionId: "cn-chenzhou-telecom_unicom_cmcc",
///     loadBalancerSpec: "elb.s1.small",
///     vswitchId: _switch.id,
///     networkId: network.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// network = alicloud.ens.Network("network",
///     network_name=name,
///     description=name,
///     cidr_block="192.168.2.0/24",
///     ens_region_id="cn-chenzhou-telecom_unicom_cmcc")
/// switch = alicloud.ens.Vswitch("switch",
///     description=name,
///     cidr_block="192.168.2.0/24",
///     vswitch_name=name,
///     ens_region_id="cn-chenzhou-telecom_unicom_cmcc",
///     network_id=network.id)
/// default = alicloud.ens.LoadBalancer("default",
///     load_balancer_name=name,
///     payment_type="PayAsYouGo",
///     ens_region_id="cn-chenzhou-telecom_unicom_cmcc",
///     load_balancer_spec="elb.s1.small",
///     vswitch_id=switch.id,
///     network_id=network.id)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var network = new AliCloud.Ens.Network("network", new()
///     {
///         NetworkName = name,
///         Description = name,
///         CidrBlock = "192.168.2.0/24",
///         EnsRegionId = "cn-chenzhou-telecom_unicom_cmcc",
///     });
///
///     var @switch = new AliCloud.Ens.Vswitch("switch", new()
///     {
///         Description = name,
///         CidrBlock = "192.168.2.0/24",
///         VswitchName = name,
///         EnsRegionId = "cn-chenzhou-telecom_unicom_cmcc",
///         NetworkId = network.Id,
///     });
///
///     var @default = new AliCloud.Ens.LoadBalancer("default", new()
///     {
///         LoadBalancerName = name,
///         PaymentType = "PayAsYouGo",
///         EnsRegionId = "cn-chenzhou-telecom_unicom_cmcc",
///         LoadBalancerSpec = "elb.s1.small",
///         VswitchId = @switch.Id,
///         NetworkId = network.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ens"
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
/// 		network, err := ens.NewNetwork(ctx, "network", &ens.NetworkArgs{
/// 			NetworkName: pulumi.String(name),
/// 			Description: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("192.168.2.0/24"),
/// 			EnsRegionId: pulumi.String("cn-chenzhou-telecom_unicom_cmcc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_switch, err := ens.NewVswitch(ctx, "switch", &ens.VswitchArgs{
/// 			Description: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("192.168.2.0/24"),
/// 			VswitchName: pulumi.String(name),
/// 			EnsRegionId: pulumi.String("cn-chenzhou-telecom_unicom_cmcc"),
/// 			NetworkId:   network.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ens.NewLoadBalancer(ctx, "default", &ens.LoadBalancerArgs{
/// 			LoadBalancerName: pulumi.String(name),
/// 			PaymentType:      pulumi.String("PayAsYouGo"),
/// 			EnsRegionId:      pulumi.String("cn-chenzhou-telecom_unicom_cmcc"),
/// 			LoadBalancerSpec: pulumi.String("elb.s1.small"),
/// 			VswitchId:        _switch.ID(),
/// 			NetworkId:        network.ID(),
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
/// import com.pulumi.alicloud.ens.Network;
/// import com.pulumi.alicloud.ens.NetworkArgs;
/// import com.pulumi.alicloud.ens.Vswitch;
/// import com.pulumi.alicloud.ens.VswitchArgs;
/// import com.pulumi.alicloud.ens.LoadBalancer;
/// import com.pulumi.alicloud.ens.LoadBalancerArgs;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .networkName(name)
///             .description(name)
///             .cidrBlock("192.168.2.0/24")
///             .ensRegionId("cn-chenzhou-telecom_unicom_cmcc")
///             .build());
///
///         var switch_ = new Vswitch("switch", VswitchArgs.builder()
///             .description(name)
///             .cidrBlock("192.168.2.0/24")
///             .vswitchName(name)
///             .ensRegionId("cn-chenzhou-telecom_unicom_cmcc")
///             .networkId(network.id())
///             .build());
///
///         var default_ = new LoadBalancer("default", LoadBalancerArgs.builder()
///             .loadBalancerName(name)
///             .paymentType("PayAsYouGo")
///             .ensRegionId("cn-chenzhou-telecom_unicom_cmcc")
///             .loadBalancerSpec("elb.s1.small")
///             .vswitchId(switch_.id())
///             .networkId(network.id())
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
/// resources:
///   network:
///     type: alicloud:ens:Network
///     properties:
///       networkName: ${name}
///       description: ${name}
///       cidrBlock: 192.168.2.0/24
///       ensRegionId: cn-chenzhou-telecom_unicom_cmcc
///   switch:
///     type: alicloud:ens:Vswitch
///     properties:
///       description: ${name}
///       cidrBlock: 192.168.2.0/24
///       vswitchName: ${name}
///       ensRegionId: cn-chenzhou-telecom_unicom_cmcc
///       networkId: ${network.id}
///   default:
///     type: alicloud:ens:LoadBalancer
///     properties:
///       loadBalancerName: ${name}
///       paymentType: PayAsYouGo
///       ensRegionId: cn-chenzhou-telecom_unicom_cmcc
///       loadBalancerSpec: elb.s1.small
///       vswitchId: ${switch.id}
///       networkId: ${network.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ENS Load Balancer can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ens/loadBalancer:LoadBalancer example <id>
/// ```
class LoadBalancer extends pulumi.CustomResource {
  /// The list of backend servers. See `backend_servers` below.
  late final pulumi.Output<List<LoadBalancerBackendServer>?> backendServers;
  /// The creation Time (UTC) of the load balancing instance.
  late final pulumi.Output<String> createTime;
  /// The ID of the ENS node.
  late final pulumi.Output<String> ensRegionId;
  /// Name of the Server Load Balancer instance. The length is 1~80 English or Chinese characters. When this parameter is not specified, the system randomly assigns an instance name. Cannot start with http:// and https.
  late final pulumi.Output<String?> loadBalancerName;
  /// Specifications of the Server Load Balancer instance. Optional values: elb.s1.small,elb.s3.medium,elb.s2.small,elb.s2.medium,elb.s3.small.
  late final pulumi.Output<String> loadBalancerSpec;
  /// The network ID of the created edge load balancing (ELB) instance.
  late final pulumi.Output<String> networkId;
  /// Server Load Balancer Instance Payment Type. Value:PayAsYouGo
  late final pulumi.Output<String> paymentType;
  /// The status of the SLB instance.
  late final pulumi.Output<String> status;
  /// The ID of the vSwitch to which the VPC instance belongs.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancer]. {@macro pulumi_ens_load_balancer_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancer(
    String name, {
    LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ens/loadBalancer:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendServers = registerOutput<List<LoadBalancerBackendServer>?>('backendServers');
    this.createTime = registerOutput<String>('createTime');
    this.ensRegionId = registerOutput<String>('ensRegionId');
    this.loadBalancerName = registerOutput<String?>('loadBalancerName');
    this.loadBalancerSpec = registerOutput<String>('loadBalancerSpec');
    this.networkId = registerOutput<String>('networkId');
    this.paymentType = registerOutput<String>('paymentType');
    this.status = registerOutput<String>('status');
    this.vswitchId = registerOutput<String>('vswitchId');
  }
}
