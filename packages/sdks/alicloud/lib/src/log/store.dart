import 'package:pulumi/pulumi.dart' as pulumi;
import 'store_args.dart';
import 'store_encrypt_conf.dart';
import 'store_shard.dart';
import 'store_state.dart';

/// Provides a SLS Log Store resource.
///
///
///
/// For information about SLS Log Store and how to use it, see [What is Log Store](https://www.alibabacloud.com/help/doc-detail/48874.htm).
///
/// > **NOTE:** Available since v1.0.0.
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
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const example = new alicloud.log.Project("example", {
///     name: `terraform-example-${_default.result}`,
///     description: "terraform-example",
/// });
/// const exampleStore = new alicloud.log.Store("example", {
///     project: example.name,
///     name: "example-store",
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// example = alicloud.log.Project("example",
///     name=f"terraform-example-{default['result']}",
///     description="terraform-example")
/// example_store = alicloud.log.Store("example",
///     project=example.name,
///     name="example-store",
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var example = new AliCloud.Log.Project("example", new()
///     {
///         Name = $"terraform-example-{@default.Result}",
///         Description = "terraform-example",
///     });
///
///     var exampleStore = new AliCloud.Log.Store("example", new()
///     {
///         Project = example.Name,
///         Name = "example-store",
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := log.NewProject(ctx, "example", &log.ProjectArgs{
/// 			Name:        pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			Description: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewStore(ctx, "example", &log.StoreArgs{
/// 			Project:            example.Name,
/// 			Name:               pulumi.String("example-store"),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
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
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var example = new Project("example", ProjectArgs.builder()
///             .name(String.format("terraform-example-%s", default_.result()))
///             .description("terraform-example")
///             .build());
///
///         var exampleStore = new Store("exampleStore", StoreArgs.builder()
///             .project(example.name())
///             .name("example-store")
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   example:
///     type: alicloud:log:Project
///     properties:
///       name: terraform-example-${default.result}
///       description: terraform-example
///   exampleStore:
///     type: alicloud:log:Store
///     name: example
///     properties:
///       project: ${example.name}
///       name: example-store
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
/// ```
///
///
/// Encrypt Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// // The region of kms key.
/// const region = config.get("region") || "cn-hangzhou";
/// const example = alicloud.getAccount({});
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const _default = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = _default.then(_default => alicloud.vpc.getSwitches({
///     vpcId: _default.ids?.[0],
/// }));
/// const defaultInstance = new alicloud.kms.Instance("default", {
///     productVersion: "3",
///     vpcId: _default.then(_default => _default.ids?.[0]),
///     zoneIds: [
///         defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.vswitches?.[0]?.zoneId),
///         defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.vswitches?.[1]?.zoneId),
///     ],
///     vswitchIds: [defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0])],
///     vpcNum: 1,
///     keyNum: 1000,
///     secretNum: 0,
///     spec: 1000,
///     forceDeleteWithoutBackup: "true",
///     paymentType: "PayAsYouGo",
/// });
/// const exampleKey = new alicloud.kms.Key("example", {
///     description: "terraform-example",
///     pendingWindowInDays: 7,
///     status: "Enabled",
///     dkmsInstanceId: defaultInstance.id,
/// });
/// const exampleProject = new alicloud.log.Project("example", {
///     projectName: `terraform-example-${defaultInteger.result}`,
///     description: "terraform-example",
/// });
/// const exampleStore = new alicloud.log.Store("example", {
///     projectName: exampleProject.projectName,
///     logstoreName: "example-store",
///     shardCount: 1,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     encryptConf: {
///         enable: true,
///         encryptType: "default",
///         userCmkInfo: {
///             cmkKeyId: exampleKey.id,
///             arn: example.then(example => `acs:ram::${example.id}:role/aliyunlogdefaultrole`),
///             regionId: region,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// # The region of kms key.
/// region = config.get("region")
/// if region is None:
///     region = "cn-hangzhou"
/// example = alicloud.get_account()
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default.ids[0])
/// default_instance = alicloud.kms.Instance("default",
///     product_version="3",
///     vpc_id=default.ids[0],
///     zone_ids=[
///         default_get_switches.vswitches[0].zone_id,
///         default_get_switches.vswitches[1].zone_id,
///     ],
///     vswitch_ids=[default_get_switches.ids[0]],
///     vpc_num=1,
///     key_num=1000,
///     secret_num=0,
///     spec=1000,
///     force_delete_without_backup="true",
///     payment_type="PayAsYouGo")
/// example_key = alicloud.kms.Key("example",
///     description="terraform-example",
///     pending_window_in_days=7,
///     status="Enabled",
///     dkms_instance_id=default_instance.id)
/// example_project = alicloud.log.Project("example",
///     project_name=f"terraform-example-{default_integer['result']}",
///     description="terraform-example")
/// example_store = alicloud.log.Store("example",
///     project_name=example_project.project_name,
///     logstore_name="example-store",
///     shard_count=1,
///     auto_split=True,
///     max_split_shard_count=60,
///     encrypt_conf={
///         "enable": True,
///         "encrypt_type": "default",
///         "user_cmk_info": {
///             "cmk_key_id": example_key.id,
///             "arn": f"acs:ram::{example.id}:role/aliyunlogdefaultrole",
///             "region_id": region,
///         },
///     })
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
///     // The region of kms key.
///     var region = config.Get("region") ?? "cn-hangzhou";
///     var example = AliCloud.GetAccount.Invoke();
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var @default = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = @default.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///     });
///
///     var defaultInstance = new AliCloud.Kms.Instance("default", new()
///     {
///         ProductVersion = "3",
///         VpcId = @default.Apply(@default => @default.Apply(getNetworksResult => getNetworksResult.Ids[0])),
///         ZoneIds = new[]
///         {
///             defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Vswitches[0]?.ZoneId),
///             defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Vswitches[1]?.ZoneId),
///         },
///         VswitchIds = new[]
///         {
///             defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         },
///         VpcNum = 1,
///         KeyNum = 1000,
///         SecretNum = 0,
///         Spec = 1000,
///         ForceDeleteWithoutBackup = "true",
///         PaymentType = "PayAsYouGo",
///     });
///
///     var exampleKey = new AliCloud.Kms.Key("example", new()
///     {
///         Description = "terraform-example",
///         PendingWindowInDays = 7,
///         Status = "Enabled",
///         DkmsInstanceId = defaultInstance.Id,
///     });
///
///     var exampleProject = new AliCloud.Log.Project("example", new()
///     {
///         ProjectName = $"terraform-example-{defaultInteger.Result}",
///         Description = "terraform-example",
///     });
///
///     var exampleStore = new AliCloud.Log.Store("example", new()
///     {
///         ProjectName = exampleProject.ProjectName,
///         LogstoreName = "example-store",
///         ShardCount = 1,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         EncryptConf = new AliCloud.Log.Inputs.StoreEncryptConfArgs
///         {
///             Enable = true,
///             EncryptType = "default",
///             UserCmkInfo = new AliCloud.Log.Inputs.StoreEncryptConfUserCmkInfoArgs
///             {
///                 CmkKeyId = exampleKey.Id,
///                 Arn = $"acs:ram::{example.Apply(getAccountResult => getAccountResult.Id)}:role/aliyunlogdefaultrole",
///                 RegionId = region,
///             },
///         },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		// The region of kms key.
/// 		region := "cn-hangzhou"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
/// 		example, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId: pulumi.StringRef(_default.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := kms.NewInstance(ctx, "default", &kms.InstanceArgs{
/// 			ProductVersion: pulumi.String("3"),
/// 			VpcId:          pulumi.String(_default.Ids[0]),
/// 			ZoneIds: pulumi.StringArray{
/// 				pulumi.String(defaultGetSwitches.Vswitches[0].ZoneId),
/// 				pulumi.String(defaultGetSwitches.Vswitches[1].ZoneId),
/// 			},
/// 			VswitchIds: pulumi.StringArray{
/// 				pulumi.String(defaultGetSwitches.Ids[0]),
/// 			},
/// 			VpcNum:                   pulumi.Int(1),
/// 			KeyNum:                   pulumi.Int(1000),
/// 			SecretNum:                pulumi.Int(0),
/// 			Spec:                     pulumi.Int(1000),
/// 			ForceDeleteWithoutBackup: pulumi.String("true"),
/// 			PaymentType:              pulumi.String("PayAsYouGo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:         pulumi.String("terraform-example"),
/// 			PendingWindowInDays: pulumi.Int(7),
/// 			Status:              pulumi.String("Enabled"),
/// 			DkmsInstanceId:      defaultInstance.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleProject, err := log.NewProject(ctx, "example", &log.ProjectArgs{
/// 			ProjectName: pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 			Description: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewStore(ctx, "example", &log.StoreArgs{
/// 			ProjectName:        exampleProject.ProjectName,
/// 			LogstoreName:       pulumi.String("example-store"),
/// 			ShardCount:         pulumi.Int(1),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			EncryptConf: &log.StoreEncryptConfArgs{
/// 				Enable:      pulumi.Bool(true),
/// 				EncryptType: pulumi.String("default"),
/// 				UserCmkInfo: &log.StoreEncryptConfUserCmkInfoArgs{
/// 					CmkKeyId: exampleKey.ID(),
/// 					Arn:      pulumi.Sprintf("acs:ram::%v:role/aliyunlogdefaultrole", example.Id),
/// 					RegionId: pulumi.String(region),
/// 				},
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.kms.Instance;
/// import com.pulumi.alicloud.kms.InstanceArgs;
/// import com.pulumi.alicloud.kms.Key;
/// import com.pulumi.alicloud.kms.KeyArgs;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.log.inputs.StoreEncryptConfArgs;
/// import com.pulumi.alicloud.log.inputs.StoreEncryptConfUserCmkInfoArgs;
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
///         final var region = config.get("region").orElse("cn-hangzhou");
///         final var example = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         final var default = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(default_.ids()[0])
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .productVersion("3")
///             .vpcId(default_.ids()[0])
///             .zoneIds(
///                 defaultGetSwitches.vswitches()[0].zoneId(),
///                 defaultGetSwitches.vswitches()[1].zoneId())
///             .vswitchIds(defaultGetSwitches.ids()[0])
///             .vpcNum(1)
///             .keyNum(1000)
///             .secretNum(0)
///             .spec(1000)
///             .forceDeleteWithoutBackup("true")
///             .paymentType("PayAsYouGo")
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .description("terraform-example")
///             .pendingWindowInDays(7)
///             .status("Enabled")
///             .dkmsInstanceId(defaultInstance.id())
///             .build());
///
///         var exampleProject = new Project("exampleProject", ProjectArgs.builder()
///             .projectName(String.format("terraform-example-%s", defaultInteger.result()))
///             .description("terraform-example")
///             .build());
///
///         var exampleStore = new Store("exampleStore", StoreArgs.builder()
///             .projectName(exampleProject.projectName())
///             .logstoreName("example-store")
///             .shardCount(1)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .encryptConf(StoreEncryptConfArgs.builder()
///                 .enable(true)
///                 .encryptType("default")
///                 .userCmkInfo(StoreEncryptConfUserCmkInfoArgs.builder()
///                     .cmkKeyId(exampleKey.id())
///                     .arn(String.format("acs:ram::%s:role/aliyunlogdefaultrole", example.id()))
///                     .regionId(region)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   region:
///     type: string
///     default: cn-hangzhou
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 99999
///       min: 10000
///   defaultInstance:
///     type: alicloud:kms:Instance
///     name: default
///     properties:
///       productVersion: '3'
///       vpcId: ${default.ids[0]}
///       zoneIds:
///         - ${defaultGetSwitches.vswitches[0].zoneId}
///         - ${defaultGetSwitches.vswitches[1].zoneId}
///       vswitchIds:
///         - ${defaultGetSwitches.ids[0]}
///       vpcNum: '1'
///       keyNum: '1000'
///       secretNum: '0'
///       spec: '1000'
///       forceDeleteWithoutBackup: true
///       paymentType: PayAsYouGo
///   exampleKey:
///     type: alicloud:kms:Key
///     name: example
///     properties:
///       description: terraform-example
///       pendingWindowInDays: '7'
///       status: Enabled
///       dkmsInstanceId: ${defaultInstance.id}
///   exampleProject:
///     type: alicloud:log:Project
///     name: example
///     properties:
///       projectName: terraform-example-${defaultInteger.result}
///       description: terraform-example
///   exampleStore:
///     type: alicloud:log:Store
///     name: example
///     properties:
///       projectName: ${exampleProject.projectName}
///       logstoreName: example-store
///       shardCount: 1
///       autoSplit: true
///       maxSplitShardCount: 60
///       encryptConf:
///         enable: true
///         encryptType: default
///         userCmkInfo:
///           cmkKeyId: ${exampleKey.id}
///           arn: acs:ram::${example.id}:role/aliyunlogdefaultrole
///           regionId: ${region}
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   default:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${default.ids[0]}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Module Support
///
/// You can use the existing sls module
/// to create SLS project, store and store index one-click, like ECS instances.
///
/// ## Import
///
/// SLS Log Store can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:log/store:Store example <project_name>:<logstore_name>
/// ```
class Store extends pulumi.CustomResource {
  /// Determines whether to append log meta automatically. The meta includes log receive time and client IP address. Default to `true`.
  late final pulumi.Output<bool?> appendMeta;
  /// Determines whether to automatically split a shard. Default to `false`.
  late final pulumi.Output<bool?> autoSplit;
  /// Log library creation time. Unix timestamp format that represents the number of seconds from 1970-1-1 00:00:00 UTC calculation.
  late final pulumi.Output<int> createTime;
  /// Whether open webtracking. webtracking network tracing, support the collection of HTML log, H5, Ios and android platforms.
  late final pulumi.Output<bool?> enableWebTracking;
  /// Encrypted storage of data, providing data static protection capability, encrypt_conf can be updated since 1.188.0 (only enable change is supported when updating logstore). See `encrypt_conf` below.
  late final pulumi.Output<StoreEncryptConf> encryptConf;
  /// The ttl of hot storage. Default to 30, at least 30, hot storage ttl must be less than ttl.
  late final pulumi.Output<int?> hotTtl;
  /// Low frequency storage time
  late final pulumi.Output<int?> infrequentAccessTtl;
  /// The log store, which is unique in the same project. You need to specify one of the attributes: `logstore_name`, `name`.
  late final pulumi.Output<String> logstoreName;
  /// The maximum number of shards for automatic split, which is in the range of 1 to 256. You must specify this parameter when autoSplit is true.
  late final pulumi.Output<int?> maxSplitShardCount;
  /// Metering mode. The default metering mode of ChargeByFunction, ChargeByDataIngest traffic mode.
  late final pulumi.Output<String> meteringMode;
  /// The mode of storage. Default to `standard`, must be `standard` or `query`, `lite`.
  late final pulumi.Output<String> mode;
  /// . Field 'name' has been deprecated from provider version 1.215.0. New field 'logstore_name' instead.
  late final pulumi.Output<String> name;
  /// . Field 'project' has been deprecated from provider version 1.215.0. New field 'project_name' instead.
  late final pulumi.Output<String> project;
  /// The project name to the log store belongs. You need to specify one of the attributes: `project_name`, `project`.
  late final pulumi.Output<String> projectName;
  /// The data retention time (in days). Valid values: [1-3650]. Default to 30. Log store data will be stored permanently when the value is 3650.
  late final pulumi.Output<int?> retentionPeriod;
  /// The number of shards in this log store. Default to 2. You can modify it by "Split" or "Merge" operations. [Refer to details](https://www.alibabacloud.com/help/zh/sls/product-overview/shard).
  late final pulumi.Output<int?> shardCount;
  /// The shard attribute.
  late final pulumi.Output<List<StoreShard>> shards;
  /// Determines whether store type is metric. `Metrics` means metric store, empty means log store.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String?> telemetryType;

  /// Creates a new [Store].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Store]. {@macro pulumi_log_store_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Store(
    String name, {
    StoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/store:Store',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appendMeta = registerOutput<bool?>('appendMeta');
    this.autoSplit = registerOutput<bool?>('autoSplit');
    this.createTime = registerOutput<int>('createTime');
    this.enableWebTracking = registerOutput<bool?>('enableWebTracking');
    this.encryptConf = registerOutput<StoreEncryptConf>('encryptConf');
    this.hotTtl = registerOutput<int?>('hotTtl');
    this.infrequentAccessTtl = registerOutput<int?>('infrequentAccessTtl');
    this.logstoreName = registerOutput<String>('logstoreName');
    this.maxSplitShardCount = registerOutput<int?>('maxSplitShardCount');
    this.meteringMode = registerOutput<String>('meteringMode');
    this.mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.projectName = registerOutput<String>('projectName');
    this.retentionPeriod = registerOutput<int?>('retentionPeriod');
    this.shardCount = registerOutput<int?>('shardCount');
    this.shards = registerOutput<List<StoreShard>>('shards');
    this.telemetryType = registerOutput<String?>('telemetryType');
  }

  /// Gets an existing [Store] resource's state with the given [name] and [id].
  static Store get(
    String name,
    pulumi.Input<String> id, {
    StoreState? state,
  }) {
    return Store._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Store._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/store:Store',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appendMeta = registerOutput<bool?>('appendMeta');
    this.autoSplit = registerOutput<bool?>('autoSplit');
    this.createTime = registerOutput<int>('createTime');
    this.enableWebTracking = registerOutput<bool?>('enableWebTracking');
    this.encryptConf = registerOutput<StoreEncryptConf>('encryptConf');
    this.hotTtl = registerOutput<int?>('hotTtl');
    this.infrequentAccessTtl = registerOutput<int?>('infrequentAccessTtl');
    this.logstoreName = registerOutput<String>('logstoreName');
    this.maxSplitShardCount = registerOutput<int?>('maxSplitShardCount');
    this.meteringMode = registerOutput<String>('meteringMode');
    this.mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.projectName = registerOutput<String>('projectName');
    this.retentionPeriod = registerOutput<int?>('retentionPeriod');
    this.shardCount = registerOutput<int?>('shardCount');
    this.shards = registerOutput<List<StoreShard>>('shards');
    this.telemetryType = registerOutput<String?>('telemetryType');
  }
}
