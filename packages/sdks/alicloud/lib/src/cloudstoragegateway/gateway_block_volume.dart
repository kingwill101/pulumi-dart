import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_block_volume_args.dart';
import 'gateway_block_volume_state.dart';

/// Provides a Cloud Storage Gateway Gateway Block Volume resource.
///
/// For information about Cloud Storage Gateway Gateway Block Volume and how to use it, see [What is Gateway Block Volume](https://www.alibabacloud.com/help/en/cloud-storage-gateway/latest/creategatewayblockvolume).
///
/// &gt; **NOTE:** Available since v1.144.0.
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
/// const defaultBucketAcl = new alicloud.oss.BucketAcl("default", {
///     bucket: defaultBucket.bucket,
///     acl: "public-read-write",
/// });
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
///     type: "Iscsi",
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
/// const defaultGatewayBlockVolume = new alicloud.cloudstoragegateway.GatewayBlockVolume("default", {
///     cacheMode: "Cache",
///     chapEnabled: false,
///     chunkSize: 8192,
///     gatewayBlockVolumeName: "example",
///     gatewayId: defaultGateway.id,
///     localPath: defaultGatewayCacheDisk.localFilePath,
///     ossBucketName: defaultBucket.bucket,
///     ossBucketSsl: true,
///     ossEndpoint: defaultBucket.extranetEndpoint,
///     protocol: "iSCSI",
///     size: 100,
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
/// default_bucket_acl = alicloud.oss.BucketAcl("default",
///     bucket=default_bucket.bucket,
///     acl="public-read-write")
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
///     type="Iscsi",
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
/// default_gateway_block_volume = alicloud.cloudstoragegateway.GatewayBlockVolume("default",
///     cache_mode="Cache",
///     chap_enabled=False,
///     chunk_size=8192,
///     gateway_block_volume_name="example",
///     gateway_id=default_gateway.id,
///     local_path=default_gateway_cache_disk.local_file_path,
///     oss_bucket_name=default_bucket.bucket,
///     oss_bucket_ssl=True,
///     oss_endpoint=default_bucket.extranet_endpoint,
///     protocol="iSCSI",
///     size=100)
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
///     var defaultBucketAcl = new AliCloud.Oss.BucketAcl("default", new()
///     {
///         Bucket = defaultBucket.BucketName,
///         Acl = "public-read-write",
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
///         Type = "Iscsi",
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
///     var defaultGatewayBlockVolume = new AliCloud.CloudStorageGateway.GatewayBlockVolume("default", new()
///     {
///         CacheMode = "Cache",
///         ChapEnabled = false,
///         ChunkSize = 8192,
///         GatewayBlockVolumeName = "example",
///         GatewayId = defaultGateway.Id,
///         LocalPath = defaultGatewayCacheDisk.LocalFilePath,
///         OssBucketName = defaultBucket.BucketName,
///         OssBucketSsl = true,
///         OssEndpoint = defaultBucket.ExtranetEndpoint,
///         Protocol = "iSCSI",
///         Size = 100,
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
/// 		_, err = oss.NewBucketAcl(ctx, "default", &oss.BucketAclArgs{
/// 			Bucket: defaultBucket.Bucket,
/// 			Acl:    pulumi.String("public-read-write"),
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
/// 			Type:                   pulumi.String("Iscsi"),
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
/// 		_, err = cloudstoragegateway.NewGatewayBlockVolume(ctx, "default", &cloudstoragegateway.GatewayBlockVolumeArgs{
/// 			CacheMode:              pulumi.String("Cache"),
/// 			ChapEnabled:            pulumi.Bool(false),
/// 			ChunkSize:              pulumi.Int(8192),
/// 			GatewayBlockVolumeName: pulumi.String("example"),
/// 			GatewayId:              defaultGateway.ID(),
/// 			LocalPath:              defaultGatewayCacheDisk.LocalFilePath,
/// 			OssBucketName:          defaultBucket.Bucket,
/// 			OssBucketSsl:           pulumi.Bool(true),
/// 			OssEndpoint:            defaultBucket.ExtranetEndpoint,
/// 			Protocol:               pulumi.String("iSCSI"),
/// 			Size:                   pulumi.Int(100),
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
/// import com.pulumi.alicloud.oss.BucketAcl;
/// import com.pulumi.alicloud.oss.BucketAclArgs;
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
/// import com.pulumi.alicloud.cloudstoragegateway.GatewayBlockVolume;
/// import com.pulumi.alicloud.cloudstoragegateway.GatewayBlockVolumeArgs;
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
///         var defaultBucketAcl = new BucketAcl("defaultBucketAcl", BucketAclArgs.builder()
///             .bucket(defaultBucket.bucket())
///             .acl("public-read-write")
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
///             .type("Iscsi")
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
///         var defaultGatewayBlockVolume = new GatewayBlockVolume("defaultGatewayBlockVolume", GatewayBlockVolumeArgs.builder()
///             .cacheMode("Cache")
///             .chapEnabled(false)
///             .chunkSize(8192)
///             .gatewayBlockVolumeName("example")
///             .gatewayId(defaultGateway.id())
///             .localPath(defaultGatewayCacheDisk.localFilePath())
///             .ossBucketName(defaultBucket.bucket())
///             .ossBucketSsl(true)
///             .ossEndpoint(defaultBucket.extranetEndpoint())
///             .protocol("iSCSI")
///             .size(100)
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
///   defaultBucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: default
///     properties:
///       bucket: ${defaultBucket.bucket}
///       acl: public-read-write
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
///       type: Iscsi
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
///   defaultGatewayBlockVolume:
///     type: alicloud:cloudstoragegateway:GatewayBlockVolume
///     name: default
///     properties:
///       cacheMode: Cache
///       chapEnabled: false
///       chunkSize: '8192'
///       gatewayBlockVolumeName: example
///       gatewayId: ${defaultGateway.id}
///       localPath: ${defaultGatewayCacheDisk.localFilePath}
///       ossBucketName: ${defaultBucket.bucket}
///       ossBucketSsl: true
///       ossEndpoint: ${defaultBucket.extranetEndpoint}
///       protocol: iSCSI
///       size: 100
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
/// Cloud Storage Gateway Gateway Block Volume can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudstoragegateway/gatewayBlockVolume:GatewayBlockVolume example <gateway_id>:<index_id>
/// ```
class GatewayBlockVolume extends pulumi.CustomResource {
  /// The Block volume set mode to cache mode. Valid values: `Cache`, `WriteThrough`.
  late final pulumi.Output<String> cacheMode;

  /// Whether to enable iSCSI access of CHAP authentication, which currently supports both CHAP inbound authentication.  Default value: `false`.
  late final pulumi.Output<bool> chapEnabled;

  /// The password for inbound authentication when the block volume enables iSCSI access to CHAP authentication. **NOTE:** When the `chap_enabled` is  `true` is,The `chap_in_password` is valid.
  late final pulumi.Output<String?> chapInPassword;

  /// The Inbound CHAP user. The `chap_in_user` must be 1 to 32 characters in length, and can contain letters and digits. **NOTE:** When the `chap_enabled` is  `true` is,The `chap_in_password` is valid.
  late final pulumi.Output<String?> chapInUser;

  /// The Block volume storage allocation unit.  Valid values: `8192`, `16384`, `32768`, `65536`, `131072`. Default value: `32768`. Unit: `Byte`.
  late final pulumi.Output<int> chunkSize;

  /// The Block volume name. The name must be 1 to 32 characters in length, and can contain lower case letters and digits.
  late final pulumi.Output<String> gatewayBlockVolumeName;

  /// The Gateway ID.
  late final pulumi.Output<String> gatewayId;

  /// The ID of the index.
  late final pulumi.Output<String> indexId;

  /// Whether to delete the source data. Default value `true`. **NOTE:** When `is_source_deletion` is `true`, the data in the OSS Bucket on the cloud is also deleted when deleting the block gateway volume. Please operate with caution.
  late final pulumi.Output<bool?> isSourceDeletion;

  /// The Cache disk to local path. **NOTE:**  When the `cache_mode` is  `Cache` is,The `chap_in_password` is valid.
  late final pulumi.Output<String?> localPath;

  /// The name of the OSS Bucket.
  late final pulumi.Output<String> ossBucketName;

  /// Whether to enable SSL access your OSS Buckets. Default value: `true`.
  late final pulumi.Output<bool> ossBucketSsl;

  /// The endpoint of the OSS Bucket.
  late final pulumi.Output<String> ossEndpoint;

  /// The Protocol. Valid values: `iSCSI`.
  late final pulumi.Output<String> protocol;

  /// The recovery.
  late final pulumi.Output<bool?> recovery;

  /// The Volume size. Valid values: `1` to `262144`. Unit: `Byte`.
  late final pulumi.Output<int> size;

  /// The status of volume. Valid values:
  late final pulumi.Output<String> status;

  /// Creates a new [GatewayBlockVolume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayBlockVolume]. {@macro pulumi_cloudstoragegateway_gateway_block_volume_gateway_block_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayBlockVolume(
    String name, {
    GatewayBlockVolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cloudstoragegateway/gatewayBlockVolume:GatewayBlockVolume',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cacheMode = registerOutput<String>('cacheMode');
    chapEnabled = registerOutput<bool>('chapEnabled');
    chapInPassword = registerOutput<String?>('chapInPassword');
    chapInUser = registerOutput<String?>('chapInUser');
    chunkSize = registerOutput<int>('chunkSize');
    gatewayBlockVolumeName = registerOutput<String>('gatewayBlockVolumeName');
    gatewayId = registerOutput<String>('gatewayId');
    indexId = registerOutput<String>('indexId');
    isSourceDeletion = registerOutput<bool?>('isSourceDeletion');
    localPath = registerOutput<String?>('localPath');
    ossBucketName = registerOutput<String>('ossBucketName');
    ossBucketSsl = registerOutput<bool>('ossBucketSsl');
    ossEndpoint = registerOutput<String>('ossEndpoint');
    protocol = registerOutput<String>('protocol');
    recovery = registerOutput<bool?>('recovery');
    size = registerOutput<int>('size');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [GatewayBlockVolume] resource's state with the given [name] and [id].
  static GatewayBlockVolume get(
    String name,
    pulumi.Input<String> id, {
    GatewayBlockVolumeState? state,
  }) {
    return GatewayBlockVolume._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GatewayBlockVolume._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cloudstoragegateway/gatewayBlockVolume:GatewayBlockVolume',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cacheMode = registerOutput<String>('cacheMode');
    chapEnabled = registerOutput<bool>('chapEnabled');
    chapInPassword = registerOutput<String?>('chapInPassword');
    chapInUser = registerOutput<String?>('chapInUser');
    chunkSize = registerOutput<int>('chunkSize');
    gatewayBlockVolumeName = registerOutput<String>('gatewayBlockVolumeName');
    gatewayId = registerOutput<String>('gatewayId');
    indexId = registerOutput<String>('indexId');
    isSourceDeletion = registerOutput<bool?>('isSourceDeletion');
    localPath = registerOutput<String?>('localPath');
    ossBucketName = registerOutput<String>('ossBucketName');
    ossBucketSsl = registerOutput<bool>('ossBucketSsl');
    ossEndpoint = registerOutput<String>('ossEndpoint');
    protocol = registerOutput<String>('protocol');
    recovery = registerOutput<bool?>('recovery');
    size = registerOutput<int>('size');
    status = registerOutput<String>('status');
  }
}
