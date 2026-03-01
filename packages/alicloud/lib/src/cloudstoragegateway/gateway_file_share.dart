import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_file_share_args.dart';

/// Provides a Cloud Storage Gateway Gateway File Share resource.
///
/// For information about Cloud Storage Gateway Gateway File Share and how to use it, see [What is Gateway File Share](https://www.alibabacloud.com/help/en/cloud-storage-gateway/latest/creategatewayfileshare).
///
/// > **NOTE:** Available since v1.144.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const defaultUuid = new random.index.Uuid("default", {});
/// const defaultStorageBundle = new alicloud.cloudstoragegateway.StorageBundle("default", {storageBundleName: std.replace({
///     text: defaultUuid.result,
///     search: "-",
///     replace: "",
/// }).then(invoke => std.substr({
///     input: `tf-example-${invoke.result}`,
///     offset: 0,
///     length: 16,
/// })).then(invoke => invoke.result)});
/// const defaultBucket = new alicloud.oss.Bucket("default", {bucket: std.replace({
///     text: defaultUuid.result,
///     search: "-",
///     replace: "",
/// }).then(invoke => std.substr({
///     input: `tf-example-${invoke.result}`,
///     offset: 0,
///     length: 16,
/// })).then(invoke => invoke.result)});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const _default = alicloud.cloudstoragegateway.getStocks({
///     gatewayClass: "Standard",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: _default.then(_default => _default.stocks?.[0]?.zoneId),
///     vswitchName: name,
/// });
/// const defaultGateway = new alicloud.cloudstoragegateway.Gateway("default", {
///     gatewayName: name,
///     description: name,
///     gatewayClass: "Standard",
///     type: "File",
///     paymentType: "PayAsYouGo",
///     vswitchId: defaultSwitch.id,
///     releaseAfterExpiration: true,
///     publicNetworkBandwidth: 40,
///     storageBundleId: defaultStorageBundle.id,
///     location: "Cloud",
/// });
/// const defaultGatewayCacheDisk = new alicloud.cloudstoragegateway.GatewayCacheDisk("default", {
///     cacheDiskCategory: "cloud_efficiency",
///     gatewayId: defaultGateway.id,
///     cacheDiskSizeInGb: 50,
/// });
/// const defaultGatewayFileShare = new alicloud.cloudstoragegateway.GatewayFileShare("default", {
///     gatewayFileShareName: name,
///     gatewayId: defaultGateway.id,
///     localPath: defaultGatewayCacheDisk.localFilePath,
///     ossBucketName: defaultBucket.bucket,
///     ossEndpoint: defaultBucket.extranetEndpoint,
///     protocol: "NFS",
///     remoteSync: true,
///     pollingInterval: 4500,
///     feLimit: 0,
///     backendLimit: 0,
///     cacheMode: "Cache",
///     squash: "none",
///     lagPeriod: 5,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default_uuid = random.index.Uuid("default")
/// default_storage_bundle = alicloud.cloudstoragegateway.StorageBundle("default", storage_bundle_name=std.substr(input=f"tf-example-{std.replace(text=default_uuid['result'],
///         search='-',
///         replace='').result}",
///     offset=0,
///     length=16).result)
/// default_bucket = alicloud.oss.Bucket("default", bucket=std.substr(input=f"tf-example-{std.replace(text=default_uuid['result'],
///         search='-',
///         replace='').result}",
///     offset=0,
///     length=16).result)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/12")
/// default = alicloud.cloudstoragegateway.get_stocks(gateway_class="Standard")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=default.stocks[0].zone_id,
///     vswitch_name=name)
/// default_gateway = alicloud.cloudstoragegateway.Gateway("default",
///     gateway_name=name,
///     description=name,
///     gateway_class="Standard",
///     type="File",
///     payment_type="PayAsYouGo",
///     vswitch_id=default_switch.id,
///     release_after_expiration=True,
///     public_network_bandwidth=40,
///     storage_bundle_id=default_storage_bundle.id,
///     location="Cloud")
/// default_gateway_cache_disk = alicloud.cloudstoragegateway.GatewayCacheDisk("default",
///     cache_disk_category="cloud_efficiency",
///     gateway_id=default_gateway.id,
///     cache_disk_size_in_gb=50)
/// default_gateway_file_share = alicloud.cloudstoragegateway.GatewayFileShare("default",
///     gateway_file_share_name=name,
///     gateway_id=default_gateway.id,
///     local_path=default_gateway_cache_disk.local_file_path,
///     oss_bucket_name=default_bucket.bucket,
///     oss_endpoint=default_bucket.extranet_endpoint,
///     protocol="NFS",
///     remote_sync=True,
///     polling_interval=4500,
///     fe_limit=0,
///     backend_limit=0,
///     cache_mode="Cache",
///     squash="none",
///     lag_period=5)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var defaultUuid = new Random.Index.Uuid("default");
///
///     var defaultStorageBundle = new AliCloud.CloudStorageGateway.StorageBundle("default", new()
///     {
///         StorageBundleName = Std.Replace.Invoke(new()
///         {
///             Text = defaultUuid.Result,
///             Search = "-",
///             Replace = "",
///         }).Apply(invoke => Std.Substr.Invoke(new()
///         {
///             Input = $"tf-example-{invoke.Result}",
///             Offset = 0,
///             Length = 16,
///         })).Apply(invoke => invoke.Result),
///     });
///
///     var defaultBucket = new AliCloud.Oss.Bucket("default", new()
///     {
///         BucketName = Std.Replace.Invoke(new()
///         {
///             Text = defaultUuid.Result,
///             Search = "-",
///             Replace = "",
///         }).Apply(invoke => Std.Substr.Invoke(new()
///         {
///             Input = $"tf-example-{invoke.Result}",
///             Offset = 0,
///             Length = 16,
///         })).Apply(invoke => invoke.Result),
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var @default = AliCloud.CloudStorageGateway.GetStocks.Invoke(new()
///     {
///         GatewayClass = "Standard",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = @default.Apply(@default => @default.Apply(getStocksResult => getStocksResult.Stocks[0]?.ZoneId)),
///         VswitchName = name,
///     });
///
///     var defaultGateway = new AliCloud.CloudStorageGateway.Gateway("default", new()
///     {
///         GatewayName = name,
///         Description = name,
///         GatewayClass = "Standard",
///         Type = "File",
///         PaymentType = "PayAsYouGo",
///         VswitchId = defaultSwitch.Id,
///         ReleaseAfterExpiration = true,
///         PublicNetworkBandwidth = 40,
///         StorageBundleId = defaultStorageBundle.Id,
///         Location = "Cloud",
///     });
///
///     var defaultGatewayCacheDisk = new AliCloud.CloudStorageGateway.GatewayCacheDisk("default", new()
///     {
///         CacheDiskCategory = "cloud_efficiency",
///         GatewayId = defaultGateway.Id,
///         CacheDiskSizeInGb = 50,
///     });
///
///     var defaultGatewayFileShare = new AliCloud.CloudStorageGateway.GatewayFileShare("default", new()
///     {
///         GatewayFileShareName = name,
///         GatewayId = defaultGateway.Id,
///         LocalPath = defaultGatewayCacheDisk.LocalFilePath,
///         OssBucketName = defaultBucket.BucketName,
///         OssEndpoint = defaultBucket.ExtranetEndpoint,
///         Protocol = "NFS",
///         RemoteSync = true,
///         PollingInterval = 4500,
///         FeLimit = 0,
///         BackendLimit = 0,
///         CacheMode = "Cache",
///         Squash = "none",
///         LagPeriod = 5,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudstoragegateway"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		defaultUuid, err := random.NewUuid(ctx, "default", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeSubstr, err := std.Substr(ctx, &std.SubstrArgs{
/// 			Input: fmt.Sprintf("tf-example-%v", std.Replace(ctx, &std.ReplaceArgs{
/// 				Text:    defaultUuid.Result,
/// 				Search:  "-",
/// 				Replace: "",
/// 			}, nil).Result),
/// 			Offset: 0,
/// 			Length: 16,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStorageBundle, err := cloudstoragegateway.NewStorageBundle(ctx, "default", &cloudstoragegateway.StorageBundleArgs{
/// 			StorageBundleName: pulumi.String(invokeSubstr.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeSubstr1, err := std.Substr(ctx, &std.SubstrArgs{
/// 			Input: fmt.Sprintf("tf-example-%v", std.Replace(ctx, &std.ReplaceArgs{
/// 				Text:    defaultUuid.Result,
/// 				Search:  "-",
/// 				Replace: "",
/// 			}, nil).Result),
/// 			Offset: 0,
/// 			Length: 16,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucket, err := oss.NewBucket(ctx, "default", &oss.BucketArgs{
/// 			Bucket: pulumi.String(invokeSubstr1.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := cloudstoragegateway.GetStocks(ctx, &cloudstoragegateway.GetStocksArgs{
/// 			GatewayClass: pulumi.StringRef("Standard"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/21"),
/// 			ZoneId:      pulumi.String(_default.Stocks[0].ZoneId),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGateway, err := cloudstoragegateway.NewGateway(ctx, "default", &cloudstoragegateway.GatewayArgs{
/// 			GatewayName:            pulumi.String(name),
/// 			Description:            pulumi.String(name),
/// 			GatewayClass:           pulumi.String("Standard"),
/// 			Type:                   pulumi.String("File"),
/// 			PaymentType:            pulumi.String("PayAsYouGo"),
/// 			VswitchId:              defaultSwitch.ID(),
/// 			ReleaseAfterExpiration: pulumi.Bool(true),
/// 			PublicNetworkBandwidth: pulumi.Int(40),
/// 			StorageBundleId:        defaultStorageBundle.ID(),
/// 			Location:               pulumi.String("Cloud"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGatewayCacheDisk, err := cloudstoragegateway.NewGatewayCacheDisk(ctx, "default", &cloudstoragegateway.GatewayCacheDiskArgs{
/// 			CacheDiskCategory: pulumi.String("cloud_efficiency"),
/// 			GatewayId:         defaultGateway.ID(),
/// 			CacheDiskSizeInGb: pulumi.Int(50),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudstoragegateway.NewGatewayFileShare(ctx, "default", &cloudstoragegateway.GatewayFileShareArgs{
/// 			GatewayFileShareName: pulumi.String(name),
/// 			GatewayId:            defaultGateway.ID(),
/// 			LocalPath:            defaultGatewayCacheDisk.LocalFilePath,
/// 			OssBucketName:        defaultBucket.Bucket,
/// 			OssEndpoint:          defaultBucket.ExtranetEndpoint,
/// 			Protocol:             pulumi.String("NFS"),
/// 			RemoteSync:           pulumi.Bool(true),
/// 			PollingInterval:      pulumi.Int(4500),
/// 			FeLimit:              pulumi.Int(0),
/// 			BackendLimit:         pulumi.Int(0),
/// 			CacheMode:            pulumi.String("Cache"),
/// 			Squash:               pulumi.String("none"),
/// 			LagPeriod:            pulumi.Int(5),
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
/// import com.pulumi.random.Uuid;
/// import com.pulumi.alicloud.cloudstoragegateway.StorageBundle;
/// import com.pulumi.alicloud.cloudstoragegateway.StorageBundleArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ReplaceArgs;
/// import com.pulumi.std.inputs.SubstrArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.cloudstoragegateway.CloudstoragegatewayFunctions;
/// import com.pulumi.alicloud.cloudstoragegateway.inputs.GetStocksArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cloudstoragegateway.Gateway;
/// import com.pulumi.alicloud.cloudstoragegateway.GatewayArgs;
/// import com.pulumi.alicloud.cloudstoragegateway.GatewayCacheDisk;
/// import com.pulumi.alicloud.cloudstoragegateway.GatewayCacheDiskArgs;
/// import com.pulumi.alicloud.cloudstoragegateway.GatewayFileShare;
/// import com.pulumi.alicloud.cloudstoragegateway.GatewayFileShareArgs;
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
///         var defaultUuid = new Uuid("defaultUuid");
///
///         var defaultStorageBundle = new StorageBundle("defaultStorageBundle", StorageBundleArgs.builder()
///             .storageBundleName(StdFunctions.substr(SubstrArgs.builder()
///                 .input(String.format("tf-example-%s", StdFunctions.replace(ReplaceArgs.builder()
///                     .text(defaultUuid.result())
///                     .search("-")
///                     .replace("")
///                     .build()).result()))
///                 .offset(0)
///                 .length(16)
///                 .build()).result())
///             .build());
///
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .bucket(StdFunctions.substr(SubstrArgs.builder()
///                 .input(String.format("tf-example-%s", StdFunctions.replace(ReplaceArgs.builder()
///                     .text(defaultUuid.result())
///                     .search("-")
///                     .replace("")
///                     .build()).result()))
///                 .offset(0)
///                 .length(16)
///                 .build()).result())
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         final var default = CloudstoragegatewayFunctions.getStocks(GetStocksArgs.builder()
///             .gatewayClass("Standard")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(default_.stocks()[0].zoneId())
///             .vswitchName(name)
///             .build());
///
///         var defaultGateway = new Gateway("defaultGateway", GatewayArgs.builder()
///             .gatewayName(name)
///             .description(name)
///             .gatewayClass("Standard")
///             .type("File")
///             .paymentType("PayAsYouGo")
///             .vswitchId(defaultSwitch.id())
///             .releaseAfterExpiration(true)
///             .publicNetworkBandwidth(40)
///             .storageBundleId(defaultStorageBundle.id())
///             .location("Cloud")
///             .build());
///
///         var defaultGatewayCacheDisk = new GatewayCacheDisk("defaultGatewayCacheDisk", GatewayCacheDiskArgs.builder()
///             .cacheDiskCategory("cloud_efficiency")
///             .gatewayId(defaultGateway.id())
///             .cacheDiskSizeInGb(50)
///             .build());
///
///         var defaultGatewayFileShare = new GatewayFileShare("defaultGatewayFileShare", GatewayFileShareArgs.builder()
///             .gatewayFileShareName(name)
///             .gatewayId(defaultGateway.id())
///             .localPath(defaultGatewayCacheDisk.localFilePath())
///             .ossBucketName(defaultBucket.bucket())
///             .ossEndpoint(defaultBucket.extranetEndpoint())
///             .protocol("NFS")
///             .remoteSync(true)
///             .pollingInterval(4500)
///             .feLimit(0)
///             .backendLimit(0)
///             .cacheMode("Cache")
///             .squash("none")
///             .lagPeriod(5)
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
///   defaultUuid:
///     type: random:Uuid
///     name: default
///   defaultStorageBundle:
///     type: alicloud:cloudstoragegateway:StorageBundle
///     name: default
///     properties:
///       storageBundleName:
///         fn::invoke:
///           function: std:substr
///           arguments:
///             input:
///               fn::join:
///                 - ""
///                 - - tf-example-
///                   - fn::invoke:
///                       function: std:replace
///                       arguments:
///                         text: ${defaultUuid.result}
///                         search: '-'
///                         replace: ""
///                       return: result
///             offset: 0
///             length: 16
///           return: result
///   defaultBucket:
///     type: alicloud:oss:Bucket
///     name: default
///     properties:
///       bucket:
///         fn::invoke:
///           function: std:substr
///           arguments:
///             input:
///               fn::join:
///                 - ""
///                 - - tf-example-
///                   - fn::invoke:
///                       function: std:replace
///                       arguments:
///                         text: ${defaultUuid.result}
///                         search: '-'
///                         replace: ""
///                       return: result
///             offset: 0
///             length: 16
///           return: result
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/12
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/21
///       zoneId: ${default.stocks[0].zoneId}
///       vswitchName: ${name}
///   defaultGateway:
///     type: alicloud:cloudstoragegateway:Gateway
///     name: default
///     properties:
///       gatewayName: ${name}
///       description: ${name}
///       gatewayClass: Standard
///       type: File
///       paymentType: PayAsYouGo
///       vswitchId: ${defaultSwitch.id}
///       releaseAfterExpiration: true
///       publicNetworkBandwidth: 40
///       storageBundleId: ${defaultStorageBundle.id}
///       location: Cloud
///   defaultGatewayCacheDisk:
///     type: alicloud:cloudstoragegateway:GatewayCacheDisk
///     name: default
///     properties:
///       cacheDiskCategory: cloud_efficiency
///       gatewayId: ${defaultGateway.id}
///       cacheDiskSizeInGb: 50
///   defaultGatewayFileShare:
///     type: alicloud:cloudstoragegateway:GatewayFileShare
///     name: default
///     properties:
///       gatewayFileShareName: ${name}
///       gatewayId: ${defaultGateway.id}
///       localPath: ${defaultGatewayCacheDisk.localFilePath}
///       ossBucketName: ${defaultBucket.bucket}
///       ossEndpoint: ${defaultBucket.extranetEndpoint}
///       protocol: NFS
///       remoteSync: true
///       pollingInterval: 4500
///       feLimit: 0
///       backendLimit: 0
///       cacheMode: Cache
///       squash: none
///       lagPeriod: 5
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cloudstoragegateway:getStocks
///       arguments:
///         gatewayClass: Standard
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Storage Gateway Gateway File Share can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudstoragegateway/gatewayFileShare:GatewayFileShare example <gateway_id>:<index_id>
/// ```
class GatewayFileShare extends pulumi.CustomResource {
  /// Whether to enable Windows ABE, the prime minister, need windowsAcl parameter is set to true in the entry into force of. Default value: `false`. **NOTE:** The attribute is valid when the attribute `protocol` is `SMB`. Gateway version >= 1.0.45 above support.
  late final pulumi.Output<bool> accessBasedEnumeration;
  /// The Max upload speed of the gateway file share. Unit: `MB/s`, 0 means unlimited. Value range: `0` ~ `1280`. Default value: `0`. **NOTE:** at the same time if you have to limit the maximum write speed, maximum upload speed is no less than the maximum write speed.
  late final pulumi.Output<int> backendLimit;
  /// The whether browsable of the gateway file share (that is, in the network neighborhood of whether you can find). The attribute is valid when the attribute `protocol` is `SMB`. Default value: `true`.
  late final pulumi.Output<bool> browsable;
  /// Direct reading OSS of the gateway file share.
  late final pulumi.Output<bool> bypassCacheRead;
  /// The set up gateway file share cache mode. Valid values: `Cache` or `Sync`. `Cache`: cached mode. `Sync`: replication mode are available. Default value: `Cache`.
  late final pulumi.Output<String> cacheMode;
  /// File sharing Whether to enable DirectIO (direct I/O mode for data transmission). Default value: `false`.
  late final pulumi.Output<bool> directIo;
  /// The maximum download speed of the gateway file share. Unit: `MB/s`. `0` means unlimited. Value range: `0` ~ `1280`. **NOTE:** only in copy mode and enable download file data can be set. only when the shared opens the reverse synchronization or acceded to by the speed synchronization Group when, this parameter will not take effect. Gateway version >= 1.3.0 above support.
  late final pulumi.Output<int> downloadLimit;
  /// The whether to enable Upload optimization of the gateway file share, which is suitable for data pure backup migration scenarios. Default value: `false`. **NOTE:** Gateway version >= 1.0.39 above support.
  late final pulumi.Output<bool> fastReclaim;
  /// The maximum write speed of the gateway file share. Unit: `MB/s`, `0` means unlimited. Value range: `0` ~ `1280`. Default value: `0`.
  late final pulumi.Output<int> feLimit;
  /// The name of the file share. Length from `1` to `255` characters can contain lowercase letters, digits, (.), (_) Or (-), at the same time, must start with a lowercase letter.
  late final pulumi.Output<String> gatewayFileShareName;
  /// The ID of the gateway.
  late final pulumi.Output<String> gatewayId;
  /// The whether to ignore deleted of the gateway file share. After the opening of the Gateway side delete file or delete cloud (OSS) corresponding to the file. Default value: `false`. **NOTE:** `ignore_delete` and `remote_sync` cannot be enabled simultaneously. Gateway version >= 1.0.40 above support.
  late final pulumi.Output<bool> ignoreDelete;
  /// The whether debris optimization of the gateway file share. Default value: `false`.
  late final pulumi.Output<bool> inPlace;
  /// The ID of the file share.
  late final pulumi.Output<String> indexId;
  /// The synchronization delay, I.e. gateway local cache sync to Alibaba Cloud Object Storage Service (oss) of the delay time. Unit: `Seconds`. Value range: `5` ~ `120`. Default value: `5`. **NOTE:** Gateway version >= 1.0.40 above support.
  late final pulumi.Output<int> lagPeriod;
  /// The cache disk inside the device name.
  late final pulumi.Output<String> localPath;
  /// The set up gateway file share NFS protocol, whether to enable NFS v4 optimization improve Mount Upload efficiency. Default value: `false`. **NOTE:** If it is enabled, NFS V3 cannot be mounted. The attribute is valid when the attribute `protocol` is `NFS`. Gateway version >= 1.2.0 above support.
  late final pulumi.Output<bool> nfsV4Optimization;
  /// The name of the OSS Bucket.
  late final pulumi.Output<String> ossBucketName;
  /// Whether they are using SSL connect to OSS Bucket.
  late final pulumi.Output<bool> ossBucketSsl;
  /// The gateway file share corresponds to the Object Storage SERVICE (OSS), Bucket Endpoint. **NOTE:** distinguish between intranet and internet Endpoint. We recommend that if the OSS Bucket and the gateway is in the same Region is use the RDS intranet IP Endpoint: `oss-cn-hangzhou-internal.aliyuncs.com`.
  late final pulumi.Output<String> ossEndpoint;
  /// In part mode, the directory path group JSON format.
  late final pulumi.Output<String?> partialSyncPaths;
  /// The subdirectory path under the object storage (OSS) bucket corresponding to the file share. If it is blank, it means the root directory of the bucket.
  late final pulumi.Output<String?> pathPrefix;
  /// The reverse synchronization time intervals of the gateway file share. Value range: `15` ~ `36000`. **NOTE:** in copy mode + reverse synchronization is enabled Download file data, value range: `3600` ~ `36000`.
  late final pulumi.Output<int?> pollingInterval;
  /// Share types. Valid values: `SMB`, `NFS`.
  late final pulumi.Output<String> protocol;
  /// Whether to enable reverse synchronization of the gateway file share. Default value: `false`.
  late final pulumi.Output<bool> remoteSync;
  /// Copy mode, whether to download the file data. Default value: `false`. **NOTE:** only when the attribute `remote_sync` is `true` or acceded to by the speed synchronization group, this parameter will not take effect.
  late final pulumi.Output<bool> remoteSyncDownload;
  /// File sharing NFS read-only client list (IP address or IP address range). Use commas (,) to separate multiple clients.
  late final pulumi.Output<String?> roClientList;
  /// The read-only client list. When Protocol for Server Message Block (SMB) to go back to.
  late final pulumi.Output<String?> roUserList;
  /// Read and write the client list. When Protocol NFS is returned when the status is.
  late final pulumi.Output<String?> rwClientList;
  /// Read-write user list. When Protocol for Server Message Block (SMB) to go back to.
  late final pulumi.Output<String?> rwUserList;
  /// The NFS protocol user mapping of the gateway file share. Valid values: `none`, `root_squash`, `all_squash`, `all_anonymous`. Default value: `none`. **NOTE:** The attribute is valid when the attribute `protocol` is `NFS`.
  late final pulumi.Output<String> squash;
  /// Whether to support the archive transparent read.
  late final pulumi.Output<bool> supportArchive;
  /// The set up gateway file share whether to enable transmission acceleration needs corresponding OSS Bucket enabled transport acceleration. **NOTE:** Gateway version >= 1.3.0 above support.
  late final pulumi.Output<bool> transferAcceleration;
  /// Whether to enable by Windows access list (requires AD domain) the permissions control. Default value: `false`. **NOTE:** The attribute is valid when the attribute `protocol` is `SMB`. Gateway version >= 1.0.45 above support.
  late final pulumi.Output<bool> windowsAcl;

  /// Creates a new [GatewayFileShare].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayFileShare]. {@macro pulumi_cloudstoragegateway_gateway_file_share_gateway_file_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayFileShare(
    String name, {
    GatewayFileShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudstoragegateway/gatewayFileShare:GatewayFileShare',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessBasedEnumeration = registerOutput<bool>('accessBasedEnumeration');
    this.backendLimit = registerOutput<int>('backendLimit');
    this.browsable = registerOutput<bool>('browsable');
    this.bypassCacheRead = registerOutput<bool>('bypassCacheRead');
    this.cacheMode = registerOutput<String>('cacheMode');
    this.directIo = registerOutput<bool>('directIo');
    this.downloadLimit = registerOutput<int>('downloadLimit');
    this.fastReclaim = registerOutput<bool>('fastReclaim');
    this.feLimit = registerOutput<int>('feLimit');
    this.gatewayFileShareName = registerOutput<String>('gatewayFileShareName');
    this.gatewayId = registerOutput<String>('gatewayId');
    this.ignoreDelete = registerOutput<bool>('ignoreDelete');
    this.inPlace = registerOutput<bool>('inPlace');
    this.indexId = registerOutput<String>('indexId');
    this.lagPeriod = registerOutput<int>('lagPeriod');
    this.localPath = registerOutput<String>('localPath');
    this.nfsV4Optimization = registerOutput<bool>('nfsV4Optimization');
    this.ossBucketName = registerOutput<String>('ossBucketName');
    this.ossBucketSsl = registerOutput<bool>('ossBucketSsl');
    this.ossEndpoint = registerOutput<String>('ossEndpoint');
    this.partialSyncPaths = registerOutput<String?>('partialSyncPaths');
    this.pathPrefix = registerOutput<String?>('pathPrefix');
    this.pollingInterval = registerOutput<int?>('pollingInterval');
    this.protocol = registerOutput<String>('protocol');
    this.remoteSync = registerOutput<bool>('remoteSync');
    this.remoteSyncDownload = registerOutput<bool>('remoteSyncDownload');
    this.roClientList = registerOutput<String?>('roClientList');
    this.roUserList = registerOutput<String?>('roUserList');
    this.rwClientList = registerOutput<String?>('rwClientList');
    this.rwUserList = registerOutput<String?>('rwUserList');
    this.squash = registerOutput<String>('squash');
    this.supportArchive = registerOutput<bool>('supportArchive');
    this.transferAcceleration = registerOutput<bool>('transferAcceleration');
    this.windowsAcl = registerOutput<bool>('windowsAcl');
  }
}
