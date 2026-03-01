import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_to_connect_vpc_ip_block.dart';
import 'instance_zone_vswitch_security_group.dart';

/// Provides a Api Gateway Instance resource.
///
/// For information about Api Gateway Instance and how to use it, see [What is Instance](https://www.alibabacloud.com/help/en/api-gateway/product-overview/dedicated-instances).
///
/// > **NOTE:** Available since v1.218.0.
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
/// const _default = new alicloud.apigateway.Instance("default", {
///     instanceName: name,
///     instanceSpec: "api.s1.small",
///     httpsPolicy: "HTTPS2_TLS1_0",
///     zoneId: "cn-hangzhou-MAZ6(i,j,k)",
///     paymentType: "PayAsYouGo",
///     instanceType: "normal",
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
/// default = alicloud.apigateway.Instance("default",
///     instance_name=name,
///     instance_spec="api.s1.small",
///     https_policy="HTTPS2_TLS1_0",
///     zone_id="cn-hangzhou-MAZ6(i,j,k)",
///     payment_type="PayAsYouGo",
///     instance_type="normal")
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
///     var @default = new AliCloud.ApiGateway.Instance("default", new()
///     {
///         InstanceName = name,
///         InstanceSpec = "api.s1.small",
///         HttpsPolicy = "HTTPS2_TLS1_0",
///         ZoneId = "cn-hangzhou-MAZ6(i,j,k)",
///         PaymentType = "PayAsYouGo",
///         InstanceType = "normal",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
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
/// 		_, err := apigateway.NewInstance(ctx, "default", &apigateway.InstanceArgs{
/// 			InstanceName: pulumi.String(name),
/// 			InstanceSpec: pulumi.String("api.s1.small"),
/// 			HttpsPolicy:  pulumi.String("HTTPS2_TLS1_0"),
/// 			ZoneId:       pulumi.String("cn-hangzhou-MAZ6(i,j,k)"),
/// 			PaymentType:  pulumi.String("PayAsYouGo"),
/// 			InstanceType: pulumi.String("normal"),
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
/// import com.pulumi.alicloud.apigateway.Instance;
/// import com.pulumi.alicloud.apigateway.InstanceArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .instanceName(name)
///             .instanceSpec("api.s1.small")
///             .httpsPolicy("HTTPS2_TLS1_0")
///             .zoneId("cn-hangzhou-MAZ6(i,j,k)")
///             .paymentType("PayAsYouGo")
///             .instanceType("normal")
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
///     type: alicloud:apigateway:Instance
///     properties:
///       instanceName: ${name}
///       instanceSpec: api.s1.small
///       httpsPolicy: HTTPS2_TLS1_0
///       zoneId: cn-hangzhou-MAZ6(i,j,k)
///       paymentType: PayAsYouGo
///       instanceType: normal
/// ```
///
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const vpc = new alicloud.vpc.Network("vpc", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: name,
/// });
/// const vswitch1 = new alicloud.vpc.Switch("vswitch_1", {
///     vpcId: vpc.id,
///     cidrBlock: "172.16.0.0/16",
///     zoneId: "cn-hangzhou-j",
///     vswitchName: `${name}_1`,
/// });
/// const vswitch2 = new alicloud.vpc.Switch("vswitch_2", {
///     vpcId: vpc.id,
///     cidrBlock: "172.17.0.0/16",
///     zoneId: "cn-hangzhou-k",
///     vswitchName: `${name}_2`,
/// });
/// const securityGroup = new alicloud.ecs.SecurityGroup("security_group", {
///     vpcId: vpc.id,
///     securityGroupName: name,
/// });
/// const vpcIntegrationInstance = new alicloud.apigateway.Instance("vpc_integration_instance", {
///     instanceName: name,
///     httpsPolicy: "HTTPS2_TLS1_0",
///     instanceSpec: "api.s1.small",
///     instanceType: "vpc_connect",
///     paymentType: "PayAsYouGo",
///     userVpcId: vpc.id,
///     instanceCidr: "192.168.0.0/16",
///     zoneVswitchSecurityGroups: [
///         {
///             zoneId: vswitch1.zoneId,
///             vswitchId: vswitch1.id,
///             cidrBlock: vswitch1.cidrBlock,
///             securityGroup: securityGroup.id,
///         },
///         {
///             zoneId: vswitch2.zoneId,
///             vswitchId: vswitch2.id,
///             cidrBlock: vswitch2.cidrBlock,
///             securityGroup: securityGroup.id,
///         },
///     ],
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
/// vpc = alicloud.vpc.Network("vpc",
///     cidr_block="172.16.0.0/12",
///     vpc_name=name)
/// vswitch1 = alicloud.vpc.Switch("vswitch_1",
///     vpc_id=vpc.id,
///     cidr_block="172.16.0.0/16",
///     zone_id="cn-hangzhou-j",
///     vswitch_name=f"{name}_1")
/// vswitch2 = alicloud.vpc.Switch("vswitch_2",
///     vpc_id=vpc.id,
///     cidr_block="172.17.0.0/16",
///     zone_id="cn-hangzhou-k",
///     vswitch_name=f"{name}_2")
/// security_group = alicloud.ecs.SecurityGroup("security_group",
///     vpc_id=vpc.id,
///     security_group_name=name)
/// vpc_integration_instance = alicloud.apigateway.Instance("vpc_integration_instance",
///     instance_name=name,
///     https_policy="HTTPS2_TLS1_0",
///     instance_spec="api.s1.small",
///     instance_type="vpc_connect",
///     payment_type="PayAsYouGo",
///     user_vpc_id=vpc.id,
///     instance_cidr="192.168.0.0/16",
///     zone_vswitch_security_groups=[
///         {
///             "zone_id": vswitch1.zone_id,
///             "vswitch_id": vswitch1.id,
///             "cidr_block": vswitch1.cidr_block,
///             "security_group": security_group.id,
///         },
///         {
///             "zone_id": vswitch2.zone_id,
///             "vswitch_id": vswitch2.id,
///             "cidr_block": vswitch2.cidr_block,
///             "security_group": security_group.id,
///         },
///     ])
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
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = name,
///     });
///
///     var vswitch1 = new AliCloud.Vpc.Switch("vswitch_1", new()
///     {
///         VpcId = vpc.Id,
///         CidrBlock = "172.16.0.0/16",
///         ZoneId = "cn-hangzhou-j",
///         VswitchName = $"{name}_1",
///     });
///
///     var vswitch2 = new AliCloud.Vpc.Switch("vswitch_2", new()
///     {
///         VpcId = vpc.Id,
///         CidrBlock = "172.17.0.0/16",
///         ZoneId = "cn-hangzhou-k",
///         VswitchName = $"{name}_2",
///     });
///
///     var securityGroup = new AliCloud.Ecs.SecurityGroup("security_group", new()
///     {
///         VpcId = vpc.Id,
///         SecurityGroupName = name,
///     });
///
///     var vpcIntegrationInstance = new AliCloud.ApiGateway.Instance("vpc_integration_instance", new()
///     {
///         InstanceName = name,
///         HttpsPolicy = "HTTPS2_TLS1_0",
///         InstanceSpec = "api.s1.small",
///         InstanceType = "vpc_connect",
///         PaymentType = "PayAsYouGo",
///         UserVpcId = vpc.Id,
///         InstanceCidr = "192.168.0.0/16",
///         ZoneVswitchSecurityGroups = new[]
///         {
///             new AliCloud.ApiGateway.Inputs.InstanceZoneVswitchSecurityGroupArgs
///             {
///                 ZoneId = vswitch1.ZoneId,
///                 VswitchId = vswitch1.Id,
///                 CidrBlock = vswitch1.CidrBlock,
///                 SecurityGroup = securityGroup.Id,
///             },
///             new AliCloud.ApiGateway.Inputs.InstanceZoneVswitchSecurityGroupArgs
///             {
///                 ZoneId = vswitch2.ZoneId,
///                 VswitchId = vswitch2.Id,
///                 CidrBlock = vswitch2.CidrBlock,
///                 SecurityGroup = securityGroup.Id,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
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
/// 		vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 			VpcName:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vswitch1, err := vpc.NewSwitch(ctx, "vswitch_1", &vpc.SwitchArgs{
/// 			VpcId:       vpc.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/16"),
/// 			ZoneId:      pulumi.String("cn-hangzhou-j"),
/// 			VswitchName: pulumi.Sprintf("%v_1", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vswitch2, err := vpc.NewSwitch(ctx, "vswitch_2", &vpc.SwitchArgs{
/// 			VpcId:       vpc.ID(),
/// 			CidrBlock:   pulumi.String("172.17.0.0/16"),
/// 			ZoneId:      pulumi.String("cn-hangzhou-k"),
/// 			VswitchName: pulumi.Sprintf("%v_2", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		securityGroup, err := ecs.NewSecurityGroup(ctx, "security_group", &ecs.SecurityGroupArgs{
/// 			VpcId:             vpc.ID(),
/// 			SecurityGroupName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewInstance(ctx, "vpc_integration_instance", &apigateway.InstanceArgs{
/// 			InstanceName: pulumi.String(name),
/// 			HttpsPolicy:  pulumi.String("HTTPS2_TLS1_0"),
/// 			InstanceSpec: pulumi.String("api.s1.small"),
/// 			InstanceType: pulumi.String("vpc_connect"),
/// 			PaymentType:  pulumi.String("PayAsYouGo"),
/// 			UserVpcId:    vpc.ID(),
/// 			InstanceCidr: pulumi.String("192.168.0.0/16"),
/// 			ZoneVswitchSecurityGroups: apigateway.InstanceZoneVswitchSecurityGroupArray{
/// 				&apigateway.InstanceZoneVswitchSecurityGroupArgs{
/// 					ZoneId:        vswitch1.ZoneId,
/// 					VswitchId:     vswitch1.ID(),
/// 					CidrBlock:     vswitch1.CidrBlock,
/// 					SecurityGroup: securityGroup.ID(),
/// 				},
/// 				&apigateway.InstanceZoneVswitchSecurityGroupArgs{
/// 					ZoneId:        vswitch2.ZoneId,
/// 					VswitchId:     vswitch2.ID(),
/// 					CidrBlock:     vswitch2.CidrBlock,
/// 					SecurityGroup: securityGroup.ID(),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.apigateway.Instance;
/// import com.pulumi.alicloud.apigateway.InstanceArgs;
/// import com.pulumi.alicloud.apigateway.inputs.InstanceZoneVswitchSecurityGroupArgs;
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
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(name)
///             .build());
///
///         var vswitch1 = new Switch("vswitch1", SwitchArgs.builder()
///             .vpcId(vpc.id())
///             .cidrBlock("172.16.0.0/16")
///             .zoneId("cn-hangzhou-j")
///             .vswitchName(String.format("%s_1", name))
///             .build());
///
///         var vswitch2 = new Switch("vswitch2", SwitchArgs.builder()
///             .vpcId(vpc.id())
///             .cidrBlock("172.17.0.0/16")
///             .zoneId("cn-hangzhou-k")
///             .vswitchName(String.format("%s_2", name))
///             .build());
///
///         var securityGroup = new SecurityGroup("securityGroup", SecurityGroupArgs.builder()
///             .vpcId(vpc.id())
///             .securityGroupName(name)
///             .build());
///
///         var vpcIntegrationInstance = new Instance("vpcIntegrationInstance", InstanceArgs.builder()
///             .instanceName(name)
///             .httpsPolicy("HTTPS2_TLS1_0")
///             .instanceSpec("api.s1.small")
///             .instanceType("vpc_connect")
///             .paymentType("PayAsYouGo")
///             .userVpcId(vpc.id())
///             .instanceCidr("192.168.0.0/16")
///             .zoneVswitchSecurityGroups(
///                 InstanceZoneVswitchSecurityGroupArgs.builder()
///                     .zoneId(vswitch1.zoneId())
///                     .vswitchId(vswitch1.id())
///                     .cidrBlock(vswitch1.cidrBlock())
///                     .securityGroup(securityGroup.id())
///                     .build(),
///                 InstanceZoneVswitchSecurityGroupArgs.builder()
///                     .zoneId(vswitch2.zoneId())
///                     .vswitchId(vswitch2.id())
///                     .cidrBlock(vswitch2.cidrBlock())
///                     .securityGroup(securityGroup.id())
///                     .build())
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
///   vpc:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName: ${name}
///   vswitch1:
///     type: alicloud:vpc:Switch
///     name: vswitch_1
///     properties:
///       vpcId: ${vpc.id}
///       cidrBlock: 172.16.0.0/16
///       zoneId: cn-hangzhou-j
///       vswitchName: ${name}_1
///   vswitch2:
///     type: alicloud:vpc:Switch
///     name: vswitch_2
///     properties:
///       vpcId: ${vpc.id}
///       cidrBlock: 172.17.0.0/16
///       zoneId: cn-hangzhou-k
///       vswitchName: ${name}_2
///   securityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: security_group
///     properties:
///       vpcId: ${vpc.id}
///       securityGroupName: ${name}
///   vpcIntegrationInstance:
///     type: alicloud:apigateway:Instance
///     name: vpc_integration_instance
///     properties:
///       instanceName: ${name}
///       httpsPolicy: HTTPS2_TLS1_0
///       instanceSpec: api.s1.small
///       instanceType: vpc_connect
///       paymentType: PayAsYouGo
///       userVpcId: ${vpc.id}
///       instanceCidr: 192.168.0.0/16
///       zoneVswitchSecurityGroups:
///         - zoneId: ${vswitch1.zoneId}
///           vswitchId: ${vswitch1.id}
///           cidrBlock: ${vswitch1.cidrBlock}
///           securityGroup: ${securityGroup.id}
///         - zoneId: ${vswitch2.zoneId}
///           vswitchId: ${vswitch2.id}
///           cidrBlock: ${vswitch2.cidrBlock}
///           securityGroup: ${securityGroup.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Api Gateway Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:apigateway/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// (Available since v1.228.0) The CIDR blocks that can be accessed by the Vpc integration instance.
  late final pulumi.Output<String> connectCidrBlocks;
  /// Creation time.
  late final pulumi.Output<String> createTime;
  /// Indicates whether to delete the IP block that the VPC can access, conflict with `to_connect_vpc_ip_block`.
  late final pulumi.Output<String?> deleteVpcIpBlock;
  /// The time of the instance package. Valid values:
  /// - PricingCycle is **Month**, indicating monthly payment. The value range is **1** to **9**.
  /// - PricingCycle is **Year**, indicating annual payment. The value range is **1** to **3**.
  ///
  /// When the value of> ChargeType is **PrePaid**, this parameter is available and must be passed in.
  late final pulumi.Output<int?> duration;
  /// Specifies whether IPv6 egress capability is enabled.
  late final pulumi.Output<bool?> egressIpv6Enable;
  /// Https policy.
  late final pulumi.Output<String> httpsPolicy;
  /// The VpcID which the client at.
  late final pulumi.Output<String?> ingressVpcId;
  /// The user ID that the VpcID of `ingress_vpc_id` belongs to.
  late final pulumi.Output<String?> ingressVpcOwnerId;
  /// The VSwitch ID that belongs to the Vpc of `ingress_vpc_id`. Required when `ingress_vpc_id` is set.
  late final pulumi.Output<String?> ingressVswitchId;
  /// The CIDR block for the instance deployment. Valid values are:
  /// - `192.168.0.0/16`.
  /// - `172.16.0.0/12`.
  late final pulumi.Output<String> instanceCidr;
  /// Instance name.
  late final pulumi.Output<String> instanceName;
  /// Instance spec.
  late final pulumi.Output<String> instanceSpec;
  /// The type of the instance. Valid values are:
  late final pulumi.Output<String> instanceType;
  /// Specifies whether IPv6 ingress capability is enabled.
  late final pulumi.Output<bool?> ipv6Enabled;
  /// The payment type of the resource.
  late final pulumi.Output<String> paymentType;
  /// The subscription instance is of the subscription year or month type. This parameter is required when the Payment type is PrePaid. The value range is as follows:
  late final pulumi.Output<String?> pricingCycle;
  /// Specifies whether to skip the WAIT_SWITCH status of instance when modifying instance spec. Works only when instance spec change.
  late final pulumi.Output<bool?> skipWaitSwitch;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// Does ipv6 support.
  late final pulumi.Output<bool> supportIpv6;
  /// The additional IP block that the VPC integration instance can access, conflict with `delete_vpc_ip_block`. See `to_connect_vpc_ip_block` below.
  late final pulumi.Output<InstanceToConnectVpcIpBlock?> toConnectVpcIpBlock;
  /// User's VpcID.
  late final pulumi.Output<String?> userVpcId;
  /// Whether the slb of the Vpc supports.
  late final pulumi.Output<bool?> vpcSlbIntranetEnable;
  /// The zone where the instance is deployed.
  late final pulumi.Output<String> zoneId;
  /// Network configuration details for Vpc integration instance which includes the availability zone, VSwitch, and security group information. See `zone_vswitch_security_group` below.
  late final pulumi.Output<List<InstanceZoneVswitchSecurityGroup>?> zoneVswitchSecurityGroups;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_apigateway_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectCidrBlocks = registerOutput<String>('connectCidrBlocks');
    this.createTime = registerOutput<String>('createTime');
    this.deleteVpcIpBlock = registerOutput<String?>('deleteVpcIpBlock');
    this.duration = registerOutput<int?>('duration');
    this.egressIpv6Enable = registerOutput<bool?>('egressIpv6Enable');
    this.httpsPolicy = registerOutput<String>('httpsPolicy');
    this.ingressVpcId = registerOutput<String?>('ingressVpcId');
    this.ingressVpcOwnerId = registerOutput<String?>('ingressVpcOwnerId');
    this.ingressVswitchId = registerOutput<String?>('ingressVswitchId');
    this.instanceCidr = registerOutput<String>('instanceCidr');
    this.instanceName = registerOutput<String>('instanceName');
    this.instanceSpec = registerOutput<String>('instanceSpec');
    this.instanceType = registerOutput<String>('instanceType');
    this.ipv6Enabled = registerOutput<bool?>('ipv6Enabled');
    this.paymentType = registerOutput<String>('paymentType');
    this.pricingCycle = registerOutput<String?>('pricingCycle');
    this.skipWaitSwitch = registerOutput<bool?>('skipWaitSwitch');
    this.status = registerOutput<String>('status');
    this.supportIpv6 = registerOutput<bool>('supportIpv6');
    this.toConnectVpcIpBlock = registerOutput<InstanceToConnectVpcIpBlock?>('toConnectVpcIpBlock');
    this.userVpcId = registerOutput<String?>('userVpcId');
    this.vpcSlbIntranetEnable = registerOutput<bool?>('vpcSlbIntranetEnable');
    this.zoneId = registerOutput<String>('zoneId');
    this.zoneVswitchSecurityGroups = registerOutput<List<InstanceZoneVswitchSecurityGroup>?>('zoneVswitchSecurityGroups');
  }
}
