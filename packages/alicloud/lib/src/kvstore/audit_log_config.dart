import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_log_config_args.dart';

/// Provides a Tair (Redis OSS-Compatible) And Memcache (KVStore) Audit Log Config resource.
///
/// > **NOTE:** Available since v1.130.0.
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
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.kvstore.getZones({});
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
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
/// const defaultInstance = new alicloud.kvstore.Instance("default", {
///     dbInstanceName: name,
///     vswitchId: defaultSwitch.id,
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.ids?.[0]),
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     instanceClass: "redis.master.large.default",
///     instanceType: "Redis",
///     engineVersion: "5.0",
///     securityIps: ["10.23.12.24"],
///     config: {
///         appendonly: "yes",
///         "lazyfree-lazy-eviction": "yes",
///     },
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// const example = new alicloud.kvstore.AuditLogConfig("example", {
///     instanceId: defaultInstance.id,
///     dbAudit: true,
///     retention: 1,
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
/// default = alicloud.kvstore.get_zones()
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_instance = alicloud.kvstore.Instance("default",
///     db_instance_name=name,
///     vswitch_id=default_switch.id,
///     resource_group_id=default_get_resource_groups.ids[0],
///     zone_id=default.zones[0].id,
///     instance_class="redis.master.large.default",
///     instance_type="Redis",
///     engine_version="5.0",
///     security_ips=["10.23.12.24"],
///     config={
///         "appendonly": "yes",
///         "lazyfree-lazy-eviction": "yes",
///     },
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// example = alicloud.kvstore.AuditLogConfig("example",
///     instance_id=default_instance.id,
///     db_audit=True,
///     retention=1)
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
///     var @default = AliCloud.KVStore.GetZones.Invoke();
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
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
///     var defaultInstance = new AliCloud.KVStore.Instance("default", new()
///     {
///         DbInstanceName = name,
///         VswitchId = defaultSwitch.Id,
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0]),
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         InstanceClass = "redis.master.large.default",
///         InstanceType = "Redis",
///         EngineVersion = "5.0",
///         SecurityIps = new[]
///         {
///             "10.23.12.24",
///         },
///         Config =
///         {
///             { "appendonly", "yes" },
///             { "lazyfree-lazy-eviction", "yes" },
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
///     var example = new AliCloud.KVStore.AuditLogConfig("example", new()
///     {
///         InstanceId = defaultInstance.Id,
///         DbAudit = true,
///         Retention = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kvstore"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_default, err := kvstore.GetZones(ctx, &kvstore.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
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
/// 		defaultInstance, err := kvstore.NewInstance(ctx, "default", &kvstore.InstanceArgs{
/// 			DbInstanceName:  pulumi.String(name),
/// 			VswitchId:       defaultSwitch.ID(),
/// 			ResourceGroupId: pulumi.String(defaultGetResourceGroups.Ids[0]),
/// 			ZoneId:          pulumi.String(_default.Zones[0].Id),
/// 			InstanceClass:   pulumi.String("redis.master.large.default"),
/// 			InstanceType:    pulumi.String("Redis"),
/// 			EngineVersion:   pulumi.String("5.0"),
/// 			SecurityIps: pulumi.StringArray{
/// 				pulumi.String("10.23.12.24"),
/// 			},
/// 			Config: pulumi.StringMap{
/// 				"appendonly":             pulumi.String("yes"),
/// 				"lazyfree-lazy-eviction": pulumi.String("yes"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kvstore.NewAuditLogConfig(ctx, "example", &kvstore.AuditLogConfigArgs{
/// 			InstanceId: defaultInstance.ID(),
/// 			DbAudit:    pulumi.Bool(true),
/// 			Retention:  pulumi.Int(1),
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
/// import com.pulumi.alicloud.kvstore.KvstoreFunctions;
/// import com.pulumi.alicloud.kvstore.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.kvstore.Instance;
/// import com.pulumi.alicloud.kvstore.InstanceArgs;
/// import com.pulumi.alicloud.kvstore.AuditLogConfig;
/// import com.pulumi.alicloud.kvstore.AuditLogConfigArgs;
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
///         final var default = KvstoreFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
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
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .dbInstanceName(name)
///             .vswitchId(defaultSwitch.id())
///             .resourceGroupId(defaultGetResourceGroups.ids()[0])
///             .zoneId(default_.zones()[0].id())
///             .instanceClass("redis.master.large.default")
///             .instanceType("Redis")
///             .engineVersion("5.0")
///             .securityIps("10.23.12.24")
///             .config(Map.ofEntries(
///                 Map.entry("appendonly", "yes"),
///                 Map.entry("lazyfree-lazy-eviction", "yes")
///             ))
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///         var example = new AuditLogConfig("example", AuditLogConfigArgs.builder()
///             .instanceId(defaultInstance.id())
///             .dbAudit(true)
///             .retention(1)
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
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///   defaultInstance:
///     type: alicloud:kvstore:Instance
///     name: default
///     properties:
///       dbInstanceName: ${name}
///       vswitchId: ${defaultSwitch.id}
///       resourceGroupId: ${defaultGetResourceGroups.ids[0]}
///       zoneId: ${default.zones[0].id}
///       instanceClass: redis.master.large.default
///       instanceType: Redis
///       engineVersion: '5.0'
///       securityIps:
///         - 10.23.12.24
///       config:
///         appendonly: yes
///         lazyfree-lazy-eviction: yes
///       tags:
///         Created: TF
///         For: example
///   example:
///     type: alicloud:kvstore:AuditLogConfig
///     properties:
///       instanceId: ${defaultInstance.id}
///       dbAudit: true
///       retention: 1
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:kvstore:getZones
///       arguments: {}
///   defaultGetResourceGroups:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Tair (Redis OSS-Compatible) And Memcache (KVStore) Audit Log Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:kvstore/auditLogConfig:AuditLogConfig example <instance_id>
/// ```
class AuditLogConfig extends pulumi.CustomResource {
  /// Instance Creation Time.
  late final pulumi.Output<String> createTime;
  /// Indicates Whether to Enable the Audit Log.  Valid value:
  /// * true: Default Value, Open.
  /// * false: Closed.
  ///
  /// Note: When the Instance for the Cluster Architecture Or Read/Write Split Architecture, at the Same Time to Open Or Close the Data Node and the Proxy Node of the Audit Log Doesn't Support Separate Open.
  late final pulumi.Output<bool?> dbAudit;
  /// Instance ID, Call the Describeinstances Get.
  late final pulumi.Output<String> instanceId;
  /// Audit Log Retention Period Value: 1~365.
  ///
  /// > **NOTE:** When the Instance dbaudit Value Is Set to True, This Parameter Entry into Force. The Parameter Setting of the Current Region of All a Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance for a Data Entry into Force.
  late final pulumi.Output<int?> retention;
  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// Creates a new [AuditLogConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuditLogConfig]. {@macro pulumi_kvstore_audit_log_config_audit_log_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuditLogConfig(
    String name, {
    AuditLogConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:kvstore/auditLogConfig:AuditLogConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dbAudit = registerOutput<bool?>('dbAudit');
    this.instanceId = registerOutput<String>('instanceId');
    this.retention = registerOutput<int?>('retention');
    this.status = registerOutput<String>('status');
  }
}
