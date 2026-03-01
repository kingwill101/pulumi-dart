import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipv6_gateway_args.dart';

/// Provides a Vpc Ipv6 Gateway resource. Gateway Based on Internet Protocol Version 6.
///
/// For information about Vpc Ipv6 Gateway and how to use it, see [What is Ipv6 Gateway](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/createipv6gateway).
///
/// > **NOTE:** Available since v1.142.0.
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
/// const name = config.get("name") || "tf-testacc-example";
/// const defaultVpc = new alicloud.vpc.Network("defaultVpc", {
///     description: "tf-testacc",
///     enableIpv6: true,
/// });
/// const defaultRg = new alicloud.resourcemanager.ResourceGroup("defaultRg", {
///     displayName: "tf-testacc-ipv6gateway503",
///     resourceGroupName: `${name}1`,
/// });
/// const changeRg = new alicloud.resourcemanager.ResourceGroup("changeRg", {
///     displayName: "tf-testacc-ipv6gateway311",
///     resourceGroupName: `${name}2`,
/// });
/// const _default = new alicloud.vpc.Ipv6Gateway("default", {
///     description: "test",
///     ipv6GatewayName: name,
///     vpcId: defaultVpc.id,
///     resourceGroupId: defaultRg.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-testacc-example"
/// default_vpc = alicloud.vpc.Network("defaultVpc",
///     description="tf-testacc",
///     enable_ipv6=True)
/// default_rg = alicloud.resourcemanager.ResourceGroup("defaultRg",
///     display_name="tf-testacc-ipv6gateway503",
///     resource_group_name=f"{name}1")
/// change_rg = alicloud.resourcemanager.ResourceGroup("changeRg",
///     display_name="tf-testacc-ipv6gateway311",
///     resource_group_name=f"{name}2")
/// default = alicloud.vpc.Ipv6Gateway("default",
///     description="test",
///     ipv6_gateway_name=name,
///     vpc_id=default_vpc.id,
///     resource_group_id=default_rg.id)
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
///     var name = config.Get("name") ?? "tf-testacc-example";
///     var defaultVpc = new AliCloud.Vpc.Network("defaultVpc", new()
///     {
///         Description = "tf-testacc",
///         EnableIpv6 = true,
///     });
///
///     var defaultRg = new AliCloud.ResourceManager.ResourceGroup("defaultRg", new()
///     {
///         DisplayName = "tf-testacc-ipv6gateway503",
///         ResourceGroupName = $"{name}1",
///     });
///
///     var changeRg = new AliCloud.ResourceManager.ResourceGroup("changeRg", new()
///     {
///         DisplayName = "tf-testacc-ipv6gateway311",
///         ResourceGroupName = $"{name}2",
///     });
///
///     var @default = new AliCloud.Vpc.Ipv6Gateway("default", new()
///     {
///         Description = "test",
///         Ipv6GatewayName = name,
///         VpcId = defaultVpc.Id,
///         ResourceGroupId = defaultRg.Id,
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
/// 		name := "tf-testacc-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		defaultVpc, err := vpc.NewNetwork(ctx, "defaultVpc", &vpc.NetworkArgs{
/// 			Description: pulumi.String("tf-testacc"),
/// 			EnableIpv6:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRg, err := resourcemanager.NewResourceGroup(ctx, "defaultRg", &resourcemanager.ResourceGroupArgs{
/// 			DisplayName:       pulumi.String("tf-testacc-ipv6gateway503"),
/// 			ResourceGroupName: pulumi.Sprintf("%v1", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewResourceGroup(ctx, "changeRg", &resourcemanager.ResourceGroupArgs{
/// 			DisplayName:       pulumi.String("tf-testacc-ipv6gateway311"),
/// 			ResourceGroupName: pulumi.Sprintf("%v2", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewIpv6Gateway(ctx, "default", &vpc.Ipv6GatewayArgs{
/// 			Description:     pulumi.String("test"),
/// 			Ipv6GatewayName: pulumi.String(name),
/// 			VpcId:           defaultVpc.ID(),
/// 			ResourceGroupId: defaultRg.ID(),
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
/// import com.pulumi.alicloud.resourcemanager.ResourceGroup;
/// import com.pulumi.alicloud.resourcemanager.ResourceGroupArgs;
/// import com.pulumi.alicloud.vpc.Ipv6Gateway;
/// import com.pulumi.alicloud.vpc.Ipv6GatewayArgs;
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
///         final var name = config.get("name").orElse("tf-testacc-example");
///         var defaultVpc = new Network("defaultVpc", NetworkArgs.builder()
///             .description("tf-testacc")
///             .enableIpv6(true)
///             .build());
///
///         var defaultRg = new ResourceGroup("defaultRg", ResourceGroupArgs.builder()
///             .displayName("tf-testacc-ipv6gateway503")
///             .resourceGroupName(String.format("%s1", name))
///             .build());
///
///         var changeRg = new ResourceGroup("changeRg", ResourceGroupArgs.builder()
///             .displayName("tf-testacc-ipv6gateway311")
///             .resourceGroupName(String.format("%s2", name))
///             .build());
///
///         var default_ = new Ipv6Gateway("default", Ipv6GatewayArgs.builder()
///             .description("test")
///             .ipv6GatewayName(name)
///             .vpcId(defaultVpc.id())
///             .resourceGroupId(defaultRg.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-testacc-example
/// resources:
///   defaultVpc:
///     type: alicloud:vpc:Network
///     properties:
///       description: tf-testacc
///       enableIpv6: true
///   defaultRg:
///     type: alicloud:resourcemanager:ResourceGroup
///     properties:
///       displayName: tf-testacc-ipv6gateway503
///       resourceGroupName: ${name}1
///   changeRg:
///     type: alicloud:resourcemanager:ResourceGroup
///     properties:
///       displayName: tf-testacc-ipv6gateway311
///       resourceGroupName: ${name}2
///   default:
///     type: alicloud:vpc:Ipv6Gateway
///     properties:
///       description: test
///       ipv6GatewayName: ${name}
///       vpcId: ${defaultVpc.id}
///       resourceGroupId: ${defaultRg.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Vpc Ipv6 Gateway can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/ipv6Gateway:Ipv6Gateway example <id>
/// ```
class Ipv6Gateway extends pulumi.CustomResource {
  /// The status of the IPv6 gateway.
  late final pulumi.Output<String> businessStatus;
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;
  /// The description of the IPv6 gateway. The description must be 2 to 256 characters in length. It cannot start with http:// or https://.
  late final pulumi.Output<String?> description;
  /// The expiration time of IPv6 gateway.
  late final pulumi.Output<String> expiredTime;
  /// The charge type of IPv6 gateway.
  late final pulumi.Output<String> instanceChargeType;
  /// Resource primary key attribute field.
  late final pulumi.Output<String> ipv6GatewayId;
  /// The name of the IPv6 gateway. The name must be 2 to 128 characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter but cannot start with http:// or https://.
  late final pulumi.Output<String?> ipv6GatewayName;
  /// The ID of the resource group to which the instance belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// IPv6 gateways do not distinguish between specifications. This parameter is no longer used.
  late final pulumi.Output<String> spec;
  /// The status of the resource. Valid values: Available, Pending and Deleting.
  late final pulumi.Output<String> status;
  /// The tags for the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the virtual private cloud (VPC) for which you want to create the IPv6 gateway.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [Ipv6Gateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ipv6Gateway]. {@macro pulumi_vpc_ipv6_gateway_ipv6_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ipv6Gateway(
    String name, {
    Ipv6GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/ipv6Gateway:Ipv6Gateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.businessStatus = registerOutput<String>('businessStatus');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.expiredTime = registerOutput<String>('expiredTime');
    this.instanceChargeType = registerOutput<String>('instanceChargeType');
    this.ipv6GatewayId = registerOutput<String>('ipv6GatewayId');
    this.ipv6GatewayName = registerOutput<String?>('ipv6GatewayName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.spec = registerOutput<String>('spec');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
