import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_attachment_args.dart';
import 'instance_attachment_state.dart';

/// This resource will help you to bind a VPC to an OTS instance.
///
/// > **NOTE:** Available since v1.10.0.
///
/// ## Example Usage
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
/// const defaultInstance = new alicloud.ots.Instance("default", {
///     name: `${name}-${defaultInteger.result}`,
///     description: name,
///     accessedBy: "Vpc",
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
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
/// const defaultInstanceAttachment = new alicloud.ots.InstanceAttachment("default", {
///     instanceName: defaultInstance.name,
///     vpcName: "examplename",
///     vswitchId: defaultSwitch.id,
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
/// default_instance = alicloud.ots.Instance("default",
///     name=f"{name}-{default_integer['result']}",
///     description=name,
///     accessed_by="Vpc",
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_instance_attachment = alicloud.ots.InstanceAttachment("default",
///     instance_name=default_instance.name,
///     vpc_name="examplename",
///     vswitch_id=default_switch.id)
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
///     var defaultInstance = new AliCloud.Ots.Instance("default", new()
///     {
///         Name = $"{name}-{defaultInteger.Result}",
///         Description = name,
///         AccessedBy = "Vpc",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
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
///     var defaultInstanceAttachment = new AliCloud.Ots.InstanceAttachment("default", new()
///     {
///         InstanceName = defaultInstance.Name,
///         VpcName = "examplename",
///         VswitchId = defaultSwitch.Id,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ots"
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
/// 		defaultInstance, err := ots.NewInstance(ctx, "default", &ots.InstanceArgs{
/// 			Name:        pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			Description: pulumi.String(name),
/// 			AccessedBy:  pulumi.String("Vpc"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
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
/// 		_, err = ots.NewInstanceAttachment(ctx, "default", &ots.InstanceAttachmentArgs{
/// 			InstanceName: defaultInstance.Name,
/// 			VpcName:      pulumi.String("examplename"),
/// 			VswitchId:    defaultSwitch.ID(),
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
/// import com.pulumi.alicloud.ots.Instance;
/// import com.pulumi.alicloud.ots.InstanceArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ots.InstanceAttachment;
/// import com.pulumi.alicloud.ots.InstanceAttachmentArgs;
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
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .name(String.format("%s-%s", name,defaultInteger.result()))
///             .description(name)
///             .accessedBy("Vpc")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
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
///         var defaultInstanceAttachment = new InstanceAttachment("defaultInstanceAttachment", InstanceAttachmentArgs.builder()
///             .instanceName(defaultInstance.name())
///             .vpcName("examplename")
///             .vswitchId(defaultSwitch.id())
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
///   defaultInstance:
///     type: alicloud:ots:Instance
///     name: default
///     properties:
///       name: ${name}-${defaultInteger.result}
///       description: ${name}
///       accessedBy: Vpc
///       tags:
///         Created: TF
///         For: example
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
///   defaultInstanceAttachment:
///     type: alicloud:ots:InstanceAttachment
///     name: default
///     properties:
///       instanceName: ${defaultInstance.name}
///       vpcName: examplename
///       vswitchId: ${defaultSwitch.id}
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
class InstanceAttachment extends pulumi.CustomResource {
  /// The name of the OTS instance.
  late final pulumi.Output<String> instanceName;
  /// The ID of attaching VPC to instance.
  late final pulumi.Output<String> vpcId;
  /// The name of attaching VPC to instance. It can only contain letters and numbers, must start with a letter, and is limited to 3-16 characters in length.
  late final pulumi.Output<String> vpcName;
  /// The ID of attaching VSwitch to instance.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [InstanceAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceAttachment]. {@macro pulumi_ots_instance_attachment_instance_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceAttachment(
    String name, {
    InstanceAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ots/instanceAttachment:InstanceAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceName = registerOutput<String>('instanceName');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcName = registerOutput<String>('vpcName');
    this.vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [InstanceAttachment] resource's state with the given [name] and [id].
  static InstanceAttachment get(
    String name,
    pulumi.Input<String> id, {
    InstanceAttachmentState? state,
  }) {
    return InstanceAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ots/instanceAttachment:InstanceAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceName = registerOutput<String>('instanceName');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcName = registerOutput<String>('vpcName');
    this.vswitchId = registerOutput<String>('vswitchId');
  }
}
