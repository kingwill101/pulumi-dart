import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_args.dart';

/// Provides a Tair (Redis OSS-Compatible) And Memcache (KVStore) Backup resource.
///
/// Instance level or database level backup objects.
///
/// For information about Tair (Redis OSS-Compatible) And Memcache (KVStore) Backup and how to use it, see [What is Backup](https://www.alibabacloud.com/help/en/redis/developer-reference/api-r-kvstore-2015-01-01-modifybackuppolicy-redis).
///
/// > **NOTE:** Available since v1.15.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const zoneId = config.get("zoneId") || "cn-hangzhou-h";
/// const _default = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = _default.then(_default => alicloud.vpc.getSwitches({
///     zoneId: zoneId,
///     vpcId: _default.ids?.[0],
/// }));
/// const vswitch: alicloud.vpc.Switch[] = [];
/// defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids).length.apply(length => {
///     for (const range = {value: 0}; range.value < (length > 0 ? 0 : 1); range.value++) {
///         vswitch.push(new alicloud.vpc.Switch(`vswitch-${range.value}`, {
///             vpcId: _default.then(_default => _default.ids?.[0]),
///             cidrBlock: _default.then(_default => std.cidrsubnet({
///                 input: _default.vpcs?.[0]?.cidrBlock,
///                 newbits: 8,
///                 netnum: 8,
///             })).then(invoke => invoke.result),
///             zoneId: zoneId,
///             vswitchName: name,
///         }));
///     }
/// });
/// const vswitchId = pulumi.all([defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids).length, defaultGetSwitches, std.concat({
///     input: [
///         vswitch.map(__item => __item.id),
///         [""],
///     ],
/// })]).apply(([length, defaultGetSwitches, invoke]) => length > 0 ? defaultGetSwitches.ids?.[0] : invoke.result?.[0]);
/// const defaultInstance = new alicloud.kvstore.Instance("default", {
///     port: 6379,
///     paymentType: "PrePaid",
///     instanceType: "Redis",
///     password: "123456_tf",
///     engineVersion: "5.0",
///     zoneId: zoneId,
///     vswitchId: vswitchId,
///     period: "1",
///     instanceClass: "redis.shard.small.2.ce",
/// });
/// const defaultBackup = new alicloud.redis.Backup("default", {
///     instanceId: defaultInstance.id,
///     backupRetentionPeriod: 7,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// zone_id = config.get("zoneId")
/// if zone_id is None:
///     zone_id = "cn-hangzhou-h"
/// default = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(zone_id=zone_id,
///     vpc_id=default.ids[0])
/// vswitch = []
/// def create_vswitch(range_body):
///     for range in [{"value": i} for i in range(0, range_body)]:
///         vswitch.append(alicloud.vpc.Switch(f"vswitch-{range['value']}",
///             vpc_id=default.ids[0],
///             cidr_block=std.cidrsubnet(input=default.vpcs[0].cidr_block,
///                 newbits=8,
///                 netnum=8).result,
///             zone_id=zone_id,
///             vswitch_name=name))
///
/// len(default_get_switches.ids).apply(lambda resolved_outputs: create_vswitch(0 if resolved_outputs['length'] > 0 else 1))
/// vswitch_id = len(default_get_switches.ids).apply(lambda length: default_get_switches.ids[0] if length > 0 else std.concat(input=[
///     [__item.id for __item in vswitch],
///     [""],
/// ]).result[0])
/// default_instance = alicloud.kvstore.Instance("default",
///     port=6379,
///     payment_type="PrePaid",
///     instance_type="Redis",
///     password="123456_tf",
///     engine_version="5.0",
///     zone_id=zone_id,
///     vswitch_id=vswitch_id,
///     period="1",
///     instance_class="redis.shard.small.2.ce")
/// default_backup = alicloud.redis.Backup("default",
///     instance_id=default_instance.id,
///     backup_retention_period=7)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var zoneId = config.Get("zoneId") ?? "cn-hangzhou-h";
///     var @default = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         ZoneId = zoneId,
///         VpcId = @default.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///     });
///
///     var vswitch = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids).Length.Apply(length => length > 0 ? 0 : 1); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         vswitch.Add(new AliCloud.Vpc.Switch($"vswitch-{range.Value}", new()
///         {
///             VpcId = @default.Apply(@default => @default.Apply(getNetworksResult => getNetworksResult.Ids[0])),
///             CidrBlock = @default.Apply(@default => Std.Cidrsubnet.Invoke(new()
///             {
///                 Input = @default.Apply(getNetworksResult => getNetworksResult.Vpcs[0]?.CidrBlock),
///                 Newbits = 8,
///                 Netnum = 8,
///             })).Apply(invoke => invoke.Result),
///             ZoneId = zoneId,
///             VswitchName = name,
///         }));
///     }
///     var vswitchId = Output.Tuple(defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids).Length, defaultGetSwitches, Std.Concat.Invoke(new()
///     {
///         Input = new[]
///         {
///             vswitch.Select(__item => __item.Id).ToList(),
///             new[]
///             {
///                 "",
///             },
///         },
///     })).Apply(values =>
///     {
///         var length = values.Item1;
///         var defaultGetSwitches = values.Item2;
///         var invoke = values.Item3;
///         return length > 0 ? defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]) : invoke.Result[0];
///     });
///
///     var defaultInstance = new AliCloud.KVStore.Instance("default", new()
///     {
///         Port = 6379,
///         PaymentType = "PrePaid",
///         InstanceType = "Redis",
///         Password = "123456_tf",
///         EngineVersion = "5.0",
///         ZoneId = zoneId,
///         VswitchId = vswitchId,
///         Period = "1",
///         InstanceClass = "redis.shard.small.2.ce",
///     });
///
///     var defaultBackup = new AliCloud.Redis.Backup("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         BackupRetentionPeriod = 7,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kvstore"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/redis"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// zoneId := "cn-hangzhou-h";
/// if param := cfg.Get("zoneId"); param != ""{
/// zoneId = param
/// }
/// _default, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// ZoneId: pulumi.StringRef(zoneId),
/// VpcId: pulumi.StringRef(_default.Ids[0]),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// Input: _default.Vpcs[0].CidrBlock,
/// Newbits: 8,
/// Netnum: 8,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// var tmp0 float64
/// if length > 0 {
/// tmp0 = 0
/// } else {
/// tmp0 = 1
/// }
/// var vswitch []*vpc.Switch
/// for index := 0; index < float64(len(defaultGetSwitches.Ids).ApplyT(func(length int) (float64, error) {
/// return tmp0, nil
/// }).(pulumi.Float64Output)); index++ {
///     key0 := index
///     _ := index
/// __res, err := vpc.NewSwitch(ctx, fmt.Sprintf("vswitch-%v", key0), &vpc.SwitchArgs{
/// VpcId: pulumi.String(_default.Ids[0]),
/// CidrBlock: pulumi.String(invokeCidrsubnet.Result),
/// ZoneId: pulumi.String(zoneId),
/// VswitchName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// vswitch = append(vswitch, __res)
/// }
/// var tmp1 *interface{}
/// if length > 0 {
/// tmp1 = defaultGetSwitches.Ids[0]
/// } else {
/// tmp1 = std.Concat(ctx, &std.ConcatArgs{
/// Input: pulumi.StringArrayArray{
/// %!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:32,12-25),
/// []string{
/// "",
/// },
/// },
/// }, nil).Result[0]
/// }
/// vswitchId := len(defaultGetSwitches.Ids).ApplyT(func(length int) (*interface{}, error) {
/// return &tmp1, nil
/// }).(pulumi.Interface{}PtrOutput)
/// defaultInstance, err := kvstore.NewInstance(ctx, "default", &kvstore.InstanceArgs{
/// Port: pulumi.Int(6379),
/// PaymentType: pulumi.String("PrePaid"),
/// InstanceType: pulumi.String("Redis"),
/// Password: pulumi.String("123456_tf"),
/// EngineVersion: pulumi.String("5.0"),
/// ZoneId: pulumi.String(zoneId),
/// VswitchId: pulumi.Any(vswitchId),
/// Period: pulumi.String("1"),
/// InstanceClass: pulumi.String("redis.shard.small.2.ce"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = redis.NewBackup(ctx, "default", &redis.BackupArgs{
/// InstanceId: defaultInstance.ID(),
/// BackupRetentionPeriod: pulumi.Int(7),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.std.inputs.ConcatArgs;
/// import com.pulumi.alicloud.kvstore.Instance;
/// import com.pulumi.alicloud.kvstore.InstanceArgs;
/// import com.pulumi.alicloud.redis.Backup;
/// import com.pulumi.alicloud.redis.BackupArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var zoneId = config.get("zoneId").orElse("cn-hangzhou-h");
///         final var default = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .zoneId(zoneId)
///             .vpcId(default_.ids()[0])
///             .build());
///
///         for (var i = 0; i < defaultGetSwitches.ids().length().applyValue(_length -> _length > 0 ? 0 : 1); i++) {
///             new Switch("vswitch-" + i, SwitchArgs.builder()
///                 .vpcId(default_.ids()[0])
///                 .cidrBlock(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                     .input(default_.vpcs()[0].cidrBlock())
///                     .newbits(8)
///                     .netnum(8)
///                     .build()).result())
///                 .zoneId(zoneId)
///                 .vswitchName(name)
///                 .build());
///
///
/// }
///         final var vswitchId = defaultGetSwitches.ids().length().applyValue(_length -> _length > 0 ? defaultGetSwitches.ids()[0] : StdFunctions.concat(ConcatArgs.builder()
///             .input(
///                 vswitch.stream().map(element -> element.id()).collect(toList()),
///                 "")
///             .build()).result()[0]);
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .port(6379)
///             .paymentType("PrePaid")
///             .instanceType("Redis")
///             .password("123456_tf")
///             .engineVersion("5.0")
///             .zoneId(zoneId)
///             .vswitchId(vswitchId)
///             .period("1")
///             .instanceClass("redis.shard.small.2.ce")
///             .build());
///
///         var defaultBackup = new Backup("defaultBackup", BackupArgs.builder()
///             .instanceId(defaultInstance.id())
///             .backupRetentionPeriod(7)
///             .build());
///
///     }
/// }
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Tair (Redis OSS-Compatible) And Memcache (KVStore) Backup can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:redis/backup:Backup example <instance_id>:<backup_id>
/// ```
class Backup extends pulumi.CustomResource {
  /// Backup ID.
  late final pulumi.Output<int> backupId;
  /// The expiration period for this manual backup ranges from 7 to 730 days. When you pass in -1, it indicates that this manual backup will not expire (during the instance's lifecycle). If you do not pass any value (default case), it means the expiration policy will be consistent with the current automatic backup strategy.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<int?> backupRetentionPeriod;
  /// InstanceId
  late final pulumi.Output<String> instanceId;
  /// Backup status.
  late final pulumi.Output<String> status;

  /// Creates a new [Backup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Backup]. {@macro pulumi_redis_backup_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Backup(
    String name, {
    BackupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:redis/backup:Backup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupId = registerOutput<int>('backupId');
    this.backupRetentionPeriod = registerOutput<int?>('backupRetentionPeriod');
    this.instanceId = registerOutput<String>('instanceId');
    this.status = registerOutput<String>('status');
  }
}
