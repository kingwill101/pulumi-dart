import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_args.dart';
import 'network_ipv6_cidr_block.dart';

/// Provides a VPC VPC resource.
///
/// A VPC instance creates a VPC. You can fully control your own VPC, such as selecting IP address ranges, configuring routing tables, and gateways. You can use Alibaba cloud resources such as cloud servers, apsaradb for RDS, and load balancer in your own VPC.
///
/// > **NOTE:** This resource will auto build a router and a route table while it uses `alicloud.vpc.Network` to build a vpc resource.
///
/// > **NOTE:** Available since v1.0.0.
///
/// ## Module Support
///
/// You can use the existing vpc module
/// to create a VPC and several VSwitches one-click.
///
/// For information about VPC VPC and how to use it, see [What is VPC](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/what-is-a-vpc).
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
/// const _default = new alicloud.vpc.Network("default", {
///     ipv6Isp: "BGP",
///     description: "test",
///     cidrBlock: "10.0.0.0/8",
///     vpcName: name,
///     enableIpv6: true,
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
/// default = alicloud.vpc.Network("default",
///     ipv6_isp="BGP",
///     description="test",
///     cidr_block="10.0.0.0/8",
///     vpc_name=name,
///     enable_ipv6=True)
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
///     var @default = new AliCloud.Vpc.Network("default", new()
///     {
///         Ipv6Isp = "BGP",
///         Description = "test",
///         CidrBlock = "10.0.0.0/8",
///         VpcName = name,
///         EnableIpv6 = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		_, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			Ipv6Isp:     pulumi.String("BGP"),
/// 			Description: pulumi.String("test"),
/// 			CidrBlock:   pulumi.String("10.0.0.0/8"),
/// 			VpcName:     pulumi.String(name),
/// 			EnableIpv6:  pulumi.Bool(true),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .ipv6Isp("BGP")
///             .description("test")
///             .cidrBlock("10.0.0.0/8")
///             .vpcName(name)
///             .enableIpv6(true)
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
///   default:
///     type: alicloud:vpc:Network
///     properties:
///       ipv6Isp: BGP
///       description: test
///       cidrBlock: 10.0.0.0/8
///       vpcName: ${name}
///       enableIpv6: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC VPC can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/network:Network example <id>
/// ```
class Network extends pulumi.CustomResource {
  /// The CIDR block of the VPC.
  ///
  /// - You can specify one of the following CIDR blocks or their subsets as the primary IPv4 CIDR block of the VPC: 192.168.0.0/16, 172.16.0.0/12, and 10.0.0.0/8. These CIDR blocks are standard private CIDR blocks as defined by Request for Comments (RFC) documents. The subnet mask must be 8 to 28 bits in length.
  /// - You can also use a custom CIDR block other than 100.64.0.0/10, 224.0.0.0/4, 127.0.0.0/8, 169.254.0.0/16, and their subnets as the primary IPv4 CIDR block of the VPC.
  late final pulumi.Output<String> cidrBlock;
  /// The status of ClassicLink function.
  late final pulumi.Output<bool?> classicLinkEnabled;
  /// The creation time of the VPC.
  late final pulumi.Output<String> createTime;
  /// The new description of the VPC.
  /// The description must be 1 to 256 characters in length, and cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> description;
  /// The status of VPC DNS Hostname
  late final pulumi.Output<String> dnsHostnameStatus;
  /// Whether to PreCheck only this request. Value:
  late final pulumi.Output<bool?> dryRun;
  /// Whether to enable the IPv6 network segment. Value:
  late final pulumi.Output<bool?> enableIpv6;
  /// Force delete vpc or not.
  late final pulumi.Output<bool?> forceDelete;
  /// Allocate VPC from The IPAM address pool by entering a mask.
  ///
  /// > **NOTE:**  when you specify the IPAM address pool to create a VPC, enter at least one of the CidrBlock or Ipv4CidrMask parameters.
  late final pulumi.Output<int?> ipv4CidrMask;
  /// The ID of the IP Address Manager (IPAM) pool that contains IPv4 addresses.
  late final pulumi.Output<String?> ipv4IpamPoolId;
  /// The IPv6 CIDR block of the default VPC.
  ///
  /// > **NOTE:**  When `EnableIpv6` is set to `true`, this parameter is required.
  late final pulumi.Output<String> ipv6CidrBlock;
  /// The IPv6 CIDR block information of the VPC.
  late final pulumi.Output<List<NetworkIpv6CidrBlock>> ipv6CidrBlocks;
  /// The IPv6 address segment type of the VPC. Value:
  /// - `BGP` (default): Alibaba Cloud BGP IPv6.
  /// - `ChinaMobile`: China Mobile (single line).
  /// - `ChinaUnicom`: China Unicom (single line).
  /// - `ChinaTelecom`: China Telecom (single line).
  ///
  /// > **NOTE:**  If a single-line bandwidth whitelist is enabled, this field can be set to `ChinaTelecom` (China Telecom), `ChinaUnicom` (China Unicom), or `ChinaMobile` (China Mobile).
  late final pulumi.Output<String?> ipv6Isp;
  /// Specifies whether to create the default VPC in the specified region. Valid values:
  late final pulumi.Output<bool?> isDefault;
  /// . Field 'name' has been deprecated from provider version 1.119.0. New field 'vpc_name' instead.
  late final pulumi.Output<String> name;
  /// The ID of the region where the VPC is located.
  late final pulumi.Output<String> regionId;
  /// The ID of the resource group to which you want to move the resource.
  ///
  /// > **NOTE:**   You can use resource groups to facilitate resource grouping and permission management for an Alibaba Cloud. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  late final pulumi.Output<String> resourceGroupId;
  /// The ID of the system route table.
  late final pulumi.Output<String> routeTableId;
  /// The region ID of the VPC to which the route table belongs.
  late final pulumi.Output<String> routerId;
  /// . Field 'router_table_id' has been deprecated from provider version 1.227.1. New field 'route_table_id' instead.
  late final pulumi.Output<String> routerTableId;
  /// Field 'secondary_cidr_blocks' has been deprecated from provider version 1.185.0 and it will be removed in the future version. Please use the new resource 'alicloud_vpc_ipv4_cidr_block'. `secondary_cidr_blocks` attributes and `alicloud.vpc.Ipv4CidrBlock` resource cannot be used at the same time.
  late final pulumi.Output<List<String>> secondaryCidrBlocks;
  /// Field 'secondary_cidr_mask' has been deprecated from provider version 1.248.0. New resource 'alicloud_vpc_ipv4_cidr_block' instead.
  late final pulumi.Output<int?> secondaryCidrMask;
  /// The status of the VPC.   `Pending`: The VPC is being configured. `Available`: The VPC is available.
  late final pulumi.Output<String> status;
  /// The description of the route table.
  /// The description must be 1 to 256 characters in length, and cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> systemRouteTableDescription;
  /// The name of the route table.
  /// The name must be 1 to 128 characters in length and cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> systemRouteTableName;
  /// Whether the system route table receives propagation routes.
  late final pulumi.Output<bool> systemRouteTableRoutePropagationEnable;
  /// The tags of Vpc.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A list of user CIDRs.
  late final pulumi.Output<List<String>> userCidrs;
  /// The new name of the VPC.
  /// The name must be 1 to 128 characters in length and cannot start with `http://` or `https://`.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String> vpcName;

  /// Creates a new [Network].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Network]. {@macro pulumi_vpc_network_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Network(
    String name, {
    NetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/network:Network',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.classicLinkEnabled = registerOutput<bool?>('classicLinkEnabled');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.dnsHostnameStatus = registerOutput<String>('dnsHostnameStatus');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.enableIpv6 = registerOutput<bool?>('enableIpv6');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.ipv4CidrMask = registerOutput<int?>('ipv4CidrMask');
    this.ipv4IpamPoolId = registerOutput<String?>('ipv4IpamPoolId');
    this.ipv6CidrBlock = registerOutput<String>('ipv6CidrBlock');
    this.ipv6CidrBlocks = registerOutput<List<NetworkIpv6CidrBlock>>('ipv6CidrBlocks');
    this.ipv6Isp = registerOutput<String?>('ipv6Isp');
    this.isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String>('name');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.routerId = registerOutput<String>('routerId');
    this.routerTableId = registerOutput<String>('routerTableId');
    this.secondaryCidrBlocks = registerOutput<List<String>>('secondaryCidrBlocks');
    this.secondaryCidrMask = registerOutput<int?>('secondaryCidrMask');
    this.status = registerOutput<String>('status');
    this.systemRouteTableDescription = registerOutput<String?>('systemRouteTableDescription');
    this.systemRouteTableName = registerOutput<String?>('systemRouteTableName');
    this.systemRouteTableRoutePropagationEnable = registerOutput<bool>('systemRouteTableRoutePropagationEnable');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.userCidrs = registerOutput<List<String>>('userCidrs');
    this.vpcName = registerOutput<String>('vpcName');
  }
}
