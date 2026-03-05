import 'package:pulumi/pulumi.dart' as pulumi;
import 'read_write_splitting_connection_args.dart';
import 'read_write_splitting_connection_state.dart';

/// Provides an RDS read write splitting connection resource to allocate an Intranet connection string for RDS instance, see [What is DB Read Write Splitting Connection](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/api-rds-2014-08-15-allocatereadwritesplittingconnection).
///
/// &gt; **NOTE:** Available since v1.48.0.
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
/// const example = alicloud.rds.getZones({
///     engine: "MySQL",
///     engineVersion: "5.6",
/// });
/// const exampleGetInstanceClasses = example.then(example => alicloud.rds.getInstanceClasses({
///     zoneId: example.ids?.[0],
///     engine: "MySQL",
///     engineVersion: "5.6",
/// }));
/// const exampleNetwork = new alicloud.vpc.Network("example", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vpcId: exampleNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: example.then(example => example.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const exampleSecurityGroup = new alicloud.ecs.SecurityGroup("example", {
///     name: name,
///     vpcId: exampleNetwork.id,
/// });
/// const exampleInstance = new alicloud.rds.Instance("example", {
///     engine: "MySQL",
///     engineVersion: "5.6",
///     category: "HighAvailability",
///     instanceType: exampleGetInstanceClasses.then(exampleGetInstanceClasses => exampleGetInstanceClasses.instanceClasses?.[1]?.instanceClass),
///     instanceStorage: 20,
///     instanceChargeType: "Postpaid",
///     instanceName: name,
///     vswitchId: exampleSwitch.id,
///     securityIps: [
///         "10.168.1.12",
///         "100.69.7.112",
///     ],
/// });
/// const exampleReadOnlyInstance = new alicloud.rds.ReadOnlyInstance("example", {
///     zoneId: exampleInstance.zoneId,
///     masterDbInstanceId: exampleInstance.id,
///     engineVersion: exampleInstance.engineVersion,
///     instanceStorage: exampleInstance.instanceStorage,
///     instanceType: exampleInstance.instanceType,
///     instanceName: `${name}readonly`,
///     vswitchId: exampleSwitch.id,
/// });
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const exampleReadWriteSplittingConnection = new alicloud.rds.ReadWriteSplittingConnection("example", {
///     instanceId: exampleReadOnlyInstance.masterDbInstanceId,
///     connectionPrefix: `example-con-${_default.result}`,
///     distributionType: "Standard",
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
/// example = alicloud.rds.get_zones(engine="MySQL",
///     engine_version="5.6")
/// example_get_instance_classes = alicloud.rds.get_instance_classes(zone_id=example.ids[0],
///     engine="MySQL",
///     engine_version="5.6")
/// example_network = alicloud.vpc.Network("example",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// example_switch = alicloud.vpc.Switch("example",
///     vpc_id=example_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=example.zones[0].id,
///     vswitch_name=name)
/// example_security_group = alicloud.ecs.SecurityGroup("example",
///     name=name,
///     vpc_id=example_network.id)
/// example_instance = alicloud.rds.Instance("example",
///     engine="MySQL",
///     engine_version="5.6",
///     category="HighAvailability",
///     instance_type=example_get_instance_classes.instance_classes[1].instance_class,
///     instance_storage=20,
///     instance_charge_type="Postpaid",
///     instance_name=name,
///     vswitch_id=example_switch.id,
///     security_ips=[
///         "10.168.1.12",
///         "100.69.7.112",
///     ])
/// example_read_only_instance = alicloud.rds.ReadOnlyInstance("example",
///     zone_id=example_instance.zone_id,
///     master_db_instance_id=example_instance.id,
///     engine_version=example_instance.engine_version,
///     instance_storage=example_instance.instance_storage,
///     instance_type=example_instance.instance_type,
///     instance_name=f"{name}readonly",
///     vswitch_id=example_switch.id)
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// example_read_write_splitting_connection = alicloud.rds.ReadWriteSplittingConnection("example",
///     instance_id=example_read_only_instance.master_db_instance_id,
///     connection_prefix=f"example-con-{default['result']}",
///     distribution_type="Standard")
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
///     var example = AliCloud.Rds.GetZones.Invoke(new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "5.6",
///     });
///
///     var exampleGetInstanceClasses = AliCloud.Rds.GetInstanceClasses.Invoke(new()
///     {
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Ids[0]),
///         Engine = "MySQL",
///         EngineVersion = "5.6",
///     });
///
///     var exampleNetwork = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VpcId = exampleNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         VswitchName = name,
///     });
///
///     var exampleSecurityGroup = new AliCloud.Ecs.SecurityGroup("example", new()
///     {
///         Name = name,
///         VpcId = exampleNetwork.Id,
///     });
///
///     var exampleInstance = new AliCloud.Rds.Instance("example", new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "5.6",
///         Category = "HighAvailability",
///         InstanceType = exampleGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[1]?.InstanceClass),
///         InstanceStorage = 20,
///         InstanceChargeType = "Postpaid",
///         InstanceName = name,
///         VswitchId = exampleSwitch.Id,
///         SecurityIps = new[]
///         {
///             "10.168.1.12",
///             "100.69.7.112",
///         },
///     });
///
///     var exampleReadOnlyInstance = new AliCloud.Rds.ReadOnlyInstance("example", new()
///     {
///         ZoneId = exampleInstance.ZoneId,
///         MasterDbInstanceId = exampleInstance.Id,
///         EngineVersion = exampleInstance.EngineVersion,
///         InstanceStorage = exampleInstance.InstanceStorage,
///         InstanceType = exampleInstance.InstanceType,
///         InstanceName = $"{name}readonly",
///         VswitchId = exampleSwitch.Id,
///     });
///
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var exampleReadWriteSplittingConnection = new AliCloud.Rds.ReadWriteSplittingConnection("example", new()
///     {
///         InstanceId = exampleReadOnlyInstance.MasterDbInstanceId,
///         ConnectionPrefix = $"example-con-{@default.Result}",
///         DistributionType = "Standard",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
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
/// 		example, err := rds.GetZones(ctx, &rds.GetZonesArgs{
/// 			Engine:        pulumi.StringRef("MySQL"),
/// 			EngineVersion: pulumi.StringRef("5.6"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetInstanceClasses, err := rds.GetInstanceClasses(ctx, &rds.GetInstanceClassesArgs{
/// 			ZoneId:        pulumi.StringRef(example.Ids[0]),
/// 			Engine:        pulumi.StringRef("MySQL"),
/// 			EngineVersion: pulumi.StringRef("5.6"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetwork, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VpcId:       exampleNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(example.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewSecurityGroup(ctx, "example", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: exampleNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := rds.NewInstance(ctx, "example", &rds.InstanceArgs{
/// 			Engine:             pulumi.String("MySQL"),
/// 			EngineVersion:      pulumi.String("5.6"),
/// 			Category:           pulumi.String("HighAvailability"),
/// 			InstanceType:       pulumi.String(exampleGetInstanceClasses.InstanceClasses[1].InstanceClass),
/// 			InstanceStorage:    pulumi.Int(20),
/// 			InstanceChargeType: pulumi.String("Postpaid"),
/// 			InstanceName:       pulumi.String(name),
/// 			VswitchId:          exampleSwitch.ID(),
/// 			SecurityIps: pulumi.StringArray{
/// 				pulumi.String("10.168.1.12"),
/// 				pulumi.String("100.69.7.112"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleReadOnlyInstance, err := rds.NewReadOnlyInstance(ctx, "example", &rds.ReadOnlyInstanceArgs{
/// 			ZoneId:             exampleInstance.ZoneId,
/// 			MasterDbInstanceId: exampleInstance.ID(),
/// 			EngineVersion:      exampleInstance.EngineVersion,
/// 			InstanceStorage:    exampleInstance.InstanceStorage,
/// 			InstanceType:       exampleInstance.InstanceType,
/// 			InstanceName:       pulumi.Sprintf("%vreadonly", name),
/// 			VswitchId:          exampleSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewReadWriteSplittingConnection(ctx, "example", &rds.ReadWriteSplittingConnectionArgs{
/// 			InstanceId:       exampleReadOnlyInstance.MasterDbInstanceId,
/// 			ConnectionPrefix: pulumi.Sprintf("example-con-%v", _default.Result),
/// 			DistributionType: pulumi.String("Standard"),
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.rds.inputs.GetInstanceClassesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.rds.Instance;
/// import com.pulumi.alicloud.rds.InstanceArgs;
/// import com.pulumi.alicloud.rds.ReadOnlyInstance;
/// import com.pulumi.alicloud.rds.ReadOnlyInstanceArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.rds.ReadWriteSplittingConnection;
/// import com.pulumi.alicloud.rds.ReadWriteSplittingConnectionArgs;
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
///         final var example = RdsFunctions.getZones(GetZonesArgs.builder()
///             .engine("MySQL")
///             .engineVersion("5.6")
///             .build());
///
///         final var exampleGetInstanceClasses = RdsFunctions.getInstanceClasses(GetInstanceClassesArgs.builder()
///             .zoneId(example.ids()[0])
///             .engine("MySQL")
///             .engineVersion("5.6")
///             .build());
///
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vpcId(exampleNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(example.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(exampleNetwork.id())
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .engine("MySQL")
///             .engineVersion("5.6")
///             .category("HighAvailability")
///             .instanceType(exampleGetInstanceClasses.instanceClasses()[1].instanceClass())
///             .instanceStorage(20)
///             .instanceChargeType("Postpaid")
///             .instanceName(name)
///             .vswitchId(exampleSwitch.id())
///             .securityIps(
///                 "10.168.1.12",
///                 "100.69.7.112")
///             .build());
///
///         var exampleReadOnlyInstance = new ReadOnlyInstance("exampleReadOnlyInstance", ReadOnlyInstanceArgs.builder()
///             .zoneId(exampleInstance.zoneId())
///             .masterDbInstanceId(exampleInstance.id())
///             .engineVersion(exampleInstance.engineVersion())
///             .instanceStorage(exampleInstance.instanceStorage())
///             .instanceType(exampleInstance.instanceType())
///             .instanceName(String.format("%sreadonly", name))
///             .vswitchId(exampleSwitch.id())
///             .build());
///
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var exampleReadWriteSplittingConnection = new ReadWriteSplittingConnection("exampleReadWriteSplittingConnection", ReadWriteSplittingConnectionArgs.builder()
///             .instanceId(exampleReadOnlyInstance.masterDbInstanceId())
///             .connectionPrefix(String.format("example-con-%s", default_.result()))
///             .distributionType("Standard")
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
///   exampleNetwork:
///     type: alicloud:vpc:Network
///     name: example
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/16
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vpcId: ${exampleNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${example.zones[0].id}
///       vswitchName: ${name}
///   exampleSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: example
///     properties:
///       name: ${name}
///       vpcId: ${exampleNetwork.id}
///   exampleInstance:
///     type: alicloud:rds:Instance
///     name: example
///     properties:
///       engine: MySQL
///       engineVersion: '5.6'
///       category: HighAvailability
///       instanceType: ${exampleGetInstanceClasses.instanceClasses[1].instanceClass}
///       instanceStorage: '20'
///       instanceChargeType: Postpaid
///       instanceName: ${name}
///       vswitchId: ${exampleSwitch.id}
///       securityIps:
///         - 10.168.1.12
///         - 100.69.7.112
///   exampleReadOnlyInstance:
///     type: alicloud:rds:ReadOnlyInstance
///     name: example
///     properties:
///       zoneId: ${exampleInstance.zoneId}
///       masterDbInstanceId: ${exampleInstance.id}
///       engineVersion: ${exampleInstance.engineVersion}
///       instanceStorage: ${exampleInstance.instanceStorage}
///       instanceType: ${exampleInstance.instanceType}
///       instanceName: ${name}readonly
///       vswitchId: ${exampleSwitch.id}
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   exampleReadWriteSplittingConnection:
///     type: alicloud:rds:ReadWriteSplittingConnection
///     name: example
///     properties:
///       instanceId: ${exampleReadOnlyInstance.masterDbInstanceId}
///       connectionPrefix: example-con-${default.result}
///       distributionType: Standard
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:rds:getZones
///       arguments:
///         engine: MySQL
///         engineVersion: '5.6'
///   exampleGetInstanceClasses:
///     fn::invoke:
///       function: alicloud:rds:getInstanceClasses
///       arguments:
///         zoneId: ${example.ids[0]}
///         engine: MySQL
///         engineVersion: '5.6'
/// ```
///
///
/// &gt; **NOTE:** Resource `alicloud.rds.ReadWriteSplittingConnection` should be created after `alicloud.rds.ReadOnlyInstance`, so the `depends_on` statement is necessary.
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS read write splitting connection can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/readWriteSplittingConnection:ReadWriteSplittingConnection example abc12345678
/// ```
class ReadWriteSplittingConnection extends pulumi.CustomResource {
  /// Prefix of an Internet connection string. It must be checked for uniqueness. It may consist of lowercase letters, numbers, and underlines, and must start with a letter and have no more than 30 characters. Default to &lt;instance_id&gt; + 'rw'.
  late final pulumi.Output<String?> connectionPrefix;
  /// Connection instance string.
  late final pulumi.Output<String> connectionString;
  /// Read weight distribution mode. Values are as follows: `Standard` indicates automatic weight distribution based on types, `Custom` indicates custom weight distribution.
  late final pulumi.Output<String> distributionType;
  /// The Id of instance that can run database.
  late final pulumi.Output<String> instanceId;
  /// Delay threshold, in seconds. The value range is 0 to 7200. Default to 30. Read requests are not routed to the read-only instances with a delay greater than the threshold.
  late final pulumi.Output<int> maxDelayTime;
  /// Intranet connection port. Valid value: [3001-3999]. Default to 3306.
  late final pulumi.Output<int> port;
  /// Read weight distribution. Read weights increase at a step of 100 up to 10,000. Enter weights in the following format: {"Instanceid":"Weight","Instanceid":"Weight"}. This parameter must be set when distribution_type is set to Custom.
  late final pulumi.Output<Map<String, String>?> weight;

  /// Creates a new [ReadWriteSplittingConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReadWriteSplittingConnection]. {@macro pulumi_rds_read_write_splitting_connection_read_write_splitting_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReadWriteSplittingConnection(
    String name, {
    ReadWriteSplittingConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/readWriteSplittingConnection:ReadWriteSplittingConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionPrefix = registerOutput<String?>('connectionPrefix');
    connectionString = registerOutput<String>('connectionString');
    distributionType = registerOutput<String>('distributionType');
    instanceId = registerOutput<String>('instanceId');
    maxDelayTime = registerOutput<int>('maxDelayTime');
    port = registerOutput<int>('port');
    weight = registerOutput<Map<String, String>?>('weight');
  }

  /// Gets an existing [ReadWriteSplittingConnection] resource's state with the given [name] and [id].
  static ReadWriteSplittingConnection get(
    String name,
    pulumi.Input<String> id, {
    ReadWriteSplittingConnectionState? state,
  }) {
    return ReadWriteSplittingConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReadWriteSplittingConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/readWriteSplittingConnection:ReadWriteSplittingConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionPrefix = registerOutput<String?>('connectionPrefix');
    connectionString = registerOutput<String>('connectionString');
    distributionType = registerOutput<String>('distributionType');
    instanceId = registerOutput<String>('instanceId');
    maxDelayTime = registerOutput<int>('maxDelayTime');
    port = registerOutput<int>('port');
    weight = registerOutput<Map<String, String>?>('weight');
  }
}
