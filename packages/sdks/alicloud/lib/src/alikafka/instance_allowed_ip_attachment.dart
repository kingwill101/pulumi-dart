import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_allowed_ip_attachment_args.dart';
import 'instance_allowed_ip_attachment_state.dart';

/// Provides a AliKafka Instance Allowed Ip Attachment resource.
///
/// For information about AliKafka Instance Allowed Ip Attachment and how to use it, see [What is Instance Allowed Ip Attachment](https://www.alibabacloud.com/help/en/message-queue-for-apache-kafka/latest/api-alikafka-2019-09-16-updateallowedip).
///
/// &gt; **NOTE:** Available since v1.163.0.
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
/// const name = config.get("name") || "tf-example";
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
///     vswitchId: defaultSwitch.id,
///     securityGroup: defaultSecurityGroup.id,
/// });
/// const defaultInstanceAllowedIpAttachment = new alicloud.alikafka.InstanceAllowedIpAttachment("default", {
///     instanceId: defaultInstance.id,
///     allowedType: "vpc",
///     portRange: "9092/9092",
///     allowedIp: "114.237.9.78/32",
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
///     name = "tf-example"
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
///     vswitch_id=default_switch.id,
///     security_group=default_security_group.id)
/// default_instance_allowed_ip_attachment = alicloud.alikafka.InstanceAllowedIpAttachment("default",
///     instance_id=default_instance.id,
///     allowed_type="vpc",
///     port_range="9092/9092",
///     allowed_ip="114.237.9.78/32")
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
///     var name = config.Get("name") ?? "tf-example";
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
///         VswitchId = defaultSwitch.Id,
///         SecurityGroup = defaultSecurityGroup.Id,
///     });
///
///     var defaultInstanceAllowedIpAttachment = new AliCloud.Alikafka.InstanceAllowedIpAttachment("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         AllowedType = "vpc",
///         PortRange = "9092/9092",
///         AllowedIp = "114.237.9.78/32",
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
/// 		name := "tf-example"
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
/// 			Name:          pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			PartitionNum:  pulumi.Int(50),
/// 			DiskType:      pulumi.Int(1),
/// 			DiskSize:      pulumi.Int(500),
/// 			DeployType:    pulumi.Int(5),
/// 			IoMax:         pulumi.Int(20),
/// 			VswitchId:     defaultSwitch.ID(),
/// 			SecurityGroup: defaultSecurityGroup.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alikafka.NewInstanceAllowedIpAttachment(ctx, "default", &alikafka.InstanceAllowedIpAttachmentArgs{
/// 			InstanceId:  defaultInstance.ID(),
/// 			AllowedType: pulumi.String("vpc"),
/// 			PortRange:   pulumi.String("9092/9092"),
/// 			AllowedIp:   pulumi.String("114.237.9.78/32"),
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
/// import com.pulumi.alicloud.alikafka.InstanceAllowedIpAttachment;
/// import com.pulumi.alicloud.alikafka.InstanceAllowedIpAttachmentArgs;
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
///             .vswitchId(defaultSwitch.id())
///             .securityGroup(defaultSecurityGroup.id())
///             .build());
///
///         var defaultInstanceAllowedIpAttachment = new InstanceAllowedIpAttachment("defaultInstanceAllowedIpAttachment", InstanceAllowedIpAttachmentArgs.builder()
///             .instanceId(defaultInstance.id())
///             .allowedType("vpc")
///             .portRange("9092/9092")
///             .allowedIp("114.237.9.78/32")
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
///       diskType: 1
///       diskSize: 500
///       deployType: 5
///       ioMax: 20
///       vswitchId: ${defaultSwitch.id}
///       securityGroup: ${defaultSecurityGroup.id}
///   defaultInstanceAllowedIpAttachment:
///     type: alicloud:alikafka:InstanceAllowedIpAttachment
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       allowedType: vpc
///       portRange: 9092/9092
///       allowedIp: 114.237.9.78/32
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
/// AliKafka Instance Allowed Ip Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alikafka/instanceAllowedIpAttachment:InstanceAllowedIpAttachment example <instance_id>:<allowed_type>:<port_range>:<allowed_ip>
/// ```
class InstanceAllowedIpAttachment extends pulumi.CustomResource {
  /// The IP address whitelist. It can be a CIDR block.
  late final pulumi.Output<String> allowedIp;

  /// The type of the whitelist. Valid Value: `vpc`, `internet`. **NOTE:** From version 1.179.0, `allowed_type` can be set to `internet`.
  late final pulumi.Output<String> allowedType;

  /// The ID of the instance.
  late final pulumi.Output<String> instanceId;

  /// The Port range. Valid Value: `9092/9092`, `9093/9093`, `9094/9094`, `9095/9095`. **NOTE:** From version 1.179.0, `port_range` can be set to `9093/9093`. From version 1.219.0, `port_range` can be set to `9094/9094`, `9095/9095`.
  /// - `9092/9092`: The port range for access from virtual private clouds (VPCs) by using the default endpoint.
  /// - `9093/9093`: The port range for access from the Internet.
  /// - `9094/9094`: The port range for access from VPCs by using the Simple Authentication and Security Layer (SASL) endpoint.
  /// - `9095/9095`: The port range for access from VPCs by using the Secure Sockets Layer (SSL) endpoint.
  late final pulumi.Output<String> portRange;

  /// Creates a new [InstanceAllowedIpAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceAllowedIpAttachment]. {@macro pulumi_alikafka_instance_allowed_ip_attachment_instance_allowed_ip_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceAllowedIpAttachment(
    String name, {
    InstanceAllowedIpAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alikafka/instanceAllowedIpAttachment:InstanceAllowedIpAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowedIp = registerOutput<String>('allowedIp');
    allowedType = registerOutput<String>('allowedType');
    instanceId = registerOutput<String>('instanceId');
    portRange = registerOutput<String>('portRange');
  }

  /// Gets an existing [InstanceAllowedIpAttachment] resource's state with the given [name] and [id].
  static InstanceAllowedIpAttachment get(
    String name,
    pulumi.Input<String> id, {
    InstanceAllowedIpAttachmentState? state,
  }) {
    return InstanceAllowedIpAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceAllowedIpAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alikafka/instanceAllowedIpAttachment:InstanceAllowedIpAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowedIp = registerOutput<String>('allowedIp');
    allowedType = registerOutput<String>('allowedType');
    instanceId = registerOutput<String>('instanceId');
    portRange = registerOutput<String>('portRange');
  }
}
