import 'package:pulumi/pulumi.dart' as pulumi;
import 'sasl_acl_args.dart';

/// Provides a Alikafka Sasl Acl resource.
///
/// Kafka access control.
///
/// For information about Alikafka Sasl Acl and how to use it, see [What is Sasl Acl](https://next.api.alibabacloud.com/document/alikafka/2019-09-16/CreateAcl).
///
/// > **NOTE:** Available since v1.66.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {vpcId: defaultNetwork.id});
/// const defaultInstance = new alicloud.alikafka.Instance("default", {
///     name: `${name}-${defaultInteger.result}`,
///     partitionNum: 50,
///     diskType: 1,
///     diskSize: 500,
///     deployType: 5,
///     ioMax: 20,
///     specType: "professional",
///     serviceVersion: "2.2.0",
///     config: "{\"enable.acl\":\"true\"}",
///     vswitchId: defaultSwitch.id,
///     securityGroup: defaultSecurityGroup.id,
/// });
/// const defaultTopic = new alicloud.alikafka.Topic("default", {
///     instanceId: defaultInstance.id,
///     topic: "example-topic",
///     remark: "topic-remark",
/// });
/// const defaultSaslUser = new alicloud.alikafka.SaslUser("default", {
///     instanceId: defaultInstance.id,
///     username: name,
///     password: "tf_example123",
/// });
/// const defaultSaslAcl = new alicloud.alikafka.SaslAcl("default", {
///     instanceId: defaultInstance.id,
///     username: defaultSaslUser.username,
///     aclResourceType: "Topic",
///     aclResourceName: defaultTopic.topic,
///     aclResourcePatternType: "LITERAL",
///     aclOperationType: "Write",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default", vpc_id=default_network.id)
/// default_instance = alicloud.alikafka.Instance("default",
///     name=f"{name}-{default_integer['result']}",
///     partition_num=50,
///     disk_type=1,
///     disk_size=500,
///     deploy_type=5,
///     io_max=20,
///     spec_type="professional",
///     service_version="2.2.0",
///     config="{\"enable.acl\":\"true\"}",
///     vswitch_id=default_switch.id,
///     security_group=default_security_group.id)
/// default_topic = alicloud.alikafka.Topic("default",
///     instance_id=default_instance.id,
///     topic="example-topic",
///     remark="topic-remark")
/// default_sasl_user = alicloud.alikafka.SaslUser("default",
///     instance_id=default_instance.id,
///     username=name,
///     password="tf_example123")
/// default_sasl_acl = alicloud.alikafka.SaslAcl("default",
///     instance_id=default_instance.id,
///     username=default_sasl_user.username,
///     acl_resource_type="Topic",
///     acl_resource_name=default_topic.topic,
///     acl_resource_pattern_type="LITERAL",
///     acl_operation_type="Write")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
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
///         Name = $"{name}-{defaultInteger.Result}",
///         PartitionNum = 50,
///         DiskType = 1,
///         DiskSize = 500,
///         DeployType = 5,
///         IoMax = 20,
///         SpecType = "professional",
///         ServiceVersion = "2.2.0",
///         Config = "{\"enable.acl\":\"true\"}",
///         VswitchId = defaultSwitch.Id,
///         SecurityGroup = defaultSecurityGroup.Id,
///     });
///
///     var defaultTopic = new AliCloud.Alikafka.Topic("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         TopicName = "example-topic",
///         Remark = "topic-remark",
///     });
///
///     var defaultSaslUser = new AliCloud.Alikafka.SaslUser("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         Username = name,
///         Password = "tf_example123",
///     });
///
///     var defaultSaslAcl = new AliCloud.Alikafka.SaslAcl("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         Username = defaultSaslUser.Username,
///         AclResourceType = "Topic",
///         AclResourceName = defaultTopic.TopicName,
///         AclResourcePatternType = "LITERAL",
///         AclOperationType = "Write",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alikafka"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
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
/// 		defaultInstance, err := alikafka.NewInstance(ctx, "default", &alikafka.InstanceArgs{
/// 			Name:           pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			PartitionNum:   pulumi.Int(50),
/// 			DiskType:       pulumi.Int(1),
/// 			DiskSize:       pulumi.Int(500),
/// 			DeployType:     pulumi.Int(5),
/// 			IoMax:          pulumi.Int(20),
/// 			SpecType:       pulumi.String("professional"),
/// 			ServiceVersion: pulumi.String("2.2.0"),
/// 			Config:         pulumi.String("{\"enable.acl\":\"true\"}"),
/// 			VswitchId:      defaultSwitch.ID(),
/// 			SecurityGroup:  defaultSecurityGroup.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTopic, err := alikafka.NewTopic(ctx, "default", &alikafka.TopicArgs{
/// 			InstanceId: defaultInstance.ID(),
/// 			Topic:      pulumi.String("example-topic"),
/// 			Remark:     pulumi.String("topic-remark"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSaslUser, err := alikafka.NewSaslUser(ctx, "default", &alikafka.SaslUserArgs{
/// 			InstanceId: defaultInstance.ID(),
/// 			Username:   pulumi.String(name),
/// 			Password:   pulumi.String("tf_example123"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alikafka.NewSaslAcl(ctx, "default", &alikafka.SaslAclArgs{
/// 			InstanceId:             defaultInstance.ID(),
/// 			Username:               defaultSaslUser.Username,
/// 			AclResourceType:        pulumi.String("Topic"),
/// 			AclResourceName:        defaultTopic.Topic,
/// 			AclResourcePatternType: pulumi.String("LITERAL"),
/// 			AclOperationType:       pulumi.String("Write"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
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
/// import com.pulumi.alicloud.alikafka.SaslUser;
/// import com.pulumi.alicloud.alikafka.SaslUserArgs;
/// import com.pulumi.alicloud.alikafka.SaslAcl;
/// import com.pulumi.alicloud.alikafka.SaslAclArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .name(String.format("%s-%s", name,defaultInteger.result()))
///             .partitionNum(50)
///             .diskType(1)
///             .diskSize(500)
///             .deployType(5)
///             .ioMax(20)
///             .specType("professional")
///             .serviceVersion("2.2.0")
///             .config("{\"enable.acl\":\"true\"}")
///             .vswitchId(defaultSwitch.id())
///             .securityGroup(defaultSecurityGroup.id())
///             .build());
///
///         var defaultTopic = new Topic("defaultTopic", TopicArgs.builder()
///             .instanceId(defaultInstance.id())
///             .topic("example-topic")
///             .remark("topic-remark")
///             .build());
///
///         var defaultSaslUser = new SaslUser("defaultSaslUser", SaslUserArgs.builder()
///             .instanceId(defaultInstance.id())
///             .username(name)
///             .password("tf_example123")
///             .build());
///
///         var defaultSaslAcl = new SaslAcl("defaultSaslAcl", SaslAclArgs.builder()
///             .instanceId(defaultInstance.id())
///             .username(defaultSaslUser.username())
///             .aclResourceType("Topic")
///             .aclResourceName(defaultTopic.topic())
///             .aclResourcePatternType("LITERAL")
///             .aclOperationType("Write")
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
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${defaultNetwork.id}
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
///       name: ${name}-${defaultInteger.result}
///       partitionNum: 50
///       diskType: '1'
///       diskSize: '500'
///       deployType: '5'
///       ioMax: '20'
///       specType: professional
///       serviceVersion: 2.2.0
///       config: '{"enable.acl":"true"}'
///       vswitchId: ${defaultSwitch.id}
///       securityGroup: ${defaultSecurityGroup.id}
///   defaultTopic:
///     type: alicloud:alikafka:Topic
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       topic: example-topic
///       remark: topic-remark
///   defaultSaslUser:
///     type: alicloud:alikafka:SaslUser
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       username: ${name}
///       password: tf_example123
///   defaultSaslAcl:
///     type: alicloud:alikafka:SaslAcl
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       username: ${defaultSaslUser.username}
///       aclResourceType: Topic
///       aclResourceName: ${defaultTopic.topic}
///       aclResourcePatternType: LITERAL
///       aclOperationType: Write
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
/// Alikafka Sasl Acl can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alikafka/saslAcl:SaslAcl example <instance_id>:<username>:<acl_resource_type>:<acl_resource_name>:<acl_resource_pattern_type>:<acl_operation_type>
/// ```
class SaslAcl extends pulumi.CustomResource {
  /// Operation type. Valid values:
  /// - `Write`: write
  /// - `Read`: read
  /// - `Describe`: read TransactionalId
  /// - `IdempotentWrite`: idempotent write to Cluster
  /// - `IDEMPOTENT_WRITE`: idempotent write to Cluster, only available for Serverless instances.
  /// - `DESCRIBE_CONFIGS`: query configuration, only available for Serverless instances.
  late final pulumi.Output<String> aclOperationType;
  /// Batch authorization operation types. Multiple operations are separated by commas (,). Valid values:
  /// - `Write`: write
  /// - `Read`: read
  /// - `Describe`: read TransactionalId
  /// - `IdempotentWrite`: idempotent write to Cluster
  /// - `IDEMPOTENT_WRITE`: idempotent write to Cluster, only available for Serverless instances.
  /// - `DESCRIBE_CONFIGS`: query configuration, only available for Serverless instances.
  /// > **NOTE:**  `acl_operation_types` is only supported for Serverless instances.
  late final pulumi.Output<String?> aclOperationTypes;
  /// Authorization method. Value:
  /// - `DENY`: deny.
  /// - `ALLOW`: allow.
  /// > **NOTE:**  `acl_permission_type` is only supported for Serverless instances.
  late final pulumi.Output<String> aclPermissionType;
  /// The resource name.
  /// - The name of the resource, which can be a topic name, Group ID, cluster name, or transaction ID.
  /// - You can use an asterisk (*) to represent all resources of this type.
  late final pulumi.Output<String> aclResourceName;
  /// Match the pattern. Valid values:
  /// - `LITERAL`: exact match
  /// - `PREFIXED`: prefix matching
  late final pulumi.Output<String> aclResourcePatternType;
  /// The resource type. Valid values:
  /// - `Topic`: the message Topic.
  /// - `Group`: consumer Group.
  /// - `Cluster`: the instance.
  /// - `TransactionalId`: transaction ID.
  late final pulumi.Output<String> aclResourceType;
  /// The host of the acl.
  /// > **NOTE:** From version 1.270.0, `host` can be set.
  late final pulumi.Output<String> host;
  /// The instance ID.
  late final pulumi.Output<String> instanceId;
  /// The user name.
  late final pulumi.Output<String> username;

  /// Creates a new [SaslAcl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SaslAcl]. {@macro pulumi_alikafka_sasl_acl_sasl_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SaslAcl(
    String name, {
    SaslAclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alikafka/saslAcl:SaslAcl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclOperationType = registerOutput<String>('aclOperationType');
    this.aclOperationTypes = registerOutput<String?>('aclOperationTypes');
    this.aclPermissionType = registerOutput<String>('aclPermissionType');
    this.aclResourceName = registerOutput<String>('aclResourceName');
    this.aclResourcePatternType = registerOutput<String>('aclResourcePatternType');
    this.aclResourceType = registerOutput<String>('aclResourceType');
    this.host = registerOutput<String>('host');
    this.instanceId = registerOutput<String>('instanceId');
    this.username = registerOutput<String>('username');
  }
}
