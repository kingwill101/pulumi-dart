import 'package:pulumi/pulumi.dart' as pulumi;
import 'rocket_mqtopic_args.dart';
import 'rocket_mqtopic_state.dart';

/// Provides a RocketMQ Topic resource.
///
/// For information about RocketMQ Topic and how to use it, see [What is Topic](https://www.alibabacloud.com/help/en/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/developer-reference/api-rocketmq-2022-08-01-createtopic).
///
/// &gt; **NOTE:** Available since v1.211.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const createVpc = new alicloud.vpc.Network("createVpc", {
///     description: "example",
///     cidrBlock: "172.16.0.0/12",
///     vpcName: name,
/// });
/// const createVswitch = new alicloud.vpc.Switch("createVswitch", {
///     description: "example",
///     vpcId: createVpc.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     cidrBlock: "172.16.0.0/24",
///     vswitchName: name,
/// });
/// const createInstance = new alicloud.rocketmq.RocketMQInstance("createInstance", {
///     productInfo: {
///         msgProcessSpec: "rmq.u2.10xlarge",
///         sendReceiveRatio: 0.3,
///         messageRetentionTime: 70,
///     },
///     serviceCode: "rmq",
///     paymentType: "PayAsYouGo",
///     instanceName: name,
///     subSeriesCode: "cluster_ha",
///     remark: "example",
///     ipWhitelists: [
///         "192.168.0.0/16",
///         "10.10.0.0/16",
///         "172.168.0.0/16",
///     ],
///     software: {
///         maintainTime: "02:00-06:00",
///     },
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
///     seriesCode: "ultimate",
///     networkInfo: {
///         vpcInfo: {
///             vpcId: createVpc.id,
///             vswitches: [{
///                 vswitchId: createVswitch.id,
///             }],
///         },
///         internetInfo: {
///             internetSpec: "enable",
///             flowOutType: "payByBandwidth",
///             flowOutBandwidth: 30,
///         },
///     },
/// });
/// const defaultRocketMQTopic = new alicloud.rocketmq.RocketMQTopic("default", {
///     remark: "example",
///     instanceId: createInstance.id,
///     messageType: "NORMAL",
///     topicName: name,
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
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// create_vpc = alicloud.vpc.Network("createVpc",
///     description="example",
///     cidr_block="172.16.0.0/12",
///     vpc_name=name)
/// create_vswitch = alicloud.vpc.Switch("createVswitch",
///     description="example",
///     vpc_id=create_vpc.id,
///     zone_id=default.zones[0].id,
///     cidr_block="172.16.0.0/24",
///     vswitch_name=name)
/// create_instance = alicloud.rocketmq.RocketMQInstance("createInstance",
///     product_info={
///         "msg_process_spec": "rmq.u2.10xlarge",
///         "send_receive_ratio": 0.3,
///         "message_retention_time": 70,
///     },
///     service_code="rmq",
///     payment_type="PayAsYouGo",
///     instance_name=name,
///     sub_series_code="cluster_ha",
///     remark="example",
///     ip_whitelists=[
///         "192.168.0.0/16",
///         "10.10.0.0/16",
///         "172.168.0.0/16",
///     ],
///     software={
///         "maintain_time": "02:00-06:00",
///     },
///     tags={
///         "Created": "TF",
///         "For": "example",
///     },
///     series_code="ultimate",
///     network_info={
///         "vpc_info": {
///             "vpc_id": create_vpc.id,
///             "vswitches": [{
///                 "vswitch_id": create_vswitch.id,
///             }],
///         },
///         "internet_info": {
///             "internet_spec": "enable",
///             "flow_out_type": "payByBandwidth",
///             "flow_out_bandwidth": 30,
///         },
///     })
/// default_rocket_mq_topic = alicloud.rocketmq.RocketMQTopic("default",
///     remark="example",
///     instance_id=create_instance.id,
///     message_type="NORMAL",
///     topic_name=name)
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var createVpc = new AliCloud.Vpc.Network("createVpc", new()
///     {
///         Description = "example",
///         CidrBlock = "172.16.0.0/12",
///         VpcName = name,
///     });
///
///     var createVswitch = new AliCloud.Vpc.Switch("createVswitch", new()
///     {
///         Description = "example",
///         VpcId = createVpc.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         CidrBlock = "172.16.0.0/24",
///         VswitchName = name,
///     });
///
///     var createInstance = new AliCloud.RocketMQ.RocketMQInstance("createInstance", new()
///     {
///         ProductInfo = new AliCloud.RocketMQ.Inputs.RocketMQInstanceProductInfoArgs
///         {
///             MsgProcessSpec = "rmq.u2.10xlarge",
///             SendReceiveRatio = 0.3,
///             MessageRetentionTime = 70,
///         },
///         ServiceCode = "rmq",
///         PaymentType = "PayAsYouGo",
///         InstanceName = name,
///         SubSeriesCode = "cluster_ha",
///         Remark = "example",
///         IpWhitelists = new[]
///         {
///             "192.168.0.0/16",
///             "10.10.0.0/16",
///             "172.168.0.0/16",
///         },
///         Software = new AliCloud.RocketMQ.Inputs.RocketMQInstanceSoftwareArgs
///         {
///             MaintainTime = "02:00-06:00",
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///         SeriesCode = "ultimate",
///         NetworkInfo = new AliCloud.RocketMQ.Inputs.RocketMQInstanceNetworkInfoArgs
///         {
///             VpcInfo = new AliCloud.RocketMQ.Inputs.RocketMQInstanceNetworkInfoVpcInfoArgs
///             {
///                 VpcId = createVpc.Id,
///                 Vswitches = new[]
///                 {
///                     new AliCloud.RocketMQ.Inputs.RocketMQInstanceNetworkInfoVpcInfoVswitchArgs
///                     {
///                         VswitchId = createVswitch.Id,
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
///     });
///
///     var defaultRocketMQTopic = new AliCloud.RocketMQ.RocketMQTopic("default", new()
///     {
///         Remark = "example",
///         InstanceId = createInstance.Id,
///         MessageType = "NORMAL",
///         TopicName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createVpc, err := vpc.NewNetwork(ctx, "createVpc", &vpc.NetworkArgs{
/// 			Description: pulumi.String("example"),
/// 			CidrBlock:   pulumi.String("172.16.0.0/12"),
/// 			VpcName:     pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createVswitch, err := vpc.NewSwitch(ctx, "createVswitch", &vpc.SwitchArgs{
/// 			Description: pulumi.String("example"),
/// 			VpcId:       createVpc.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createInstance, err := rocketmq.NewRocketMQInstance(ctx, "createInstance", &rocketmq.RocketMQInstanceArgs{
/// 			ProductInfo: &rocketmq.RocketMQInstanceProductInfoArgs{
/// 				MsgProcessSpec:       pulumi.String("rmq.u2.10xlarge"),
/// 				SendReceiveRatio:     pulumi.Float64(0.3),
/// 				MessageRetentionTime: pulumi.Int(70),
/// 			},
/// 			ServiceCode:   pulumi.String("rmq"),
/// 			PaymentType:   pulumi.String("PayAsYouGo"),
/// 			InstanceName:  pulumi.String(name),
/// 			SubSeriesCode: pulumi.String("cluster_ha"),
/// 			Remark:        pulumi.String("example"),
/// 			IpWhitelists: pulumi.StringArray{
/// 				pulumi.String("192.168.0.0/16"),
/// 				pulumi.String("10.10.0.0/16"),
/// 				pulumi.String("172.168.0.0/16"),
/// 			},
/// 			Software: &rocketmq.RocketMQInstanceSoftwareArgs{
/// 				MaintainTime: pulumi.String("02:00-06:00"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 			SeriesCode: pulumi.String("ultimate"),
/// 			NetworkInfo: &rocketmq.RocketMQInstanceNetworkInfoArgs{
/// 				VpcInfo: &rocketmq.RocketMQInstanceNetworkInfoVpcInfoArgs{
/// 					VpcId: createVpc.ID(),
/// 					Vswitches: rocketmq.RocketMQInstanceNetworkInfoVpcInfoVswitchArray{
/// 						&rocketmq.RocketMQInstanceNetworkInfoVpcInfoVswitchArgs{
/// 							VswitchId: createVswitch.ID(),
/// 						},
/// 					},
/// 				},
/// 				InternetInfo: &rocketmq.RocketMQInstanceNetworkInfoInternetInfoArgs{
/// 					InternetSpec:     pulumi.String("enable"),
/// 					FlowOutType:      pulumi.String("payByBandwidth"),
/// 					FlowOutBandwidth: pulumi.Int(30),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rocketmq.NewRocketMQTopic(ctx, "default", &rocketmq.RocketMQTopicArgs{
/// 			Remark:      pulumi.String("example"),
/// 			InstanceId:  createInstance.ID(),
/// 			MessageType: pulumi.String("NORMAL"),
/// 			TopicName:   pulumi.String(name),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
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
/// import com.pulumi.alicloud.rocketmq.RocketMQTopic;
/// import com.pulumi.alicloud.rocketmq.RocketMQTopicArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var createVpc = new Network("createVpc", NetworkArgs.builder()
///             .description("example")
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(name)
///             .build());
///
///         var createVswitch = new Switch("createVswitch", SwitchArgs.builder()
///             .description("example")
///             .vpcId(createVpc.id())
///             .zoneId(default_.zones()[0].id())
///             .cidrBlock("172.16.0.0/24")
///             .vswitchName(name)
///             .build());
///
///         var createInstance = new RocketMQInstance("createInstance", RocketMQInstanceArgs.builder()
///             .productInfo(RocketMQInstanceProductInfoArgs.builder()
///                 .msgProcessSpec("rmq.u2.10xlarge")
///                 .sendReceiveRatio(0.3)
///                 .messageRetentionTime(70)
///                 .build())
///             .serviceCode("rmq")
///             .paymentType("PayAsYouGo")
///             .instanceName(name)
///             .subSeriesCode("cluster_ha")
///             .remark("example")
///             .ipWhitelists(
///                 "192.168.0.0/16",
///                 "10.10.0.0/16",
///                 "172.168.0.0/16")
///             .software(RocketMQInstanceSoftwareArgs.builder()
///                 .maintainTime("02:00-06:00")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .seriesCode("ultimate")
///             .networkInfo(RocketMQInstanceNetworkInfoArgs.builder()
///                 .vpcInfo(RocketMQInstanceNetworkInfoVpcInfoArgs.builder()
///                     .vpcId(createVpc.id())
///                     .vswitches(RocketMQInstanceNetworkInfoVpcInfoVswitchArgs.builder()
///                         .vswitchId(createVswitch.id())
///                         .build())
///                     .build())
///                 .internetInfo(RocketMQInstanceNetworkInfoInternetInfoArgs.builder()
///                     .internetSpec("enable")
///                     .flowOutType("payByBandwidth")
///                     .flowOutBandwidth(30)
///                     .build())
///                 .build())
///             .build());
///
///         var defaultRocketMQTopic = new RocketMQTopic("defaultRocketMQTopic", RocketMQTopicArgs.builder()
///             .remark("example")
///             .instanceId(createInstance.id())
///             .messageType("NORMAL")
///             .topicName(name)
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
///   createVpc:
///     type: alicloud:vpc:Network
///     properties:
///       description: example
///       cidrBlock: 172.16.0.0/12
///       vpcName: ${name}
///   createVswitch:
///     type: alicloud:vpc:Switch
///     properties:
///       description: example
///       vpcId: ${createVpc.id}
///       zoneId: ${default.zones[0].id}
///       cidrBlock: 172.16.0.0/24
///       vswitchName: ${name}
///   createInstance:
///     type: alicloud:rocketmq:RocketMQInstance
///     properties:
///       productInfo:
///         msgProcessSpec: rmq.u2.10xlarge
///         sendReceiveRatio: '0.3'
///         messageRetentionTime: '70'
///       serviceCode: rmq
///       paymentType: PayAsYouGo
///       instanceName: ${name}
///       subSeriesCode: cluster_ha
///       remark: example
///       ipWhitelists:
///         - 192.168.0.0/16
///         - 10.10.0.0/16
///         - 172.168.0.0/16
///       software:
///         maintainTime: 02:00-06:00
///       tags:
///         Created: TF
///         For: example
///       seriesCode: ultimate
///       networkInfo:
///         vpcInfo:
///           vpcId: ${createVpc.id}
///           vswitches:
///             - vswitchId: ${createVswitch.id}
///         internetInfo:
///           internetSpec: enable
///           flowOutType: payByBandwidth
///           flowOutBandwidth: '30'
///   defaultRocketMQTopic:
///     type: alicloud:rocketmq:RocketMQTopic
///     name: default
///     properties:
///       remark: example
///       instanceId: ${createInstance.id}
///       messageType: NORMAL
///       topicName: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RocketMQ Topic can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rocketmq/rocketMQTopic:RocketMQTopic example <instance_id>:<topic_name>
/// ```
class RocketMQTopic extends pulumi.CustomResource {
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;

  /// Instance ID.
  late final pulumi.Output<String> instanceId;

  /// The maximum TPS for message sending.
  late final pulumi.Output<int?> maxSendTps;

  /// Message type.
  late final pulumi.Output<String?> messageType;

  /// (Available since v1.247.0) The region ID to which the instance belongs.
  late final pulumi.Output<String> regionId;

  /// Custom remarks.
  late final pulumi.Output<String?> remark;

  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// Topic name and identification.
  late final pulumi.Output<String> topicName;

  /// Creates a new [RocketMQTopic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RocketMQTopic]. {@macro pulumi_rocketmq_rocket_mqtopic_rocket_mqtopic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RocketMQTopic(
    String name, {
    RocketMQTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rocketmq/rocketMQTopic:RocketMQTopic',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    instanceId = registerOutput<String>('instanceId');
    maxSendTps = registerOutput<int?>('maxSendTps');
    messageType = registerOutput<String?>('messageType');
    regionId = registerOutput<String>('regionId');
    remark = registerOutput<String?>('remark');
    status = registerOutput<String>('status');
    topicName = registerOutput<String>('topicName');
  }

  /// Gets an existing [RocketMQTopic] resource's state with the given [name] and [id].
  static RocketMQTopic get(
    String name,
    pulumi.Input<String> id, {
    RocketMQTopicState? state,
  }) {
    return RocketMQTopic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RocketMQTopic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rocketmq/rocketMQTopic:RocketMQTopic',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    instanceId = registerOutput<String>('instanceId');
    maxSendTps = registerOutput<int?>('maxSendTps');
    messageType = registerOutput<String?>('messageType');
    regionId = registerOutput<String>('regionId');
    remark = registerOutput<String?>('remark');
    status = registerOutput<String>('status');
    topicName = registerOutput<String>('topicName');
  }
}
