import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_args.dart';
import 'backup_policy_state.dart';

/// Provides a Backup Policy for Tair (Redis OSS-Compatible) And Memcache (KVStore) resource.
///
/// For information about Backup Policy for Tair (Redis OSS-Compatible) And Memcache (KVStore) and how to use it, see [What is Backup Policy](https://www.alibabacloud.com/help/en/redis/developer-reference/api-r-kvstore-2015-01-01-modifybackuppolicy-redis).
///
/// > **NOTE:** Available since v1.15.0.
///
/// > **DEPRECATED:**  This resource  has been deprecated from version `1.104.0`. Please use resource alicloud_kvstore_instance.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.kvstore.getZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultInstance = new alicloud.kvstore.Instance("default", {
///     dbInstanceName: name,
///     vswitchId: defaultSwitch.id,
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
/// const defaultBackupPolicy = new alicloud.kvstore.BackupPolicy("default", {
///     instanceId: defaultInstance.id,
///     backupPeriods: [
///         "Tuesday",
///         "Wednesday",
///     ],
///     backupTime: "10:00Z-11:00Z",
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
/// default = alicloud.kvstore.get_zones()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_instance = alicloud.kvstore.Instance("default",
///     db_instance_name=name,
///     vswitch_id=default_switch.id,
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
/// default_backup_policy = alicloud.kvstore.BackupPolicy("default",
///     instance_id=default_instance.id,
///     backup_periods=[
///         "Tuesday",
///         "Wednesday",
///     ],
///     backup_time="10:00Z-11:00Z")
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
///     var @default = AliCloud.KVStore.GetZones.Invoke();
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
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultInstance = new AliCloud.KVStore.Instance("default", new()
///     {
///         DbInstanceName = name,
///         VswitchId = defaultSwitch.Id,
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
///     var defaultBackupPolicy = new AliCloud.KVStore.BackupPolicy("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         BackupPeriods = new[]
///         {
///             "Tuesday",
///             "Wednesday",
///         },
///         BackupTime = "10:00Z-11:00Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kvstore"
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
/// 		_default, err := kvstore.GetZones(ctx, &kvstore.GetZonesArgs{}, nil)
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
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := kvstore.NewInstance(ctx, "default", &kvstore.InstanceArgs{
/// 			DbInstanceName: pulumi.String(name),
/// 			VswitchId:      defaultSwitch.ID(),
/// 			ZoneId:         pulumi.String(_default.Zones[0].Id),
/// 			InstanceClass:  pulumi.String("redis.master.large.default"),
/// 			InstanceType:   pulumi.String("Redis"),
/// 			EngineVersion:  pulumi.String("5.0"),
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
/// 		_, err = kvstore.NewBackupPolicy(ctx, "default", &kvstore.BackupPolicyArgs{
/// 			InstanceId: defaultInstance.ID(),
/// 			BackupPeriods: pulumi.StringArray{
/// 				pulumi.String("Tuesday"),
/// 				pulumi.String("Wednesday"),
/// 			},
/// 			BackupTime: pulumi.String("10:00Z-11:00Z"),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.kvstore.Instance;
/// import com.pulumi.alicloud.kvstore.InstanceArgs;
/// import com.pulumi.alicloud.kvstore.BackupPolicy;
/// import com.pulumi.alicloud.kvstore.BackupPolicyArgs;
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
///         final var default = KvstoreFunctions.getZones(GetZonesArgs.builder()
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
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .dbInstanceName(name)
///             .vswitchId(defaultSwitch.id())
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
///         var defaultBackupPolicy = new BackupPolicy("defaultBackupPolicy", BackupPolicyArgs.builder()
///             .instanceId(defaultInstance.id())
///             .backupPeriods(
///                 "Tuesday",
///                 "Wednesday")
///             .backupTime("10:00Z-11:00Z")
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
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultInstance:
///     type: alicloud:kvstore:Instance
///     name: default
///     properties:
///       dbInstanceName: ${name}
///       vswitchId: ${defaultSwitch.id}
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
///   defaultBackupPolicy:
///     type: alicloud:kvstore:BackupPolicy
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       backupPeriods:
///         - Tuesday
///         - Wednesday
///       backupTime: 10:00Z-11:00Z
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:kvstore:getZones
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Tair (Redis OSS-Compatible) And Memcache (KVStore) Backup Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:kvstore/backupPolicy:BackupPolicy example <id>
/// ```
class BackupPolicy extends pulumi.CustomResource {
  /// Backup Cycle. Allowed values: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.
  late final pulumi.Output<List<String>> backupPeriods;
  /// Backup time, in the format of HH:mmZ- HH:mm Z.
  late final pulumi.Output<String?> backupTime;
  /// The id of Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance.
  late final pulumi.Output<String> instanceId;

  /// Creates a new [BackupPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicy]. {@macro pulumi_kvstore_backup_policy_backup_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicy(
    String name, {
    BackupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:kvstore/backupPolicy:BackupPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupPeriods = registerOutput<List<String>>('backupPeriods');
    this.backupTime = registerOutput<String?>('backupTime');
    this.instanceId = registerOutput<String>('instanceId');
  }

  /// Gets an existing [BackupPolicy] resource's state with the given [name] and [id].
  static BackupPolicy get(
    String name,
    pulumi.Input<String> id, {
    BackupPolicyState? state,
  }) {
    return BackupPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:kvstore/backupPolicy:BackupPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupPeriods = registerOutput<List<String>>('backupPeriods');
    this.backupTime = registerOutput<String?>('backupTime');
    this.instanceId = registerOutput<String>('instanceId');
  }
}
