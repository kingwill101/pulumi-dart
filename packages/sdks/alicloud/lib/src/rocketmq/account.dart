import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_state.dart';

/// Provides a RocketMQ Account resource.
///
///
///
/// For information about RocketMQ Account and how to use it, see [What is Account](https://www.alibabacloud.com/help/en/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/developer-reference/api-rocketmq-2022-08-01-createinstanceaccount).
///
/// &gt; **NOTE:** Available since v1.245.0.
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
/// const defaultg6ZXs2 = new alicloud.vpc.Network("defaultg6ZXs2", {
///     description: "111",
///     cidrBlock: "192.168.0.0/16",
///     vpcName: "pop-example-vpc",
/// });
/// const defaultvMQbCy = new alicloud.vpc.Switch("defaultvMQbCy", {
///     vpcId: defaultg6ZXs2.id,
///     zoneId: "cn-hangzhou-j",
///     cidrBlock: "192.168.0.0/24",
///     vswitchName: "pop-example-vswitch",
/// });
/// const default9hAb83 = new alicloud.rocketmq.RocketMQInstance("default9hAb83", {
///     productInfo: {
///         msgProcessSpec: "rmq.p2.4xlarge",
///         sendReceiveRatio: 0.3,
///         messageRetentionTime: 70,
///     },
///     serviceCode: "rmq",
///     seriesCode: "professional",
///     paymentType: "PayAsYouGo",
///     instanceName: name,
///     subSeriesCode: "cluster_ha",
///     remark: "example",
///     software: {
///         maintainTime: "02:00-06:00",
///     },
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
///     networkInfo: {
///         vpcInfo: {
///             vpcId: defaultg6ZXs2.id,
///             vswitches: [{
///                 vswitchId: defaultvMQbCy.id,
///             }],
///         },
///         internetInfo: {
///             internetSpec: "enable",
///             flowOutType: "payByBandwidth",
///             flowOutBandwidth: 30,
///         },
///     },
///     aclInfo: {
///         defaultVpcAuthFree: false,
///         aclTypes: [
///             "default",
///             "apache_acl",
///         ],
///     },
/// });
/// const _default = new alicloud.rocketmq.Account("default", {
///     accountStatus: "ENABLE",
///     instanceId: default9hAb83.id,
///     username: "tfexample",
///     password: "1741835136",
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
/// defaultg6_zxs2 = alicloud.vpc.Network("defaultg6ZXs2",
///     description="111",
///     cidr_block="192.168.0.0/16",
///     vpc_name="pop-example-vpc")
/// defaultv_m_qb_cy = alicloud.vpc.Switch("defaultvMQbCy",
///     vpc_id=defaultg6_zxs2.id,
///     zone_id="cn-hangzhou-j",
///     cidr_block="192.168.0.0/24",
///     vswitch_name="pop-example-vswitch")
/// default9h_ab83 = alicloud.rocketmq.RocketMQInstance("default9hAb83",
///     product_info={
///         "msg_process_spec": "rmq.p2.4xlarge",
///         "send_receive_ratio": 0.3,
///         "message_retention_time": 70,
///     },
///     service_code="rmq",
///     series_code="professional",
///     payment_type="PayAsYouGo",
///     instance_name=name,
///     sub_series_code="cluster_ha",
///     remark="example",
///     software={
///         "maintain_time": "02:00-06:00",
///     },
///     tags={
///         "Created": "TF",
///         "For": "example",
///     },
///     network_info={
///         "vpc_info": {
///             "vpc_id": defaultg6_zxs2.id,
///             "vswitches": [{
///                 "vswitch_id": defaultv_m_qb_cy.id,
///             }],
///         },
///         "internet_info": {
///             "internet_spec": "enable",
///             "flow_out_type": "payByBandwidth",
///             "flow_out_bandwidth": 30,
///         },
///     },
///     acl_info={
///         "default_vpc_auth_free": False,
///         "acl_types": [
///             "default",
///             "apache_acl",
///         ],
///     })
/// default = alicloud.rocketmq.Account("default",
///     account_status="ENABLE",
///     instance_id=default9h_ab83.id,
///     username="tfexample",
///     password="1741835136")
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
///     var defaultg6ZXs2 = new AliCloud.Vpc.Network("defaultg6ZXs2", new()
///     {
///         Description = "111",
///         CidrBlock = "192.168.0.0/16",
///         VpcName = "pop-example-vpc",
///     });
///
///     var defaultvMQbCy = new AliCloud.Vpc.Switch("defaultvMQbCy", new()
///     {
///         VpcId = defaultg6ZXs2.Id,
///         ZoneId = "cn-hangzhou-j",
///         CidrBlock = "192.168.0.0/24",
///         VswitchName = "pop-example-vswitch",
///     });
///
///     var default9hAb83 = new AliCloud.RocketMQ.RocketMQInstance("default9hAb83", new()
///     {
///         ProductInfo = new AliCloud.RocketMQ.Inputs.RocketMQInstanceProductInfoArgs
///         {
///             MsgProcessSpec = "rmq.p2.4xlarge",
///             SendReceiveRatio = 0.3,
///             MessageRetentionTime = 70,
///         },
///         ServiceCode = "rmq",
///         SeriesCode = "professional",
///         PaymentType = "PayAsYouGo",
///         InstanceName = name,
///         SubSeriesCode = "cluster_ha",
///         Remark = "example",
///         Software = new AliCloud.RocketMQ.Inputs.RocketMQInstanceSoftwareArgs
///         {
///             MaintainTime = "02:00-06:00",
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///         NetworkInfo = new AliCloud.RocketMQ.Inputs.RocketMQInstanceNetworkInfoArgs
///         {
///             VpcInfo = new AliCloud.RocketMQ.Inputs.RocketMQInstanceNetworkInfoVpcInfoArgs
///             {
///                 VpcId = defaultg6ZXs2.Id,
///                 Vswitches = new[]
///                 {
///                     new AliCloud.RocketMQ.Inputs.RocketMQInstanceNetworkInfoVpcInfoVswitchArgs
///                     {
///                         VswitchId = defaultvMQbCy.Id,
///                     },
///                 },
///             },
///             InternetInfo = new AliCloud.RocketMQ.Inputs.RocketMQInstanceNetworkInfoInternetInfoArgs
///             {
///                 InternetSpec = "enable",
///                 FlowOutType = "payByBandwidth",
///                 FlowOutBandwidth = 30,
///             },
///         },
///         AclInfo = new AliCloud.RocketMQ.Inputs.RocketMQInstanceAclInfoArgs
///         {
///             DefaultVpcAuthFree = false,
///             AclTypes = new[]
///             {
///                 "default",
///                 "apache_acl",
///             },
///         },
///     });
///
///     var @default = new AliCloud.RocketMQ.Account("default", new()
///     {
///         AccountStatus = "ENABLE",
///         InstanceId = default9hAb83.Id,
///         Username = "tfexample",
///         Password = "1741835136",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rocketmq"
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
/// 		defaultg6ZXs2, err := vpc.NewNetwork(ctx, "defaultg6ZXs2", &vpc.NetworkArgs{
/// 			Description: pulumi.String("111"),
/// 			CidrBlock:   pulumi.String("192.168.0.0/16"),
/// 			VpcName:     pulumi.String("pop-example-vpc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultvMQbCy, err := vpc.NewSwitch(ctx, "defaultvMQbCy", &vpc.SwitchArgs{
/// 			VpcId:       defaultg6ZXs2.ID(),
/// 			ZoneId:      pulumi.String("cn-hangzhou-j"),
/// 			CidrBlock:   pulumi.String("192.168.0.0/24"),
/// 			VswitchName: pulumi.String("pop-example-vswitch"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default9hAb83, err := rocketmq.NewRocketMQInstance(ctx, "default9hAb83", &rocketmq.RocketMQInstanceArgs{
/// 			ProductInfo: &rocketmq.RocketMQInstanceProductInfoArgs{
/// 				MsgProcessSpec:       pulumi.String("rmq.p2.4xlarge"),
/// 				SendReceiveRatio:     pulumi.Float64(0.3),
/// 				MessageRetentionTime: pulumi.Int(70),
/// 			},
/// 			ServiceCode:   pulumi.String("rmq"),
/// 			SeriesCode:    pulumi.String("professional"),
/// 			PaymentType:   pulumi.String("PayAsYouGo"),
/// 			InstanceName:  pulumi.String(name),
/// 			SubSeriesCode: pulumi.String("cluster_ha"),
/// 			Remark:        pulumi.String("example"),
/// 			Software: &rocketmq.RocketMQInstanceSoftwareArgs{
/// 				MaintainTime: pulumi.String("02:00-06:00"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 			NetworkInfo: &rocketmq.RocketMQInstanceNetworkInfoArgs{
/// 				VpcInfo: &rocketmq.RocketMQInstanceNetworkInfoVpcInfoArgs{
/// 					VpcId: defaultg6ZXs2.ID(),
/// 					Vswitches: rocketmq.RocketMQInstanceNetworkInfoVpcInfoVswitchArray{
/// 						&rocketmq.RocketMQInstanceNetworkInfoVpcInfoVswitchArgs{
/// 							VswitchId: defaultvMQbCy.ID(),
/// 						},
/// 					},
/// 				},
/// 				InternetInfo: &rocketmq.RocketMQInstanceNetworkInfoInternetInfoArgs{
/// 					InternetSpec:     pulumi.String("enable"),
/// 					FlowOutType:      pulumi.String("payByBandwidth"),
/// 					FlowOutBandwidth: pulumi.Int(30),
/// 				},
/// 			},
/// 			AclInfo: &rocketmq.RocketMQInstanceAclInfoArgs{
/// 				DefaultVpcAuthFree: pulumi.Bool(false),
/// 				AclTypes: pulumi.StringArray{
/// 					pulumi.String("default"),
/// 					pulumi.String("apache_acl"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rocketmq.NewAccount(ctx, "default", &rocketmq.AccountArgs{
/// 			AccountStatus: pulumi.String("ENABLE"),
/// 			InstanceId:    default9hAb83.ID(),
/// 			Username:      pulumi.String("tfexample"),
/// 			Password:      pulumi.String("1741835136"),
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
/// import com.pulumi.alicloud.rocketmq.RocketMQInstance;
/// import com.pulumi.alicloud.rocketmq.RocketMQInstanceArgs;
/// import com.pulumi.alicloud.rocketmq.inputs.RocketMQInstanceProductInfoArgs;
/// import com.pulumi.alicloud.rocketmq.inputs.RocketMQInstanceSoftwareArgs;
/// import com.pulumi.alicloud.rocketmq.inputs.RocketMQInstanceNetworkInfoArgs;
/// import com.pulumi.alicloud.rocketmq.inputs.RocketMQInstanceNetworkInfoVpcInfoArgs;
/// import com.pulumi.alicloud.rocketmq.inputs.RocketMQInstanceNetworkInfoInternetInfoArgs;
/// import com.pulumi.alicloud.rocketmq.inputs.RocketMQInstanceAclInfoArgs;
/// import com.pulumi.alicloud.rocketmq.Account;
/// import com.pulumi.alicloud.rocketmq.AccountArgs;
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
///         var defaultg6ZXs2 = new Network("defaultg6ZXs2", NetworkArgs.builder()
///             .description("111")
///             .cidrBlock("192.168.0.0/16")
///             .vpcName("pop-example-vpc")
///             .build());
///
///         var defaultvMQbCy = new Switch("defaultvMQbCy", SwitchArgs.builder()
///             .vpcId(defaultg6ZXs2.id())
///             .zoneId("cn-hangzhou-j")
///             .cidrBlock("192.168.0.0/24")
///             .vswitchName("pop-example-vswitch")
///             .build());
///
///         var default9hAb83 = new RocketMQInstance("default9hAb83", RocketMQInstanceArgs.builder()
///             .productInfo(RocketMQInstanceProductInfoArgs.builder()
///                 .msgProcessSpec("rmq.p2.4xlarge")
///                 .sendReceiveRatio(0.3)
///                 .messageRetentionTime(70)
///                 .build())
///             .serviceCode("rmq")
///             .seriesCode("professional")
///             .paymentType("PayAsYouGo")
///             .instanceName(name)
///             .subSeriesCode("cluster_ha")
///             .remark("example")
///             .software(RocketMQInstanceSoftwareArgs.builder()
///                 .maintainTime("02:00-06:00")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .networkInfo(RocketMQInstanceNetworkInfoArgs.builder()
///                 .vpcInfo(RocketMQInstanceNetworkInfoVpcInfoArgs.builder()
///                     .vpcId(defaultg6ZXs2.id())
///                     .vswitches(RocketMQInstanceNetworkInfoVpcInfoVswitchArgs.builder()
///                         .vswitchId(defaultvMQbCy.id())
///                         .build())
///                     .build())
///                 .internetInfo(RocketMQInstanceNetworkInfoInternetInfoArgs.builder()
///                     .internetSpec("enable")
///                     .flowOutType("payByBandwidth")
///                     .flowOutBandwidth(30)
///                     .build())
///                 .build())
///             .aclInfo(RocketMQInstanceAclInfoArgs.builder()
///                 .defaultVpcAuthFree(false)
///                 .aclTypes(
///                     "default",
///                     "apache_acl")
///                 .build())
///             .build());
///
///         var default_ = new Account("default", AccountArgs.builder()
///             .accountStatus("ENABLE")
///             .instanceId(default9hAb83.id())
///             .username("tfexample")
///             .password("1741835136")
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
///   defaultg6ZXs2:
///     type: alicloud:vpc:Network
///     properties:
///       description: '111'
///       cidrBlock: 192.168.0.0/16
///       vpcName: pop-example-vpc
///   defaultvMQbCy:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultg6ZXs2.id}
///       zoneId: cn-hangzhou-j
///       cidrBlock: 192.168.0.0/24
///       vswitchName: pop-example-vswitch
///   default9hAb83:
///     type: alicloud:rocketmq:RocketMQInstance
///     properties:
///       productInfo:
///         msgProcessSpec: rmq.p2.4xlarge
///         sendReceiveRatio: '0.3'
///         messageRetentionTime: '70'
///       serviceCode: rmq
///       seriesCode: professional
///       paymentType: PayAsYouGo
///       instanceName: ${name}
///       subSeriesCode: cluster_ha
///       remark: example
///       software:
///         maintainTime: 02:00-06:00
///       tags:
///         Created: TF
///         For: example
///       networkInfo:
///         vpcInfo:
///           vpcId: ${defaultg6ZXs2.id}
///           vswitches:
///             - vswitchId: ${defaultvMQbCy.id}
///         internetInfo:
///           internetSpec: enable
///           flowOutType: payByBandwidth
///           flowOutBandwidth: '30'
///       aclInfo:
///         defaultVpcAuthFree: false
///         aclTypes:
///           - default
///           - apache_acl
///   default:
///     type: alicloud:rocketmq:Account
///     properties:
///       accountStatus: ENABLE
///       instanceId: ${default9hAb83.id}
///       username: tfexample
///       password: '1741835136'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RocketMQ Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rocketmq/account:Account example <instance_id>:<username>
/// ```
class Account extends pulumi.CustomResource {
  /// The status of the account. Valid values: `DISABLE`, `ENABLE`.
  late final pulumi.Output<String> accountStatus;

  /// The instance ID.
  late final pulumi.Output<String> instanceId;

  /// The password of the account.
  late final pulumi.Output<String> password;

  /// The username of the account.
  late final pulumi.Output<String> username;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_rocketmq_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rocketmq/account:Account',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountStatus = registerOutput<String>('accountStatus');
    instanceId = registerOutput<String>('instanceId');
    password = registerOutput<String>('password');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [Account] resource's state with the given [name] and [id].
  static Account get(
    String name,
    pulumi.Input<String> id, {
    AccountState? state,
  }) {
    return Account._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Account._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rocketmq/account:Account',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountStatus = registerOutput<String>('accountStatus');
    instanceId = registerOutput<String>('instanceId');
    password = registerOutput<String>('password');
    username = registerOutput<String>('username');
  }
}
