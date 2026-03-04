import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_args.dart';
import 'topic_state.dart';

/// Provides a Alikafka Topic resource.
///
/// Topic in kafka.
///
/// For information about Alikafka Topic and how to use it, see [What is Topic](https://www.alibabacloud.com/help/en/message-queue-for-apache-kafka/latest/api-alikafka-2019-09-16-createtopic).
///
/// &gt; **NOTE:** Available since v1.56.0.
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
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {vpcId: defaultNetwork.id});
/// const defaultInstance = new alicloud.alikafka.Instance("default", {
///     name: name,
///     partitionNum: 50,
///     diskType: 1,
///     diskSize: 500,
///     deployType: 5,
///     ioMax: 20,
///     specType: "professional",
///     serviceVersion: "2.2.0",
///     vswitchId: defaultSwitch.id,
///     securityGroup: defaultSecurityGroup.id,
///     config: JSON.stringify({
///         "enable.acl": "true",
///     }),
/// });
/// const defaultTopic = new alicloud.alikafka.Topic("default", {
///     instanceId: defaultInstance.id,
///     topic: name,
///     remark: name,
///     localTopic: true,
///     compactTopic: true,
///     partitionNum: 18,
///     configs: JSON.stringify({
///         "message.format.version": "2.2.0",
///         "max.message.bytes": "10485760",
///         "min.insync.replicas": "1",
///         "replication-factor": "2",
///         "retention.ms": "3600000",
///     }),
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/12")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default", vpc_id=default_network.id)
/// default_instance = alicloud.alikafka.Instance("default",
///     name=name,
///     partition_num=50,
///     disk_type=1,
///     disk_size=500,
///     deploy_type=5,
///     io_max=20,
///     spec_type="professional",
///     service_version="2.2.0",
///     vswitch_id=default_switch.id,
///     security_group=default_security_group.id,
///     config=json.dumps({
///         "enable.acl": "true",
///     }))
/// default_topic = alicloud.alikafka.Topic("default",
///     instance_id=default_instance.id,
///     topic=name,
///     remark=name,
///     local_topic=True,
///     compact_topic=True,
///     partition_num=18,
///     configs=json.dumps({
///         "message.format.version": "2.2.0",
///         "max.message.bytes": "10485760",
///         "min.insync.replicas": "1",
///         "replication-factor": "2",
///         "retention.ms": "3600000",
///     }),
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
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
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstance = new AliCloud.Alikafka.Instance("default", new()
///     {
///         Name = name,
///         PartitionNum = 50,
///         DiskType = 1,
///         DiskSize = 500,
///         DeployType = 5,
///         IoMax = 20,
///         SpecType = "professional",
///         ServiceVersion = "2.2.0",
///         VswitchId = defaultSwitch.Id,
///         SecurityGroup = defaultSecurityGroup.Id,
///         Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["enable.acl"] = "true",
///         }),
///     });
///
///     var defaultTopic = new AliCloud.Alikafka.Topic("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         TopicName = name,
///         Remark = name,
///         LocalTopic = true,
///         CompactTopic = true,
///         PartitionNum = 18,
///         Configs = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["message.format.version"] = "2.2.0",
///             ["max.message.bytes"] = "10485760",
///             ["min.insync.replicas"] = "1",
///             ["replication-factor"] = "2",
///             ["retention.ms"] = "3600000",
///         }),
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alikafka"
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"enable.acl": "true",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		defaultInstance, err := alikafka.NewInstance(ctx, "default", &alikafka.InstanceArgs{
/// 			Name:           pulumi.String(name),
/// 			PartitionNum:   pulumi.Int(50),
/// 			DiskType:       pulumi.Int(1),
/// 			DiskSize:       pulumi.Int(500),
/// 			DeployType:     pulumi.Int(5),
/// 			IoMax:          pulumi.Int(20),
/// 			SpecType:       pulumi.String("professional"),
/// 			ServiceVersion: pulumi.String("2.2.0"),
/// 			VswitchId:      defaultSwitch.ID(),
/// 			SecurityGroup:  defaultSecurityGroup.ID(),
/// 			Config:         pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"message.format.version": "2.2.0",
/// 			"max.message.bytes":      "10485760",
/// 			"min.insync.replicas":    "1",
/// 			"replication-factor":     "2",
/// 			"retention.ms":           "3600000",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = alikafka.NewTopic(ctx, "default", &alikafka.TopicArgs{
/// 			InstanceId:   defaultInstance.ID(),
/// 			Topic:        pulumi.String(name),
/// 			Remark:       pulumi.String(name),
/// 			LocalTopic:   pulumi.Bool(true),
/// 			CompactTopic: pulumi.Bool(true),
/// 			PartitionNum: pulumi.Int(18),
/// 			Configs:      pulumi.String(json1),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.alikafka.Instance;
/// import com.pulumi.alicloud.alikafka.InstanceArgs;
/// import com.pulumi.alicloud.alikafka.Topic;
/// import com.pulumi.alicloud.alikafka.TopicArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .name(name)
///             .partitionNum(50)
///             .diskType(1)
///             .diskSize(500)
///             .deployType(5)
///             .ioMax(20)
///             .specType("professional")
///             .serviceVersion("2.2.0")
///             .vswitchId(defaultSwitch.id())
///             .securityGroup(defaultSecurityGroup.id())
///             .config(serializeJson(
///                 jsonObject(
///                     jsonProperty("enable.acl", "true")
///                 )))
///             .build());
///
///         var defaultTopic = new Topic("defaultTopic", TopicArgs.builder()
///             .instanceId(defaultInstance.id())
///             .topic(name)
///             .remark(name)
///             .localTopic(true)
///             .compactTopic(true)
///             .partitionNum(18)
///             .configs(serializeJson(
///                 jsonObject(
///                     jsonProperty("message.format.version", "2.2.0"),
///                     jsonProperty("max.message.bytes", "10485760"),
///                     jsonProperty("min.insync.replicas", "1"),
///                     jsonProperty("replication-factor", "2"),
///                     jsonProperty("retention.ms", "3600000")
///                 )))
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
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
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/12
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.zones[0].id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///   defaultInstance:
///     type: alicloud:alikafka:Instance
///     name: default
///     properties:
///       name: ${name}
///       partitionNum: 50
///       diskType: '1'
///       diskSize: '500'
///       deployType: '5'
///       ioMax: '20'
///       specType: professional
///       serviceVersion: 2.2.0
///       vswitchId: ${defaultSwitch.id}
///       securityGroup: ${defaultSecurityGroup.id}
///       config:
///         fn::toJSON:
///           enable.acl: 'true'
///   defaultTopic:
///     type: alicloud:alikafka:Topic
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       topic: ${name}
///       remark: ${name}
///       localTopic: 'true'
///       compactTopic: 'true'
///       partitionNum: '18'
///       configs:
///         fn::toJSON:
///           message.format.version: 2.2.0
///           max.message.bytes: '10485760'
///           min.insync.replicas: '1'
///           replication-factor: '2'
///           retention.ms: '3600000'
///       tags:
///         Created: TF
///         For: example
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
/// Alikafka Topic can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alikafka/topic:Topic example <instance_id>:<topic>
/// ```
class Topic extends pulumi.CustomResource {
  /// The cleanup policy for the topic. This parameter is available only if you set the storage engine of the topic to Local storage. Valid values:
  /// - false: The delete cleanup policy is used.
  /// - true: The compact cleanup policy is used.
  late final pulumi.Output<bool?> compactTopic;

  /// The advanced configurations.
  late final pulumi.Output<String> configs;

  /// (Available since v1.262.1) The time when the topic was created.
  late final pulumi.Output<int> createTime;

  /// The ID of the instance.
  late final pulumi.Output<String> instanceId;

  /// The storage engine of the topic. Valid values:
  /// - false: Cloud storage.
  /// - true: Local storage.
  late final pulumi.Output<bool?> localTopic;

  /// The number of partitions in the topic.
  late final pulumi.Output<int> partitionNum;

  /// (Available since v1.262.1) The ID of the region where the instance resides.
  late final pulumi.Output<String> regionId;

  /// The description of the topic.
  late final pulumi.Output<String> remark;

  /// (Available since v1.262.1) The status of the service.
  late final pulumi.Output<String> status;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The topic name.
  late final pulumi.Output<String> topic;

  /// Creates a new [Topic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Topic]. {@macro pulumi_alikafka_topic_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Topic(String name, {TopicArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:alikafka/topic:Topic',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    compactTopic = registerOutput<bool?>('compactTopic');
    configs = registerOutput<String>('configs');
    createTime = registerOutput<int>('createTime');
    instanceId = registerOutput<String>('instanceId');
    localTopic = registerOutput<bool?>('localTopic');
    partitionNum = registerOutput<int>('partitionNum');
    regionId = registerOutput<String>('regionId');
    remark = registerOutput<String>('remark');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    topic = registerOutput<String>('topic');
  }

  /// Gets an existing [Topic] resource's state with the given [name] and [id].
  static Topic get(String name, pulumi.Input<String> id, {TopicState? state}) {
    return Topic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Topic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alikafka/topic:Topic',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    compactTopic = registerOutput<bool?>('compactTopic');
    configs = registerOutput<String>('configs');
    createTime = registerOutput<int>('createTime');
    instanceId = registerOutput<String>('instanceId');
    localTopic = registerOutput<bool?>('localTopic');
    partitionNum = registerOutput<int>('partitionNum');
    regionId = registerOutput<String>('regionId');
    remark = registerOutput<String>('remark');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    topic = registerOutput<String>('topic');
  }
}
