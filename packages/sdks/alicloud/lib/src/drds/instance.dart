import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// Distributed Relational Database Service (DRDS) is a lightweight (stateless), flexible, stable, and efficient middleware product independently developed by Alibaba Group to resolve scalability issues with single-host relational databases.
/// With its compatibility with MySQL protocols and syntaxes, DRDS enables database/table sharding, smooth scaling, configuration upgrade/downgrade,
/// transparent read/write splitting, and distributed transactions, providing O&M capabilities for distributed databases throughout their entire lifecycle.
///
/// For information about DRDS and how to use it, see [What is DRDS](https://www.alibabacloud.com/help/product/29657.htm).
///
/// &gt; **NOTE:** Available since v1.24.0.
///
/// &gt; **NOTE:** At present, DRDS instance only can be supported in the regions: cn-shenzhen, cn-beijing, cn-hangzhou, cn-hongkong, cn-qingdao, ap-southeast-1.
///
/// &gt; **NOTE:** Currently, this resource only support `Domestic Site Account`.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const config = new pulumi.Config();
/// const instanceSeries = config.get("instanceSeries") || "drds.sn1.4c8g";
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "default-NODELETING",
/// });
/// const defaultGetSwitches = defaultGetNetworks.then(defaultGetNetworks => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
/// }));
/// const defaultInstance = new alicloud.drds.Instance("default", {
///     description: "drds instance",
///     instanceChargeType: "PostPaid",
///     zoneId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.vswitches?.[0]?.zoneId),
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.vswitches?.[0]?.id),
///     instanceSeries: instanceSeries,
///     specification: "drds.sn1.4c8g.8C16G",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// config = pulumi.Config()
/// instance_series = config.get("instanceSeries")
/// if instance_series is None:
///     instance_series = "drds.sn1.4c8g"
/// default_get_networks = alicloud.vpc.get_networks(name_regex="default-NODELETING")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0])
/// default_instance = alicloud.drds.Instance("default",
///     description="drds instance",
///     instance_charge_type="PostPaid",
///     zone_id=default_get_switches.vswitches[0].zone_id,
///     vswitch_id=default_get_switches.vswitches[0].id,
///     instance_series=instance_series,
///     specification="drds.sn1.4c8g.8C16G")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var config = new Config();
///     var instanceSeries = config.Get("instanceSeries") ?? "drds.sn1.4c8g";
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "default-NODELETING",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///     });
///
///     var defaultInstance = new AliCloud.Drds.Instance("default", new()
///     {
///         Description = "drds instance",
///         InstanceChargeType = "PostPaid",
///         ZoneId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Vswitches[0]?.ZoneId),
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Vswitches[0]?.Id),
///         InstanceSeries = instanceSeries,
///         Specification = "drds.sn1.4c8g.8C16G",
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
/// 		_, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cfg := config.New(ctx, "")
/// 		instanceSeries := "drds.sn1.4c8g"
/// 		if param := cfg.Get("instanceSeries"); param != "" {
/// 			instanceSeries = param
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("default-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId: pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = drds.NewInstance(ctx, "default", &drds.InstanceArgs{
/// 			Description:        pulumi.String("drds instance"),
/// 			InstanceChargeType: pulumi.String("PostPaid"),
/// 			ZoneId:             pulumi.String(defaultGetSwitches.Vswitches[0].ZoneId),
/// 			VswitchId:          pulumi.String(defaultGetSwitches.Vswitches[0].Id),
/// 			InstanceSeries:     pulumi.String(instanceSeries),
/// 			Specification:      pulumi.String("drds.sn1.4c8g.8C16G"),
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.drds.Instance;
/// import com.pulumi.alicloud.drds.InstanceArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var instanceSeries = config.get("instanceSeries").orElse("drds.sn1.4c8g");
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("default-NODELETING")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .description("drds instance")
///             .instanceChargeType("PostPaid")
///             .zoneId(defaultGetSwitches.vswitches()[0].zoneId())
///             .vswitchId(defaultGetSwitches.vswitches()[0].id())
///             .instanceSeries(instanceSeries)
///             .specification("drds.sn1.4c8g.8C16G")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   instanceSeries:
///     type: string
///     default: drds.sn1.4c8g
/// resources:
///   defaultInstance:
///     type: alicloud:drds:Instance
///     name: default
///     properties:
///       description: drds instance
///       instanceChargeType: PostPaid
///       zoneId: ${defaultGetSwitches.vswitches[0].zoneId}
///       vswitchId: ${defaultGetSwitches.vswitches[0].id}
///       instanceSeries: ${instanceSeries}
///       specification: drds.sn1.4c8g.8C16G
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: default-NODELETING
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Distributed Relational Database Service (DRDS) can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:drds/instance:Instance example drds-abc123456
/// ```
class Instance extends pulumi.CustomResource {
  /// (Available since v1.196.0) The connection string of the DRDS instance.
  late final pulumi.Output<String> connectionString;

  /// Description of the DRDS instance, This description can have a string of 2 to 256 characters.
  late final pulumi.Output<String> description;

  /// Valid values are `PrePaid`, `PostPaid`, Default to `PostPaid`.
  late final pulumi.Output<String?> instanceChargeType;

  /// The parameter of the instance series. **NOTE:**  `drds.sn1.4c8g`,`drds.sn1.8c16g`,`drds.sn1.16c32g`,`drds.sn1.32c64g` are no longer supported. Valid values:
  /// - `drds.sn2.4c16g` Starter Edition.
  /// - `drds.sn2.8c32g` Standard Edition.
  /// - `drds.sn2.16c64g` Enterprise Edition.
  late final pulumi.Output<String> instanceSeries;

  /// The MySQL version supported by the instance, with the following range of values. `5`: Fully compatible with MySQL 5.x (default) `8`: Fully compatible with MySQL 8.0. This parameter takes effect when the primary instance is created, and the read-only instance has the same MySQL version as the primary instance by default.
  late final pulumi.Output<int> mysqlVersion;

  /// (Available since v1.196.0) The connection port of the DRDS instance.
  late final pulumi.Output<String> port;

  /// User-defined DRDS instance specification. Value range:
  /// - `drds.sn1.4c8g` for DRDS instance Starter version;
  /// - value range : `drds.sn1.4c8g.8c16g`, `drds.sn1.4c8g.16c32g`, `drds.sn1.4c8g.32c64g`, `drds.sn1.4c8g.64c128g`
  /// - `drds.sn1.8c16g` for DRDS instance Standard edition;
  /// - value range : `drds.sn1.8c16g.16c32g`, `drds.sn1.8c16g.32c64g`, `drds.sn1.8c16g.64c128g`
  /// - `drds.sn1.16c32g` for DRDS instance Enterprise Edition;
  /// - value range : `drds.sn1.16c32g.32c64g`, `drds.sn1.16c32g.64c128g`
  /// - `drds.sn1.32c64g` for DRDS instance Extreme Edition;
  /// - value range : `drds.sn1.32c64g.128c256g`
  late final pulumi.Output<String> specification;

  /// The id of the VPC.
  late final pulumi.Output<String> vpcId;

  /// The VSwitch ID to launch in.
  late final pulumi.Output<String> vswitchId;

  /// The Zone to launch the DRDS instance.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_drds_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:drds/instance:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectionString = registerOutput<String>('connectionString');
    description = registerOutput<String>('description');
    instanceChargeType = registerOutput<String?>('instanceChargeType');
    instanceSeries = registerOutput<String>('instanceSeries');
    mysqlVersion = registerOutput<int>('mysqlVersion');
    port = registerOutput<String>('port');
    specification = registerOutput<String>('specification');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:drds/instance:Instance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectionString = registerOutput<String>('connectionString');
    description = registerOutput<String>('description');
    instanceChargeType = registerOutput<String?>('instanceChargeType');
    instanceSeries = registerOutput<String>('instanceSeries');
    mysqlVersion = registerOutput<int>('mysqlVersion');
    port = registerOutput<String>('port');
    specification = registerOutput<String>('specification');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }
}
