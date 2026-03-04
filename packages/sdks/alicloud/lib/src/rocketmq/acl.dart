import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_args.dart';
import 'acl_state.dart';

/// Provides a RocketMQ Acl resource.
///
///
///
/// For information about RocketMQ Acl and how to use it, see [What is Acl](https://www.alibabacloud.com/help/en/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/developer-reference/api-rocketmq-2022-08-01-createinstanceacl).
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
/// const defaultrqDtGm = new alicloud.vpc.Network("defaultrqDtGm", {
///     description: "1111",
///     cidrBlock: "192.168.0.0/16",
///     vpcName: "pop-example-vpc",
/// });
/// const defaultjUrTYm = new alicloud.vpc.Switch("defaultjUrTYm", {
///     vpcId: defaultrqDtGm.id,
///     zoneId: "cn-hangzhou-j",
///     cidrBlock: "192.168.0.0/24",
///     vswitchName: "pop-example-vswitch",
/// });
/// const defaultKJZNVM = new alicloud.rocketmq.RocketMQInstance("defaultKJZNVM", {
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
///     networkInfo: {
///         vpcInfo: {
///             vpcId: defaultrqDtGm.id,
///             vswitches: [{
///                 vswitchId: defaultjUrTYm.id,
///             }],
///         },
///         internetInfo: {
///             internetSpec: "enable",
///             flowOutType: "payByBandwidth",
///             flowOutBandwidth: 5,
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
/// const defaultMeNlxe = new alicloud.rocketmq.Account("defaultMeNlxe", {
///     accountStatus: "ENABLE",
///     instanceId: defaultKJZNVM.id,
///     username: "tfexample",
///     password: "123456",
/// });
/// const defaultVA0zog = new alicloud.rocketmq.RocketMQTopic("defaultVA0zog", {
///     instanceId: defaultKJZNVM.id,
///     messageType: "NORMAL",
///     topicName: "tfexample",
/// });
/// const _default = new alicloud.rocketmq.Acl("default", {
///     actions: [
///         "Pub",
///         "Sub",
///     ],
///     instanceId: defaultKJZNVM.id,
///     username: defaultMeNlxe.username,
///     resourceName: defaultVA0zog.topicName,
///     resourceType: "Topic",
///     decision: "Deny",
///     ipWhitelists: ["192.168.5.5"],
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
/// defaultrq_dt_gm = alicloud.vpc.Network("defaultrqDtGm",
///     description="1111",
///     cidr_block="192.168.0.0/16",
///     vpc_name="pop-example-vpc")
/// defaultj_ur_t_ym = alicloud.vpc.Switch("defaultjUrTYm",
///     vpc_id=defaultrq_dt_gm.id,
///     zone_id="cn-hangzhou-j",
///     cidr_block="192.168.0.0/24",
///     vswitch_name="pop-example-vswitch")
/// default_kjznvm = alicloud.rocketmq.RocketMQInstance("defaultKJZNVM",
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
///     network_info={
///         "vpc_info": {
///             "vpc_id": defaultrq_dt_gm.id,
///             "vswitches": [{
///                 "vswitch_id": defaultj_ur_t_ym.id,
///             }],
///         },
///         "internet_info": {
///             "internet_spec": "enable",
///             "flow_out_type": "payByBandwidth",
///             "flow_out_bandwidth": 5,
///         },
///     },
///     acl_info={
///         "default_vpc_auth_free": False,
///         "acl_types": [
///             "default",
///             "apache_acl",
///         ],
///     })
/// default_me_nlxe = alicloud.rocketmq.Account("defaultMeNlxe",
///     account_status="ENABLE",
///     instance_id=default_kjznvm.id,
///     username="tfexample",
///     password="123456")
/// default_va0zog = alicloud.rocketmq.RocketMQTopic("defaultVA0zog",
///     instance_id=default_kjznvm.id,
///     message_type="NORMAL",
///     topic_name="tfexample")
/// default = alicloud.rocketmq.Acl("default",
///     actions=[
///         "Pub",
///         "Sub",
///     ],
///     instance_id=default_kjznvm.id,
///     username=default_me_nlxe.username,
///     resource_name_=default_va0zog.topic_name,
///     resource_type="Topic",
///     decision="Deny",
///     ip_whitelists=["192.168.5.5"])
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
///     var defaultrqDtGm = new AliCloud.Vpc.Network("defaultrqDtGm", new()
///     {
///         Description = "1111",
///         CidrBlock = "192.168.0.0/16",
///         VpcName = "pop-example-vpc",
///     });
///
///     var defaultjUrTYm = new AliCloud.Vpc.Switch("defaultjUrTYm", new()
///     {
///         VpcId = defaultrqDtGm.Id,
///         ZoneId = "cn-hangzhou-j",
///         CidrBlock = "192.168.0.0/24",
///         VswitchName = "pop-example-vswitch",
///     });
///
///     var defaultKJZNVM = new AliCloud.RocketMQ.RocketMQInstance("defaultKJZNVM", new()
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
///         NetworkInfo = new AliCloud.RocketMQ.Inputs.RocketMQInstanceNetworkInfoArgs
///         {
///             VpcInfo = new AliCloud.RocketMQ.Inputs.RocketMQInstanceNetworkInfoVpcInfoArgs
///             {
///                 VpcId = defaultrqDtGm.Id,
///                 Vswitches = new[]
///                 {
///                     new AliCloud.RocketMQ.Inputs.RocketMQInstanceNetworkInfoVpcInfoVswitchArgs
///                     {
///                         VswitchId = defaultjUrTYm.Id,
///                     },
///                 },
///             },
///             InternetInfo = new AliCloud.RocketMQ.Inputs.RocketMQInstanceNetworkInfoInternetInfoArgs
///             {
///                 InternetSpec = "enable",
///                 FlowOutType = "payByBandwidth",
///                 FlowOutBandwidth = 5,
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
///     var defaultMeNlxe = new AliCloud.RocketMQ.Account("defaultMeNlxe", new()
///     {
///         AccountStatus = "ENABLE",
///         InstanceId = defaultKJZNVM.Id,
///         Username = "tfexample",
///         Password = "123456",
///     });
///
///     var defaultVA0zog = new AliCloud.RocketMQ.RocketMQTopic("defaultVA0zog", new()
///     {
///         InstanceId = defaultKJZNVM.Id,
///         MessageType = "NORMAL",
///         TopicName = "tfexample",
///     });
///
///     var @default = new AliCloud.RocketMQ.Acl("default", new()
///     {
///         Actions = new[]
///         {
///             "Pub",
///             "Sub",
///         },
///         InstanceId = defaultKJZNVM.Id,
///         Username = defaultMeNlxe.Username,
///         ResourceName = defaultVA0zog.TopicName,
///         ResourceType = "Topic",
///         Decision = "Deny",
///         IpWhitelists = new[]
///         {
///             "192.168.5.5",
///         },
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
/// 		defaultrqDtGm, err := vpc.NewNetwork(ctx, "defaultrqDtGm", &vpc.NetworkArgs{
/// 			Description: pulumi.String("1111"),
/// 			CidrBlock:   pulumi.String("192.168.0.0/16"),
/// 			VpcName:     pulumi.String("pop-example-vpc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultjUrTYm, err := vpc.NewSwitch(ctx, "defaultjUrTYm", &vpc.SwitchArgs{
/// 			VpcId:       defaultrqDtGm.ID(),
/// 			ZoneId:      pulumi.String("cn-hangzhou-j"),
/// 			CidrBlock:   pulumi.String("192.168.0.0/24"),
/// 			VswitchName: pulumi.String("pop-example-vswitch"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultKJZNVM, err := rocketmq.NewRocketMQInstance(ctx, "defaultKJZNVM", &rocketmq.RocketMQInstanceArgs{
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
/// 			NetworkInfo: &rocketmq.RocketMQInstanceNetworkInfoArgs{
/// 				VpcInfo: &rocketmq.RocketMQInstanceNetworkInfoVpcInfoArgs{
/// 					VpcId: defaultrqDtGm.ID(),
/// 					Vswitches: rocketmq.RocketMQInstanceNetworkInfoVpcInfoVswitchArray{
/// 						&rocketmq.RocketMQInstanceNetworkInfoVpcInfoVswitchArgs{
/// 							VswitchId: defaultjUrTYm.ID(),
/// 						},
/// 					},
/// 				},
/// 				InternetInfo: &rocketmq.RocketMQInstanceNetworkInfoInternetInfoArgs{
/// 					InternetSpec:     pulumi.String("enable"),
/// 					FlowOutType:      pulumi.String("payByBandwidth"),
/// 					FlowOutBandwidth: pulumi.Int(5),
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
/// 		defaultMeNlxe, err := rocketmq.NewAccount(ctx, "defaultMeNlxe", &rocketmq.AccountArgs{
/// 			AccountStatus: pulumi.String("ENABLE"),
/// 			InstanceId:    defaultKJZNVM.ID(),
/// 			Username:      pulumi.String("tfexample"),
/// 			Password:      pulumi.String("123456"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVA0zog, err := rocketmq.NewRocketMQTopic(ctx, "defaultVA0zog", &rocketmq.RocketMQTopicArgs{
/// 			InstanceId:  defaultKJZNVM.ID(),
/// 			MessageType: pulumi.String("NORMAL"),
/// 			TopicName:   pulumi.String("tfexample"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rocketmq.NewAcl(ctx, "default", &rocketmq.AclArgs{
/// 			Actions: pulumi.StringArray{
/// 				pulumi.String("Pub"),
/// 				pulumi.String("Sub"),
/// 			},
/// 			InstanceId:   defaultKJZNVM.ID(),
/// 			Username:     defaultMeNlxe.Username,
/// 			ResourceName: defaultVA0zog.TopicName,
/// 			ResourceType: pulumi.String("Topic"),
/// 			Decision:     pulumi.String("Deny"),
/// 			IpWhitelists: pulumi.StringArray{
/// 				pulumi.String("192.168.5.5"),
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
/// import com.pulumi.alicloud.rocketmq.RocketMQInstance;
/// import com.pulumi.alicloud.rocketmq.RocketMQInstanceArgs;
/// import com.pulumi.alicloud.rocketmq.inputs.RocketMQInstanceProductInfoArgs;
/// import com.pulumi.alicloud.rocketmq.inputs.RocketMQInstanceNetworkInfoArgs;
/// import com.pulumi.alicloud.rocketmq.inputs.RocketMQInstanceNetworkInfoVpcInfoArgs;
/// import com.pulumi.alicloud.rocketmq.inputs.RocketMQInstanceNetworkInfoInternetInfoArgs;
/// import com.pulumi.alicloud.rocketmq.inputs.RocketMQInstanceAclInfoArgs;
/// import com.pulumi.alicloud.rocketmq.Account;
/// import com.pulumi.alicloud.rocketmq.AccountArgs;
/// import com.pulumi.alicloud.rocketmq.RocketMQTopic;
/// import com.pulumi.alicloud.rocketmq.RocketMQTopicArgs;
/// import com.pulumi.alicloud.rocketmq.Acl;
/// import com.pulumi.alicloud.rocketmq.AclArgs;
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
///         var defaultrqDtGm = new Network("defaultrqDtGm", NetworkArgs.builder()
///             .description("1111")
///             .cidrBlock("192.168.0.0/16")
///             .vpcName("pop-example-vpc")
///             .build());
///
///         var defaultjUrTYm = new Switch("defaultjUrTYm", SwitchArgs.builder()
///             .vpcId(defaultrqDtGm.id())
///             .zoneId("cn-hangzhou-j")
///             .cidrBlock("192.168.0.0/24")
///             .vswitchName("pop-example-vswitch")
///             .build());
///
///         var defaultKJZNVM = new RocketMQInstance("defaultKJZNVM", RocketMQInstanceArgs.builder()
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
///             .networkInfo(RocketMQInstanceNetworkInfoArgs.builder()
///                 .vpcInfo(RocketMQInstanceNetworkInfoVpcInfoArgs.builder()
///                     .vpcId(defaultrqDtGm.id())
///                     .vswitches(RocketMQInstanceNetworkInfoVpcInfoVswitchArgs.builder()
///                         .vswitchId(defaultjUrTYm.id())
///                         .build())
///                     .build())
///                 .internetInfo(RocketMQInstanceNetworkInfoInternetInfoArgs.builder()
///                     .internetSpec("enable")
///                     .flowOutType("payByBandwidth")
///                     .flowOutBandwidth(5)
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
///         var defaultMeNlxe = new Account("defaultMeNlxe", AccountArgs.builder()
///             .accountStatus("ENABLE")
///             .instanceId(defaultKJZNVM.id())
///             .username("tfexample")
///             .password("123456")
///             .build());
///
///         var defaultVA0zog = new RocketMQTopic("defaultVA0zog", RocketMQTopicArgs.builder()
///             .instanceId(defaultKJZNVM.id())
///             .messageType("NORMAL")
///             .topicName("tfexample")
///             .build());
///
///         var default_ = new Acl("default", AclArgs.builder()
///             .actions(
///                 "Pub",
///                 "Sub")
///             .instanceId(defaultKJZNVM.id())
///             .username(defaultMeNlxe.username())
///             .resourceName(defaultVA0zog.topicName())
///             .resourceType("Topic")
///             .decision("Deny")
///             .ipWhitelists("192.168.5.5")
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
///   defaultrqDtGm:
///     type: alicloud:vpc:Network
///     properties:
///       description: '1111'
///       cidrBlock: 192.168.0.0/16
///       vpcName: pop-example-vpc
///   defaultjUrTYm:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultrqDtGm.id}
///       zoneId: cn-hangzhou-j
///       cidrBlock: 192.168.0.0/24
///       vswitchName: pop-example-vswitch
///   defaultKJZNVM:
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
///       networkInfo:
///         vpcInfo:
///           vpcId: ${defaultrqDtGm.id}
///           vswitches:
///             - vswitchId: ${defaultjUrTYm.id}
///         internetInfo:
///           internetSpec: enable
///           flowOutType: payByBandwidth
///           flowOutBandwidth: '5'
///       aclInfo:
///         defaultVpcAuthFree: false
///         aclTypes:
///           - default
///           - apache_acl
///   defaultMeNlxe:
///     type: alicloud:rocketmq:Account
///     properties:
///       accountStatus: ENABLE
///       instanceId: ${defaultKJZNVM.id}
///       username: tfexample
///       password: '123456'
///   defaultVA0zog:
///     type: alicloud:rocketmq:RocketMQTopic
///     properties:
///       instanceId: ${defaultKJZNVM.id}
///       messageType: NORMAL
///       topicName: tfexample
///   default:
///     type: alicloud:rocketmq:Acl
///     properties:
///       actions:
///         - Pub
///         - Sub
///       instanceId: ${defaultKJZNVM.id}
///       username: ${defaultMeNlxe.username}
///       resourceName: ${defaultVA0zog.topicName}
///       resourceType: Topic
///       decision: Deny
///       ipWhitelists:
///         - 192.168.5.5
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RocketMQ Acl can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rocketmq/acl:Acl example <instance_id>:<username>:<resource_type>:<resource_name>
/// ```
class Acl extends pulumi.CustomResource {
  /// The type of operations that can be performed on the resource. Valid values:
  /// - If `resource_type` is set to `Topic`. Valid values: `Pub`, `Sub`.
  /// - If `resource_type` is set to `Group`. Valid values: `Sub`.
  late final pulumi.Output<List<String>> actions;

  /// The decision result of the authorization. Valid values: `Deny`, `Allow`.
  late final pulumi.Output<String> decision;

  /// The instance ID.
  late final pulumi.Output<String> instanceId;

  /// The IP address whitelists.
  late final pulumi.Output<List<String>> ipWhitelists;

  /// The name of the resource on which you want to grant permissions.
  late final pulumi.Output<String> resourceName;

  /// The type of the resource on which you want to grant permissions. Valid values: `Group`, `Topic`.
  late final pulumi.Output<String> resourceType;

  /// The username of the account.
  late final pulumi.Output<String> username;

  /// Creates a new [Acl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Acl]. {@macro pulumi_rocketmq_acl_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Acl(String name, {AclArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:rocketmq/acl:Acl',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    actions = registerOutput<List<String>>('actions');
    decision = registerOutput<String>('decision');
    instanceId = registerOutput<String>('instanceId');
    ipWhitelists = registerOutput<List<String>>('ipWhitelists');
    resourceName = registerOutput<String>('resourceName');
    resourceType = registerOutput<String>('resourceType');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [Acl] resource's state with the given [name] and [id].
  static Acl get(String name, pulumi.Input<String> id, {AclState? state}) {
    return Acl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Acl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rocketmq/acl:Acl',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    actions = registerOutput<List<String>>('actions');
    decision = registerOutput<String>('decision');
    instanceId = registerOutput<String>('instanceId');
    ipWhitelists = registerOutput<List<String>>('ipWhitelists');
    resourceName = registerOutput<String>('resourceName');
    resourceType = registerOutput<String>('resourceType');
    username = registerOutput<String>('username');
  }
}
