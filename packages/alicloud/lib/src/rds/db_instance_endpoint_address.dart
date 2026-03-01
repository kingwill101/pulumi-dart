import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_endpoint_address_args.dart';

/// Provide RDS cluster instance endpoint public connection resources.
///
/// Information about RDS MySQL cluster endpoint address and how to use it, see [What is RDS DB Instance Endpoint Address](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/api-rds-2014-08-15-createdbinstanceendpointaddress).
///
/// > **NOTE:** Available since v1.204.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.rds.getZones({
///     engine: "MySQL",
///     engineVersion: "8.0",
///     instanceChargeType: "PostPaid",
///     category: "cluster",
///     dbInstanceStorageType: "cloud_essd",
/// });
/// const defaultGetInstanceClasses = _default.then(_default => alicloud.rds.getInstanceClasses({
///     zoneId: _default.ids?.[0],
///     engine: "MySQL",
///     engineVersion: "8.0",
///     category: "cluster",
///     dbInstanceStorageType: "cloud_essd",
///     instanceChargeType: "PostPaid",
/// }));
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.ids?.[0]),
///     vswitchName: name,
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultInstance = new alicloud.rds.Instance("default", {
///     engine: "MySQL",
///     engineVersion: "8.0",
///     instanceType: defaultGetInstanceClasses.then(defaultGetInstanceClasses => defaultGetInstanceClasses.instanceClasses?.[0]?.instanceClass),
///     instanceStorage: defaultGetInstanceClasses.then(defaultGetInstanceClasses => defaultGetInstanceClasses.instanceClasses?.[0]?.storageRange?.min),
///     instanceChargeType: "Postpaid",
///     instanceName: name,
///     vswitchId: defaultSwitch.id,
///     monitoringPeriod: 60,
///     dbInstanceStorageType: "cloud_essd",
///     securityGroupIds: [defaultSecurityGroup.id],
///     zoneId: _default.then(_default => _default.ids?.[0]),
///     zoneIdSlaveA: _default.then(_default => _default.ids?.[0]),
/// });
/// const defaultDbNode = new alicloud.rds.DbNode("default", {
///     dbInstanceId: defaultInstance.id,
///     classCode: defaultInstance.instanceType,
///     zoneId: defaultSwitch.zoneId,
/// });
/// const defaultDbInstanceEndpoint = new alicloud.rds.DbInstanceEndpoint("default", {
///     dbInstanceId: defaultDbNode.dbInstanceId,
///     vpcId: defaultNetwork.id,
///     vswitchId: defaultInstance.vswitchId,
///     connectionStringPrefix: "example",
///     port: "3306",
///     dbInstanceEndpointDescription: name,
///     nodeItems: [{
///         nodeId: defaultDbNode.nodeId,
///         weight: 25,
///     }],
/// });
/// const defaultDbInstanceEndpointAddress = new alicloud.rds.DbInstanceEndpointAddress("default", {
///     dbInstanceId: defaultInstance.id,
///     dbInstanceEndpointId: defaultDbInstanceEndpoint.dbInstanceEndpointId,
///     connectionStringPrefix: "tf-example-prefix",
///     port: "3306",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.rds.get_zones(engine="MySQL",
///     engine_version="8.0",
///     instance_charge_type="PostPaid",
///     category="cluster",
///     db_instance_storage_type="cloud_essd")
/// default_get_instance_classes = alicloud.rds.get_instance_classes(zone_id=default.ids[0],
///     engine="MySQL",
///     engine_version="8.0",
///     category="cluster",
///     db_instance_storage_type="cloud_essd",
///     instance_charge_type="PostPaid")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.ids[0],
///     vswitch_name=name)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_instance = alicloud.rds.Instance("default",
///     engine="MySQL",
///     engine_version="8.0",
///     instance_type=default_get_instance_classes.instance_classes[0].instance_class,
///     instance_storage=default_get_instance_classes.instance_classes[0].storage_range.min,
///     instance_charge_type="Postpaid",
///     instance_name=name,
///     vswitch_id=default_switch.id,
///     monitoring_period=60,
///     db_instance_storage_type="cloud_essd",
///     security_group_ids=[default_security_group.id],
///     zone_id=default.ids[0],
///     zone_id_slave_a=default.ids[0])
/// default_db_node = alicloud.rds.DbNode("default",
///     db_instance_id=default_instance.id,
///     class_code=default_instance.instance_type,
///     zone_id=default_switch.zone_id)
/// default_db_instance_endpoint = alicloud.rds.DbInstanceEndpoint("default",
///     db_instance_id=default_db_node.db_instance_id,
///     vpc_id=default_network.id,
///     vswitch_id=default_instance.vswitch_id,
///     connection_string_prefix="example",
///     port="3306",
///     db_instance_endpoint_description=name,
///     node_items=[{
///         "node_id": default_db_node.node_id,
///         "weight": 25,
///     }])
/// default_db_instance_endpoint_address = alicloud.rds.DbInstanceEndpointAddress("default",
///     db_instance_id=default_instance.id,
///     db_instance_endpoint_id=default_db_instance_endpoint.db_instance_endpoint_id,
///     connection_string_prefix="tf-example-prefix",
///     port="3306")
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.Rds.GetZones.Invoke(new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         InstanceChargeType = "PostPaid",
///         Category = "cluster",
///         DbInstanceStorageType = "cloud_essd",
///     });
///
///     var defaultGetInstanceClasses = AliCloud.Rds.GetInstanceClasses.Invoke(new()
///     {
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Ids[0]),
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         Category = "cluster",
///         DbInstanceStorageType = "cloud_essd",
///         InstanceChargeType = "PostPaid",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Ids[0])),
///         VswitchName = name,
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstance = new AliCloud.Rds.Instance("default", new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         InstanceType = defaultGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.InstanceClass),
///         InstanceStorage = defaultGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.StorageRange?.Min),
///         InstanceChargeType = "Postpaid",
///         InstanceName = name,
///         VswitchId = defaultSwitch.Id,
///         MonitoringPeriod = 60,
///         DbInstanceStorageType = "cloud_essd",
///         SecurityGroupIds = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Ids[0])),
///         ZoneIdSlaveA = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Ids[0])),
///     });
///
///     var defaultDbNode = new AliCloud.Rds.DbNode("default", new()
///     {
///         DbInstanceId = defaultInstance.Id,
///         ClassCode = defaultInstance.InstanceType,
///         ZoneId = defaultSwitch.ZoneId,
///     });
///
///     var defaultDbInstanceEndpoint = new AliCloud.Rds.DbInstanceEndpoint("default", new()
///     {
///         DbInstanceId = defaultDbNode.DbInstanceId,
///         VpcId = defaultNetwork.Id,
///         VswitchId = defaultInstance.VswitchId,
///         ConnectionStringPrefix = "example",
///         Port = "3306",
///         DbInstanceEndpointDescription = name,
///         NodeItems = new[]
///         {
///             new AliCloud.Rds.Inputs.DbInstanceEndpointNodeItemArgs
///             {
///                 NodeId = defaultDbNode.NodeId,
///                 Weight = 25,
///             },
///         },
///     });
///
///     var defaultDbInstanceEndpointAddress = new AliCloud.Rds.DbInstanceEndpointAddress("default", new()
///     {
///         DbInstanceId = defaultInstance.Id,
///         DbInstanceEndpointId = defaultDbInstanceEndpoint.DbInstanceEndpointId,
///         ConnectionStringPrefix = "tf-example-prefix",
///         Port = "3306",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		_default, err := rds.GetZones(ctx, &rds.GetZonesArgs{
/// 			Engine:                pulumi.StringRef("MySQL"),
/// 			EngineVersion:         pulumi.StringRef("8.0"),
/// 			InstanceChargeType:    pulumi.StringRef("PostPaid"),
/// 			Category:              pulumi.StringRef("cluster"),
/// 			DbInstanceStorageType: pulumi.StringRef("cloud_essd"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceClasses, err := rds.GetInstanceClasses(ctx, &rds.GetInstanceClassesArgs{
/// 			ZoneId:                pulumi.StringRef(_default.Ids[0]),
/// 			Engine:                pulumi.StringRef("MySQL"),
/// 			EngineVersion:         pulumi.StringRef("8.0"),
/// 			Category:              pulumi.StringRef("cluster"),
/// 			DbInstanceStorageType: pulumi.StringRef("cloud_essd"),
/// 			InstanceChargeType:    pulumi.StringRef("PostPaid"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Ids[0]),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := rds.NewInstance(ctx, "default", &rds.InstanceArgs{
/// 			Engine:                pulumi.String("MySQL"),
/// 			EngineVersion:         pulumi.String("8.0"),
/// 			InstanceType:          pulumi.String(defaultGetInstanceClasses.InstanceClasses[0].InstanceClass),
/// 			InstanceStorage:       pulumi.String(defaultGetInstanceClasses.InstanceClasses[0].StorageRange.Min),
/// 			InstanceChargeType:    pulumi.String("Postpaid"),
/// 			InstanceName:          pulumi.String(name),
/// 			VswitchId:             defaultSwitch.ID(),
/// 			MonitoringPeriod:      pulumi.Int(60),
/// 			DbInstanceStorageType: pulumi.String("cloud_essd"),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 			ZoneId:       pulumi.String(_default.Ids[0]),
/// 			ZoneIdSlaveA: pulumi.String(_default.Ids[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDbNode, err := rds.NewDbNode(ctx, "default", &rds.DbNodeArgs{
/// 			DbInstanceId: defaultInstance.ID(),
/// 			ClassCode:    defaultInstance.InstanceType,
/// 			ZoneId:       defaultSwitch.ZoneId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDbInstanceEndpoint, err := rds.NewDbInstanceEndpoint(ctx, "default", &rds.DbInstanceEndpointArgs{
/// 			DbInstanceId:                  defaultDbNode.DbInstanceId,
/// 			VpcId:                         defaultNetwork.ID(),
/// 			VswitchId:                     defaultInstance.VswitchId,
/// 			ConnectionStringPrefix:        pulumi.String("example"),
/// 			Port:                          pulumi.String("3306"),
/// 			DbInstanceEndpointDescription: pulumi.String(name),
/// 			NodeItems: rds.DbInstanceEndpointNodeItemArray{
/// 				&rds.DbInstanceEndpointNodeItemArgs{
/// 					NodeId: defaultDbNode.NodeId,
/// 					Weight: pulumi.Int(25),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewDbInstanceEndpointAddress(ctx, "default", &rds.DbInstanceEndpointAddressArgs{
/// 			DbInstanceId:           defaultInstance.ID(),
/// 			DbInstanceEndpointId:   defaultDbInstanceEndpoint.DbInstanceEndpointId,
/// 			ConnectionStringPrefix: pulumi.String("tf-example-prefix"),
/// 			Port:                   pulumi.String("3306"),
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
/// import com.pulumi.alicloud.rds.DbNode;
/// import com.pulumi.alicloud.rds.DbNodeArgs;
/// import com.pulumi.alicloud.rds.DbInstanceEndpoint;
/// import com.pulumi.alicloud.rds.DbInstanceEndpointArgs;
/// import com.pulumi.alicloud.rds.inputs.DbInstanceEndpointNodeItemArgs;
/// import com.pulumi.alicloud.rds.DbInstanceEndpointAddress;
/// import com.pulumi.alicloud.rds.DbInstanceEndpointAddressArgs;
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
///         final var default = RdsFunctions.getZones(GetZonesArgs.builder()
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .instanceChargeType("PostPaid")
///             .category("cluster")
///             .dbInstanceStorageType("cloud_essd")
///             .build());
///
///         final var defaultGetInstanceClasses = RdsFunctions.getInstanceClasses(GetInstanceClassesArgs.builder()
///             .zoneId(default_.ids()[0])
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .category("cluster")
///             .dbInstanceStorageType("cloud_essd")
///             .instanceChargeType("PostPaid")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.ids()[0])
///             .vswitchName(name)
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .instanceType(defaultGetInstanceClasses.instanceClasses()[0].instanceClass())
///             .instanceStorage(defaultGetInstanceClasses.instanceClasses()[0].storageRange().min())
///             .instanceChargeType("Postpaid")
///             .instanceName(name)
///             .vswitchId(defaultSwitch.id())
///             .monitoringPeriod(60)
///             .dbInstanceStorageType("cloud_essd")
///             .securityGroupIds(defaultSecurityGroup.id())
///             .zoneId(default_.ids()[0])
///             .zoneIdSlaveA(default_.ids()[0])
///             .build());
///
///         var defaultDbNode = new DbNode("defaultDbNode", DbNodeArgs.builder()
///             .dbInstanceId(defaultInstance.id())
///             .classCode(defaultInstance.instanceType())
///             .zoneId(defaultSwitch.zoneId())
///             .build());
///
///         var defaultDbInstanceEndpoint = new DbInstanceEndpoint("defaultDbInstanceEndpoint", DbInstanceEndpointArgs.builder()
///             .dbInstanceId(defaultDbNode.dbInstanceId())
///             .vpcId(defaultNetwork.id())
///             .vswitchId(defaultInstance.vswitchId())
///             .connectionStringPrefix("example")
///             .port("3306")
///             .dbInstanceEndpointDescription(name)
///             .nodeItems(DbInstanceEndpointNodeItemArgs.builder()
///                 .nodeId(defaultDbNode.nodeId())
///                 .weight(25)
///                 .build())
///             .build());
///
///         var defaultDbInstanceEndpointAddress = new DbInstanceEndpointAddress("defaultDbInstanceEndpointAddress", DbInstanceEndpointAddressArgs.builder()
///             .dbInstanceId(defaultInstance.id())
///             .dbInstanceEndpointId(defaultDbInstanceEndpoint.dbInstanceEndpointId())
///             .connectionStringPrefix("tf-example-prefix")
///             .port("3306")
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
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.ids[0]}
///       vswitchName: ${name}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultNetwork.id}
///   defaultInstance:
///     type: alicloud:rds:Instance
///     name: default
///     properties:
///       engine: MySQL
///       engineVersion: '8.0'
///       instanceType: ${defaultGetInstanceClasses.instanceClasses[0].instanceClass}
///       instanceStorage: ${defaultGetInstanceClasses.instanceClasses[0].storageRange.min}
///       instanceChargeType: Postpaid
///       instanceName: ${name}
///       vswitchId: ${defaultSwitch.id}
///       monitoringPeriod: '60'
///       dbInstanceStorageType: cloud_essd
///       securityGroupIds:
///         - ${defaultSecurityGroup.id}
///       zoneId: ${default.ids[0]}
///       zoneIdSlaveA: ${default.ids[0]}
///   defaultDbNode:
///     type: alicloud:rds:DbNode
///     name: default
///     properties:
///       dbInstanceId: ${defaultInstance.id}
///       classCode: ${defaultInstance.instanceType}
///       zoneId: ${defaultSwitch.zoneId}
///   defaultDbInstanceEndpoint:
///     type: alicloud:rds:DbInstanceEndpoint
///     name: default
///     properties:
///       dbInstanceId: ${defaultDbNode.dbInstanceId}
///       vpcId: ${defaultNetwork.id}
///       vswitchId: ${defaultInstance.vswitchId}
///       connectionStringPrefix: example
///       port: '3306'
///       dbInstanceEndpointDescription: ${name}
///       nodeItems:
///         - nodeId: ${defaultDbNode.nodeId}
///           weight: 25
///   defaultDbInstanceEndpointAddress:
///     type: alicloud:rds:DbInstanceEndpointAddress
///     name: default
///     properties:
///       dbInstanceId: ${defaultInstance.id}
///       dbInstanceEndpointId: ${defaultDbInstanceEndpoint.dbInstanceEndpointId}
///       connectionStringPrefix: tf-example-prefix
///       port: '3306'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:rds:getZones
///       arguments:
///         engine: MySQL
///         engineVersion: '8.0'
///         instanceChargeType: PostPaid
///         category: cluster
///         dbInstanceStorageType: cloud_essd
///   defaultGetInstanceClasses:
///     fn::invoke:
///       function: alicloud:rds:getInstanceClasses
///       arguments:
///         zoneId: ${default.ids[0]}
///         engine: MySQL
///         engineVersion: '8.0'
///         category: cluster
///         dbInstanceStorageType: cloud_essd
///         instanceChargeType: PostPaid
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS database endpoint public address feature can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/dbInstanceEndpointAddress:DbInstanceEndpointAddress example <db_instance_id>:<db_instance_endpoint_id>
/// ```
class DbInstanceEndpointAddress extends pulumi.CustomResource {
  /// The endpoint of the instance.
  late final pulumi.Output<String> connectionString;
  /// The prefix of the public endpoint.
  late final pulumi.Output<String> connectionStringPrefix;
  /// The Endpoint ID of the instance.
  late final pulumi.Output<String> dbInstanceEndpointId;
  /// The ID of the instance.
  late final pulumi.Output<String> dbInstanceId;
  /// The IP address of the endpoint.
  late final pulumi.Output<String> ipAddress;
  /// The type of the IP address.
  late final pulumi.Output<String> ipType;
  /// The port number of the public endpoint.
  late final pulumi.Output<String> port;

  /// Creates a new [DbInstanceEndpointAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DbInstanceEndpointAddress]. {@macro pulumi_rds_db_instance_endpoint_address_db_instance_endpoint_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DbInstanceEndpointAddress(
    String name, {
    DbInstanceEndpointAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/dbInstanceEndpointAddress:DbInstanceEndpointAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionString = registerOutput<String>('connectionString');
    this.connectionStringPrefix = registerOutput<String>('connectionStringPrefix');
    this.dbInstanceEndpointId = registerOutput<String>('dbInstanceEndpointId');
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.ipType = registerOutput<String>('ipType');
    this.port = registerOutput<String>('port');
  }
}
