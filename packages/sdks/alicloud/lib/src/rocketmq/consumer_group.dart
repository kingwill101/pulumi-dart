import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_group_args.dart';
import 'consumer_group_consume_retry_policy.dart';
import 'consumer_group_state.dart';

/// Provides a RocketMQ Consumer Group resource.
///
/// For information about RocketMQ Consumer Group and how to use it, see [What is Consumer Group](https://www.alibabacloud.com/help/en/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/developer-reference/api-rocketmq-2022-08-01-createconsumergroup).
///
/// &gt; **NOTE:** Available since v1.212.0.
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
/// const defaultConsumerGroup = new alicloud.rocketmq.ConsumerGroup("default", {
///     consumerGroupId: name,
///     instanceId: createInstance.id,
///     consumeRetryPolicy: {
///         retryPolicy: "DefaultRetryPolicy",
///         maxRetryTimes: 10,
///     },
///     deliveryOrderType: "Concurrently",
///     remark: "example",
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
/// default_consumer_group = alicloud.rocketmq.ConsumerGroup("default",
///     consumer_group_id=name,
///     instance_id=create_instance.id,
///     consume_retry_policy={
///         "retry_policy": "DefaultRetryPolicy",
///         "max_retry_times": 10,
///     },
///     delivery_order_type="Concurrently",
///     remark="example")
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
///     var defaultConsumerGroup = new AliCloud.RocketMQ.ConsumerGroup("default", new()
///     {
///         ConsumerGroupId = name,
///         InstanceId = createInstance.Id,
///         ConsumeRetryPolicy = new AliCloud.RocketMQ.Inputs.ConsumerGroupConsumeRetryPolicyArgs
///         {
///             RetryPolicy = "DefaultRetryPolicy",
///             MaxRetryTimes = 10,
///         },
///         DeliveryOrderType = "Concurrently",
///         Remark = "example",
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
/// 		_, err = rocketmq.NewConsumerGroup(ctx, "default", &rocketmq.ConsumerGroupArgs{
/// 			ConsumerGroupId: pulumi.String(name),
/// 			InstanceId:      createInstance.ID(),
/// 			ConsumeRetryPolicy: &rocketmq.ConsumerGroupConsumeRetryPolicyArgs{
/// 				RetryPolicy:   pulumi.String("DefaultRetryPolicy"),
/// 				MaxRetryTimes: pulumi.Int(10),
/// 			},
/// 			DeliveryOrderType: pulumi.String("Concurrently"),
/// 			Remark:            pulumi.String("example"),
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
/// import com.pulumi.alicloud.rocketmq.ConsumerGroup;
/// import com.pulumi.alicloud.rocketmq.ConsumerGroupArgs;
/// import com.pulumi.alicloud.rocketmq.inputs.ConsumerGroupConsumeRetryPolicyArgs;
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
///         var defaultConsumerGroup = new ConsumerGroup("defaultConsumerGroup", ConsumerGroupArgs.builder()
///             .consumerGroupId(name)
///             .instanceId(createInstance.id())
///             .consumeRetryPolicy(ConsumerGroupConsumeRetryPolicyArgs.builder()
///                 .retryPolicy("DefaultRetryPolicy")
///                 .maxRetryTimes(10)
///                 .build())
///             .deliveryOrderType("Concurrently")
///             .remark("example")
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
///   defaultConsumerGroup:
///     type: alicloud:rocketmq:ConsumerGroup
///     name: default
///     properties:
///       consumerGroupId: ${name}
///       instanceId: ${createInstance.id}
///       consumeRetryPolicy:
///         retryPolicy: DefaultRetryPolicy
///         maxRetryTimes: '10'
///       deliveryOrderType: Concurrently
///       remark: example
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
/// RocketMQ Consumer Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rocketmq/consumerGroup:ConsumerGroup example <instance_id>:<consumer_group_id>
/// ```
class ConsumerGroup extends pulumi.CustomResource {
  /// Consumption retry strategy. See `consume_retry_policy` below.
  late final pulumi.Output<ConsumerGroupConsumeRetryPolicy> consumeRetryPolicy;

  /// The first ID of the resource.
  late final pulumi.Output<String> consumerGroupId;

  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;

  /// Delivery order.
  late final pulumi.Output<String?> deliveryOrderType;

  /// Instance ID.
  late final pulumi.Output<String> instanceId;

  /// Maximum received message tps.
  late final pulumi.Output<int?> maxReceiveTps;

  /// (Available since v1.247.0) The ID of the region in which the instance resides.
  late final pulumi.Output<String> regionId;

  /// Custom remarks.
  late final pulumi.Output<String?> remark;

  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// Creates a new [ConsumerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConsumerGroup]. {@macro pulumi_rocketmq_consumer_group_consumer_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConsumerGroup(
    String name, {
    ConsumerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rocketmq/consumerGroup:ConsumerGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    consumeRetryPolicy = registerOutput<ConsumerGroupConsumeRetryPolicy>(
      'consumeRetryPolicy',
    );
    consumerGroupId = registerOutput<String>('consumerGroupId');
    createTime = registerOutput<String>('createTime');
    deliveryOrderType = registerOutput<String?>('deliveryOrderType');
    instanceId = registerOutput<String>('instanceId');
    maxReceiveTps = registerOutput<int?>('maxReceiveTps');
    regionId = registerOutput<String>('regionId');
    remark = registerOutput<String?>('remark');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [ConsumerGroup] resource's state with the given [name] and [id].
  static ConsumerGroup get(
    String name,
    pulumi.Input<String> id, {
    ConsumerGroupState? state,
  }) {
    return ConsumerGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ConsumerGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rocketmq/consumerGroup:ConsumerGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    consumeRetryPolicy = registerOutput<ConsumerGroupConsumeRetryPolicy>(
      'consumeRetryPolicy',
    );
    consumerGroupId = registerOutput<String>('consumerGroupId');
    createTime = registerOutput<String>('createTime');
    deliveryOrderType = registerOutput<String?>('deliveryOrderType');
    instanceId = registerOutput<String>('instanceId');
    maxReceiveTps = registerOutput<int?>('maxReceiveTps');
    regionId = registerOutput<String>('regionId');
    remark = registerOutput<String?>('remark');
    status = registerOutput<String>('status');
  }
}
