import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_access_mode.dart';
import 'nat_gateway_args.dart';
import 'nat_gateway_state.dart';

/// Provides a resource to create a VPC NAT Gateway.
///
/// > **NOTE:** Resource bandwidth packages will not be supported since 00:00 on November 4, 2017, and public IP can be replaced be elastic IPs.
/// If a Nat Gateway has already bought some bandwidth packages, it can not bind elastic IP and you have to submit the [work order](https://selfservice.console.aliyun.com/ticket/createIndex) to solve.
/// If you want to add public IP, you can use resource 'alicloud_eip_association' to bind several elastic IPs for one Nat Gateway.
///
/// > **NOTE:** From version 1.7.1, this resource has deprecated bandwidth packages.
/// But, in order to manage stock bandwidth packages, version 1.13.0 re-support configuring 'bandwidth_packages'.
///
/// > **NOTE:** When you create an enhanced NAT gateway for the first time, the system automatically creates the service-linked role AliyunServiceRoleForNatgw. Then, the system attaches the permission policy AliyunServiceRolePolicyForNatgw to the role. This allows the NAT gateway to access other resources on Alibaba Cloud. For more information, see Service-linked roles.
///
/// > **NOTE:** After you create an enhanced Internet NAT gateway, a route entry is automatically added to the route table of the VPC. The destination CIDR block of the route entry is 0.0.0.0/0 and the next hop is the NAT gateway. This ensures that traffic is routed to the NAT gateway.
///
/// > **NOTE:** Available since v1.37.0.
///
/// ## Example Usage
///
/// Basic usage
///
/// - create enhanced nat gateway
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.vpc.getEnhancedNatAvailableZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.0.0.0/8",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     zoneId: _default.then(_default => _default.zones?.[0]?.zoneId),
///     cidrBlock: "10.10.0.0/20",
///     vpcId: defaultNetwork.id,
/// });
/// const defaultNatGateway = new alicloud.vpc.NatGateway("default", {
///     vpcId: defaultNetwork.id,
///     natGatewayName: name,
///     paymentType: "PayAsYouGo",
///     vswitchId: defaultSwitch.id,
///     natType: "Enhanced",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.vpc.get_enhanced_nat_available_zones()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.0.0.0/8")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     zone_id=default.zones[0].zone_id,
///     cidr_block="10.10.0.0/20",
///     vpc_id=default_network.id)
/// default_nat_gateway = alicloud.vpc.NatGateway("default",
///     vpc_id=default_network.id,
///     nat_gateway_name=name,
///     payment_type="PayAsYouGo",
///     vswitch_id=default_switch.id,
///     nat_type="Enhanced")
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.Vpc.GetEnhancedNatAvailableZones.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.0.0.0/8",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         ZoneId = @default.Apply(@default => @default.Apply(getEnhancedNatAvailableZonesResult => getEnhancedNatAvailableZonesResult.Zones[0]?.ZoneId)),
///         CidrBlock = "10.10.0.0/20",
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultNatGateway = new AliCloud.Vpc.NatGateway("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         NatGatewayName = name,
///         PaymentType = "PayAsYouGo",
///         VswitchId = defaultSwitch.Id,
///         NatType = "Enhanced",
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
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := vpc.GetEnhancedNatAvailableZones(ctx, &vpc.GetEnhancedNatAvailableZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.0.0.0/8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			ZoneId:      pulumi.String(_default.Zones[0].ZoneId),
/// 			CidrBlock:   pulumi.String("10.10.0.0/20"),
/// 			VpcId:       defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewNatGateway(ctx, "default", &vpc.NatGatewayArgs{
/// 			VpcId:          defaultNetwork.ID(),
/// 			NatGatewayName: pulumi.String(name),
/// 			PaymentType:    pulumi.String("PayAsYouGo"),
/// 			VswitchId:      defaultSwitch.ID(),
/// 			NatType:        pulumi.String("Enhanced"),
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetEnhancedNatAvailableZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.vpc.NatGateway;
/// import com.pulumi.alicloud.vpc.NatGatewayArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var default = VpcFunctions.getEnhancedNatAvailableZones(GetEnhancedNatAvailableZonesArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.0.0.0/8")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .zoneId(default_.zones()[0].zoneId())
///             .cidrBlock("10.10.0.0/20")
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultNatGateway = new NatGateway("defaultNatGateway", NatGatewayArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .natGatewayName(name)
///             .paymentType("PayAsYouGo")
///             .vswitchId(defaultSwitch.id())
///             .natType("Enhanced")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.0.0.0/8
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       zoneId: ${default.zones[0].zoneId}
///       cidrBlock: 10.10.0.0/20
///       vpcId: ${defaultNetwork.id}
///   defaultNatGateway:
///     type: alicloud:vpc:NatGateway
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       natGatewayName: ${name}
///       paymentType: PayAsYouGo
///       vswitchId: ${defaultSwitch.id}
///       natType: Enhanced
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:vpc:getEnhancedNatAvailableZones
///       arguments: {}
/// ```
///
///
/// - transform nat from Normal to Enhanced
/// > **NOTE:** You must set `nat_type` to `Enhanced` and set `vswitch_id`.
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.vpc.getEnhancedNatAvailableZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.0.0.0/8",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     zoneId: _default.then(_default => _default.zones?.[0]?.zoneId),
///     cidrBlock: "10.10.0.0/20",
///     vpcId: defaultNetwork.id,
/// });
/// const defaultNatGateway = new alicloud.vpc.NatGateway("default", {
///     vpcId: defaultNetwork.id,
///     natGatewayName: name,
///     vswitchId: defaultSwitch.id,
///     natType: "Enhanced",
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
/// default = alicloud.vpc.get_enhanced_nat_available_zones()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.0.0.0/8")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     zone_id=default.zones[0].zone_id,
///     cidr_block="10.10.0.0/20",
///     vpc_id=default_network.id)
/// default_nat_gateway = alicloud.vpc.NatGateway("default",
///     vpc_id=default_network.id,
///     nat_gateway_name=name,
///     vswitch_id=default_switch.id,
///     nat_type="Enhanced")
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
///     var @default = AliCloud.Vpc.GetEnhancedNatAvailableZones.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.0.0.0/8",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         ZoneId = @default.Apply(@default => @default.Apply(getEnhancedNatAvailableZonesResult => getEnhancedNatAvailableZonesResult.Zones[0]?.ZoneId)),
///         CidrBlock = "10.10.0.0/20",
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultNatGateway = new AliCloud.Vpc.NatGateway("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         NatGatewayName = name,
///         VswitchId = defaultSwitch.Id,
///         NatType = "Enhanced",
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
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := vpc.GetEnhancedNatAvailableZones(ctx, &vpc.GetEnhancedNatAvailableZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.0.0.0/8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			ZoneId:      pulumi.String(_default.Zones[0].ZoneId),
/// 			CidrBlock:   pulumi.String("10.10.0.0/20"),
/// 			VpcId:       defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewNatGateway(ctx, "default", &vpc.NatGatewayArgs{
/// 			VpcId:          defaultNetwork.ID(),
/// 			NatGatewayName: pulumi.String(name),
/// 			VswitchId:      defaultSwitch.ID(),
/// 			NatType:        pulumi.String("Enhanced"),
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetEnhancedNatAvailableZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.vpc.NatGateway;
/// import com.pulumi.alicloud.vpc.NatGatewayArgs;
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
///         final var default = VpcFunctions.getEnhancedNatAvailableZones(GetEnhancedNatAvailableZonesArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.0.0.0/8")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .zoneId(default_.zones()[0].zoneId())
///             .cidrBlock("10.10.0.0/20")
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultNatGateway = new NatGateway("defaultNatGateway", NatGatewayArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .natGatewayName(name)
///             .vswitchId(defaultSwitch.id())
///             .natType("Enhanced")
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
///       cidrBlock: 10.0.0.0/8
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       zoneId: ${default.zones[0].zoneId}
///       cidrBlock: 10.10.0.0/20
///       vpcId: ${defaultNetwork.id}
///   defaultNatGateway:
///     type: alicloud:vpc:NatGateway
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       natGatewayName: ${name}
///       vswitchId: ${defaultSwitch.id}
///       natType: Enhanced
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:vpc:getEnhancedNatAvailableZones
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Nat gateway can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/natGateway:NatGateway example <id>
/// ```
class NatGateway extends pulumi.CustomResource {
  /// The access mode for reverse access to the VPC NAT gateway. See `access_mode` below.
  late final pulumi.Output<NatGatewayAccessMode> accessMode;
  /// Whether enable the deletion protection or not. Default value: `false`.
  /// - true: Enable deletion protection.
  /// - false: Disable deletion protection.
  late final pulumi.Output<bool> deletionProtection;
  /// Description of the nat gateway, This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Defaults to null.
  late final pulumi.Output<String?> description;
  /// Specifies whether to only precheck this request. Default value: `false`.
  late final pulumi.Output<bool?> dryRun;
  /// The EIP binding mode of the NAT gateway. Default value: `MULTI_BINDED`. Valid values:
  /// - `MULTI_BINDED`: Multi EIP network card visible mode.
  /// - `NAT`: EIP normal mode, compatible with IPv4 gateway.
  late final pulumi.Output<String> eipBindMode;
  /// Specifies whether to forcefully delete the NAT gateway.
  late final pulumi.Output<bool?> force;
  /// The nat gateway will auto create a forward item.
  late final pulumi.Output<String> forwardTableIds;
  /// Specifies whether to enable ICMP retrieval. Default value: `true`. Valid values:
  late final pulumi.Output<bool> icmpReplyEnabled;
  /// Field `instance_charge_type` has been deprecated from provider version 1.121.0. New field `payment_type` instead.
  late final pulumi.Output<String> instanceChargeType;
  /// The internet charge type. Valid values `PayByLcu`. The `PayByLcu` is only support enhanced NAT. **NOTE:** From version 1.137.0, `internet_charge_type` cannot be set to `PayBySpec`.
  late final pulumi.Output<String> internetChargeType;
  /// Field `name` has been deprecated from provider version 1.121.0. New field `nat_gateway_name` instead.
  late final pulumi.Output<String> name;
  /// Name of the nat gateway. The value can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin or end with a hyphen, and must not begin with http:// or https://. Defaults to null.
  late final pulumi.Output<String> natGatewayName;
  /// The type of NAT gateway. Valid values: `Enhanced`. **NOTE:** From version 1.137.0, `nat_type` cannot be set to `Normal`.
  late final pulumi.Output<String> natType;
  /// Indicates the type of the created NAT gateway. Valid values `internet` and `intranet`. `internet`: Internet NAT Gateway. `intranet`: VPC NAT Gateway.
  late final pulumi.Output<String> networkType;
  /// The billing method of the NAT gateway. Valid values are `PayAsYouGo`. Default to `PayAsYouGo`.
  late final pulumi.Output<String> paymentType;
  /// The duration that you will buy the resource, in month. It is valid when `payment_type` is `Subscription`. Valid values: [1-9, 12, 24, 36]. At present, the provider does not support modify "period" and you can do that via web console. **NOTE:** International station only supports `Subscription`.
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  late final pulumi.Output<int?> period;
  /// Specifies whether to enable PrivateLink. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> privateLinkEnabled;
  /// The nat gateway will auto create a snat item.
  late final pulumi.Output<String> snatTableIds;
  /// The specification of the nat gateway. Valid values are `Small`, `Middle` and `Large`. Effective when `internet_charge_type` is `PayBySpec` and `network_type` is `internet`. Details refer to [Nat Gateway Specification](https://help.aliyun.com/document_detail/203500.html).
  late final pulumi.Output<String> specification;
  /// (Available since v1.121.0) The status of NAT gateway.
  late final pulumi.Output<String> status;
  /// The tags of NAT gateway.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The VPC ID.
  late final pulumi.Output<String> vpcId;
  /// The id of VSwitch.
  late final pulumi.Output<String?> vswitchId;

  /// Creates a new [NatGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatGateway]. {@macro pulumi_vpc_nat_gateway_nat_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatGateway(
    String name, {
    NatGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/natGateway:NatGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessMode = registerOutput<NatGatewayAccessMode>('accessMode');
    this.deletionProtection = registerOutput<bool>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.eipBindMode = registerOutput<String>('eipBindMode');
    this.force = registerOutput<bool?>('force');
    this.forwardTableIds = registerOutput<String>('forwardTableIds');
    this.icmpReplyEnabled = registerOutput<bool>('icmpReplyEnabled');
    this.instanceChargeType = registerOutput<String>('instanceChargeType');
    this.internetChargeType = registerOutput<String>('internetChargeType');
    this.name = registerOutput<String>('name');
    this.natGatewayName = registerOutput<String>('natGatewayName');
    this.natType = registerOutput<String>('natType');
    this.networkType = registerOutput<String>('networkType');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.privateLinkEnabled = registerOutput<bool?>('privateLinkEnabled');
    this.snatTableIds = registerOutput<String>('snatTableIds');
    this.specification = registerOutput<String>('specification');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String?>('vswitchId');
  }

  /// Gets an existing [NatGateway] resource's state with the given [name] and [id].
  static NatGateway get(
    String name,
    pulumi.Input<String> id, {
    NatGatewayState? state,
  }) {
    return NatGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NatGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/natGateway:NatGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessMode = registerOutput<NatGatewayAccessMode>('accessMode');
    this.deletionProtection = registerOutput<bool>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.eipBindMode = registerOutput<String>('eipBindMode');
    this.force = registerOutput<bool?>('force');
    this.forwardTableIds = registerOutput<String>('forwardTableIds');
    this.icmpReplyEnabled = registerOutput<bool>('icmpReplyEnabled');
    this.instanceChargeType = registerOutput<String>('instanceChargeType');
    this.internetChargeType = registerOutput<String>('internetChargeType');
    this.name = registerOutput<String>('name');
    this.natGatewayName = registerOutput<String>('natGatewayName');
    this.natType = registerOutput<String>('natType');
    this.networkType = registerOutput<String>('networkType');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.privateLinkEnabled = registerOutput<bool?>('privateLinkEnabled');
    this.snatTableIds = registerOutput<String>('snatTableIds');
    this.specification = registerOutput<String>('specification');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String?>('vswitchId');
  }
}
