import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipv4_gateway_args.dart';
import 'ipv4_gateway_state.dart';

/// Provides a Vpc Ipv4 Gateway resource.
///
/// For information about VPC Ipv4 Gateway and how to use it, see [What is Ipv4 Gateway](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/createipv4gateway).
///
/// > **NOTE:** Available since v1.181.0.
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
/// const _default = new alicloud.resourcemanager.ResourceGroup("default", {
///     displayName: name,
///     resourceGroupName: name,
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: `${name}2`,
///     cidrBlock: "10.0.0.0/8",
/// });
/// const defaultIpv4Gateway = new alicloud.vpc.Ipv4Gateway("default", {
///     ipv4GatewayName: name,
///     ipv4GatewayDescription: name,
///     resourceGroupId: _default.id,
///     vpcId: defaultNetwork.id,
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
/// default = alicloud.resourcemanager.ResourceGroup("default",
///     display_name=name,
///     resource_group_name=name)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=f"{name}2",
///     cidr_block="10.0.0.0/8")
/// default_ipv4_gateway = alicloud.vpc.Ipv4Gateway("default",
///     ipv4_gateway_name=name,
///     ipv4_gateway_description=name,
///     resource_group_id=default.id,
///     vpc_id=default_network.id)
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
///     var @default = new AliCloud.ResourceManager.ResourceGroup("default", new()
///     {
///         DisplayName = name,
///         ResourceGroupName = name,
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = $"{name}2",
///         CidrBlock = "10.0.0.0/8",
///     });
///
///     var defaultIpv4Gateway = new AliCloud.Vpc.Ipv4Gateway("default", new()
///     {
///         Ipv4GatewayName = name,
///         Ipv4GatewayDescription = name,
///         ResourceGroupId = @default.Id,
///         VpcId = defaultNetwork.Id,
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
/// 		_default, err := resourcemanager.NewResourceGroup(ctx, "default", &resourcemanager.ResourceGroupArgs{
/// 			DisplayName:       pulumi.String(name),
/// 			ResourceGroupName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.Sprintf("%v2", name),
/// 			CidrBlock: pulumi.String("10.0.0.0/8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewIpv4Gateway(ctx, "default", &vpc.Ipv4GatewayArgs{
/// 			Ipv4GatewayName:        pulumi.String(name),
/// 			Ipv4GatewayDescription: pulumi.String(name),
/// 			ResourceGroupId:        _default.ID(),
/// 			VpcId:                  defaultNetwork.ID(),
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
/// import com.pulumi.alicloud.resourcemanager.ResourceGroup;
/// import com.pulumi.alicloud.resourcemanager.ResourceGroupArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Ipv4Gateway;
/// import com.pulumi.alicloud.vpc.Ipv4GatewayArgs;
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
///         var default_ = new ResourceGroup("default", ResourceGroupArgs.builder()
///             .displayName(name)
///             .resourceGroupName(name)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(String.format("%s2", name))
///             .cidrBlock("10.0.0.0/8")
///             .build());
///
///         var defaultIpv4Gateway = new Ipv4Gateway("defaultIpv4Gateway", Ipv4GatewayArgs.builder()
///             .ipv4GatewayName(name)
///             .ipv4GatewayDescription(name)
///             .resourceGroupId(default_.id())
///             .vpcId(defaultNetwork.id())
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
///   default:
///     type: alicloud:resourcemanager:ResourceGroup
///     properties:
///       displayName: ${name}
///       resourceGroupName: ${name}
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}2
///       cidrBlock: 10.0.0.0/8
///   defaultIpv4Gateway:
///     type: alicloud:vpc:Ipv4Gateway
///     name: default
///     properties:
///       ipv4GatewayName: ${name}
///       ipv4GatewayDescription: ${name}
///       resourceGroupId: ${default.id}
///       vpcId: ${defaultNetwork.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Ipv4 Gateway can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/ipv4Gateway:Ipv4Gateway example <id>
/// ```
class Ipv4Gateway extends pulumi.CustomResource {
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Whether to PreCheck only this request. Value:-**true**: The check request is sent without creating an IPv4 Gateway. Check items include whether required parameters, request format, and business restrictions are filled in. If the check does not pass, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.-**false** (default): Sends a normal request, returns an HTTP 2xx status code and directly creates an IPv4 Gateway.
  late final pulumi.Output<bool?> dryRun;
  /// Whether the IPv4 gateway is active or not. Valid values are `true` and `false`.
  late final pulumi.Output<bool> enabled;
  /// The public network traffic mode of the VPC after the IPv4 Gateway is deleted:
  late final pulumi.Output<String?> internetMode;
  /// The description of the IPv4 gateway. The description must be 2 to 256 characters in length. It must start with a letter but cannot start with http:// or https://.
  late final pulumi.Output<String?> ipv4GatewayDescription;
  /// Resource primary key field.
  late final pulumi.Output<String> ipv4GatewayId;
  /// The name of the IPv4 gateway. The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). It must start with a letter.
  late final pulumi.Output<String?> ipv4GatewayName;
  /// ID of the route table associated with IPv4 Gateway
  late final pulumi.Output<String> ipv4GatewayRouteTableId;
  /// The ID of the resource group to which the instance belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The tags of the current resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the virtual private cloud (VPC) where you want to create the IPv4 gateway. You can create only one IPv4 gateway in a VPC.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [Ipv4Gateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ipv4Gateway]. {@macro pulumi_vpc_ipv4_gateway_ipv4_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ipv4Gateway(
    String name, {
    Ipv4GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/ipv4Gateway:Ipv4Gateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.enabled = registerOutput<bool>('enabled');
    this.internetMode = registerOutput<String?>('internetMode');
    this.ipv4GatewayDescription = registerOutput<String?>('ipv4GatewayDescription');
    this.ipv4GatewayId = registerOutput<String>('ipv4GatewayId');
    this.ipv4GatewayName = registerOutput<String?>('ipv4GatewayName');
    this.ipv4GatewayRouteTableId = registerOutput<String>('ipv4GatewayRouteTableId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [Ipv4Gateway] resource's state with the given [name] and [id].
  static Ipv4Gateway get(
    String name,
    pulumi.Input<String> id, {
    Ipv4GatewayState? state,
  }) {
    return Ipv4Gateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Ipv4Gateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/ipv4Gateway:Ipv4Gateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.enabled = registerOutput<bool>('enabled');
    this.internetMode = registerOutput<String?>('internetMode');
    this.ipv4GatewayDescription = registerOutput<String?>('ipv4GatewayDescription');
    this.ipv4GatewayId = registerOutput<String>('ipv4GatewayId');
    this.ipv4GatewayName = registerOutput<String?>('ipv4GatewayName');
    this.ipv4GatewayRouteTableId = registerOutput<String>('ipv4GatewayRouteTableId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
