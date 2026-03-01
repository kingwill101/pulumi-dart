import 'package:pulumi/pulumi.dart' as pulumi;
import 'polardbx_instance_args.dart';

/// Provides a Distributed Relational Database Service (DRDS) Polardbx Instance resource.
///
/// PolarDB-X Database Instance.
///
/// For information about Distributed Relational Database Service (DRDS) Polardbx Instance and how to use it, see [What is Polardbx Instance](https://www.alibabacloud.com/help/en/polardb/polardb-for-xscale/api-createdbinstance-1).
///
/// > **NOTE:** Available since v1.211.0.
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
/// const example = new alicloud.vpc.Network("example", {vpcName: name});
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vpcId: example.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     cidrBlock: "172.16.0.0/24",
///     vswitchName: name,
/// });
/// const defaultPolardbxInstance = new alicloud.drds.PolardbxInstance("default", {
///     topologyType: "3azones",
///     vswitchId: exampleSwitch.id,
///     primaryZone: "ap-southeast-1a",
///     cnNodeCount: 2,
///     dnClass: "mysql.n4.medium.25",
///     cnClass: "polarx.x4.medium.2e",
///     dnNodeCount: 2,
///     secondaryZone: "ap-southeast-1b",
///     tertiaryZone: "ap-southeast-1c",
///     vpcId: example.id,
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
/// example = alicloud.vpc.Network("example", vpc_name=name)
/// example_switch = alicloud.vpc.Switch("example",
///     vpc_id=example.id,
///     zone_id=default.zones[0].id,
///     cidr_block="172.16.0.0/24",
///     vswitch_name=name)
/// default_polardbx_instance = alicloud.drds.PolardbxInstance("default",
///     topology_type="3azones",
///     vswitch_id=example_switch.id,
///     primary_zone="ap-southeast-1a",
///     cn_node_count=2,
///     dn_class="mysql.n4.medium.25",
///     cn_class="polarx.x4.medium.2e",
///     dn_node_count=2,
///     secondary_zone="ap-southeast-1b",
///     tertiary_zone="ap-southeast-1c",
///     vpc_id=example.id)
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
///     var example = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = name,
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VpcId = example.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         CidrBlock = "172.16.0.0/24",
///         VswitchName = name,
///     });
///
///     var defaultPolardbxInstance = new AliCloud.Drds.PolardbxInstance("default", new()
///     {
///         TopologyType = "3azones",
///         VswitchId = exampleSwitch.Id,
///         PrimaryZone = "ap-southeast-1a",
///         CnNodeCount = 2,
///         DnClass = "mysql.n4.medium.25",
///         CnClass = "polarx.x4.medium.2e",
///         DnNodeCount = 2,
///         SecondaryZone = "ap-southeast-1b",
///         TertiaryZone = "ap-southeast-1c",
///         VpcId = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/drds"
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
/// 		example, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VpcId:       example.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = drds.NewPolardbxInstance(ctx, "default", &drds.PolardbxInstanceArgs{
/// 			TopologyType:  pulumi.String("3azones"),
/// 			VswitchId:     exampleSwitch.ID(),
/// 			PrimaryZone:   pulumi.String("ap-southeast-1a"),
/// 			CnNodeCount:   pulumi.Int(2),
/// 			DnClass:       pulumi.String("mysql.n4.medium.25"),
/// 			CnClass:       pulumi.String("polarx.x4.medium.2e"),
/// 			DnNodeCount:   pulumi.Int(2),
/// 			SecondaryZone: pulumi.String("ap-southeast-1b"),
/// 			TertiaryZone:  pulumi.String("ap-southeast-1c"),
/// 			VpcId:         example.ID(),
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
/// import com.pulumi.alicloud.drds.PolardbxInstance;
/// import com.pulumi.alicloud.drds.PolardbxInstanceArgs;
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
///         var example = new Network("example", NetworkArgs.builder()
///             .vpcName(name)
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vpcId(example.id())
///             .zoneId(default_.zones()[0].id())
///             .cidrBlock("172.16.0.0/24")
///             .vswitchName(name)
///             .build());
///
///         var defaultPolardbxInstance = new PolardbxInstance("defaultPolardbxInstance", PolardbxInstanceArgs.builder()
///             .topologyType("3azones")
///             .vswitchId(exampleSwitch.id())
///             .primaryZone("ap-southeast-1a")
///             .cnNodeCount(2)
///             .dnClass("mysql.n4.medium.25")
///             .cnClass("polarx.x4.medium.2e")
///             .dnNodeCount(2)
///             .secondaryZone("ap-southeast-1b")
///             .tertiaryZone("ap-southeast-1c")
///             .vpcId(example.id())
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
///   example:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vpcId: ${example.id}
///       zoneId: ${default.zones[0].id}
///       cidrBlock: 172.16.0.0/24
///       vswitchName: ${name}
///   defaultPolardbxInstance:
///     type: alicloud:drds:PolardbxInstance
///     name: default
///     properties:
///       topologyType: 3azones
///       vswitchId: ${exampleSwitch.id}
///       primaryZone: ap-southeast-1a
///       cnNodeCount: '2'
///       dnClass: mysql.n4.medium.25
///       cnClass: polarx.x4.medium.2e
///       dnNodeCount: '2'
///       secondaryZone: ap-southeast-1b
///       tertiaryZone: ap-southeast-1c
///       vpcId: ${example.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Distributed Relational Database Service (DRDS) Polardbx Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:drds/polardbxInstance:PolardbxInstance example <id>
/// ```
class PolardbxInstance extends pulumi.CustomResource {
  /// Compute node specifications.
  late final pulumi.Output<String> cnClass;
  /// Number of computing nodes.
  late final pulumi.Output<int> cnNodeCount;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Instance remarks
  late final pulumi.Output<String?> description;
  /// Storage node specifications.
  late final pulumi.Output<String> dnClass;
  /// The number of storage nodes.
  late final pulumi.Output<int> dnNodeCount;
  /// Engine version, default 5.7
  late final pulumi.Output<String> engineVersion;
  /// Whether the instance is read-only.
  late final pulumi.Output<bool?> isReadDbInstance;
  /// If the instance is a read-only instance, you must specify the primary instance.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> primaryDbInstanceName;
  /// Primary Availability Zone.
  late final pulumi.Output<String> primaryZone;
  /// The region ID of the resource
  late final pulumi.Output<String> regionId;
  /// The resource group ID can be empty. This parameter is not supported for the time being.
  late final pulumi.Output<String> resourceGroupId;
  /// Secondary availability zone.
  late final pulumi.Output<String?> secondaryZone;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// Third Availability Zone.
  late final pulumi.Output<String?> tertiaryZone;
  /// Topology type:
  late final pulumi.Output<String> topologyType;
  /// The VPC ID.
  late final pulumi.Output<String> vpcId;
  /// The ID of the virtual switch.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [PolardbxInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolardbxInstance]. {@macro pulumi_drds_polardbx_instance_polardbx_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolardbxInstance(
    String name, {
    PolardbxInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:drds/polardbxInstance:PolardbxInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cnClass = registerOutput<String>('cnClass');
    this.cnNodeCount = registerOutput<int>('cnNodeCount');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.dnClass = registerOutput<String>('dnClass');
    this.dnNodeCount = registerOutput<int>('dnNodeCount');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.isReadDbInstance = registerOutput<bool?>('isReadDbInstance');
    this.primaryDbInstanceName = registerOutput<String?>('primaryDbInstanceName');
    this.primaryZone = registerOutput<String>('primaryZone');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.secondaryZone = registerOutput<String?>('secondaryZone');
    this.status = registerOutput<String>('status');
    this.tertiaryZone = registerOutput<String?>('tertiaryZone');
    this.topologyType = registerOutput<String>('topologyType');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
  }
}
