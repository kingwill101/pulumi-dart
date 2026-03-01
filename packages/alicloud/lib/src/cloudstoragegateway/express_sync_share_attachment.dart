import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_sync_share_attachment_args.dart';

/// Provides a Cloud Storage Gateway Express Sync Share Attachment resource.
///
/// For information about Cloud Storage Gateway Express Sync Share Attachment and how to use it, see [What is Express Sync Share Attachment](https://www.alibabacloud.com/help/en/cloud-storage-gateway/latest/addsharestoexpresssync).
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
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const _default = alicloud.getRegions({
///     current: true,
/// });
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
/// const defaultGetStocks = alicloud.cloudstoragegateway.getStocks({
///     gatewayClass: "Standard",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: defaultGetStocks.then(defaultGetStocks => defaultGetStocks.stocks?.[0]?.zoneId),
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
///     remoteSync: false,
///     feLimit: 0,
///     backendLimit: 0,
///     cacheMode: "Cache",
///     squash: "none",
///     lagPeriod: 5,
/// });
/// const defaultExpressSync = new alicloud.cloudstoragegateway.ExpressSync("default", {
///     bucketName: defaultGatewayFileShare.ossBucketName,
///     bucketRegion: _default.then(_default => _default.regions?.[0]?.id),
///     description: name,
///     expressSyncName: `${name}-${defaultInteger.result}`,
/// });
/// const defaultExpressSyncShareAttachment = new alicloud.cloudstoragegateway.ExpressSyncShareAttachment("default", {
///     expressSyncId: defaultExpressSync.id,
///     gatewayId: defaultGateway.id,
///     shareName: defaultGatewayFileShare.gatewayFileShareName,
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
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default = alicloud.get_regions(current=True)
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
/// default_get_stocks = alicloud.cloudstoragegateway.get_stocks(gateway_class="Standard")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=default_get_stocks.stocks[0].zone_id,
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
///     remote_sync=False,
///     fe_limit=0,
///     backend_limit=0,
///     cache_mode="Cache",
///     squash="none",
///     lag_period=5)
/// default_express_sync = alicloud.cloudstoragegateway.ExpressSync("default",
///     bucket_name=default_gateway_file_share.oss_bucket_name,
///     bucket_region=default.regions[0].id,
///     description=name,
///     express_sync_name=f"{name}-{default_integer['result']}")
/// default_express_sync_share_attachment = alicloud.cloudstoragegateway.ExpressSyncShareAttachment("default",
///     express_sync_id=default_express_sync.id,
///     gateway_id=default_gateway.id,
///     share_name=default_gateway_file_share.gateway_file_share_name)
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
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
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
///     var defaultGetStocks = AliCloud.CloudStorageGateway.GetStocks.Invoke(new()
///     {
///         GatewayClass = "Standard",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = defaultGetStocks.Apply(getStocksResult => getStocksResult.Stocks[0]?.ZoneId),
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
///         RemoteSync = false,
///         FeLimit = 0,
///         BackendLimit = 0,
///         CacheMode = "Cache",
///         Squash = "none",
///         LagPeriod = 5,
///     });
///
///     var defaultExpressSync = new AliCloud.CloudStorageGateway.ExpressSync("default", new()
///     {
///         BucketName = defaultGatewayFileShare.OssBucketName,
///         BucketRegion = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         Description = name,
///         ExpressSyncName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var defaultExpressSyncShareAttachment = new AliCloud.CloudStorageGateway.ExpressSyncShareAttachment("default", new()
///     {
///         ExpressSyncId = defaultExpressSync.Id,
///         GatewayId = defaultGateway.Id,
///         ShareName = defaultGatewayFileShare.GatewayFileShareName,
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
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
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
/// 		defaultGetStocks, err := cloudstoragegateway.GetStocks(ctx, &cloudstoragegateway.GetStocksArgs{
/// 			GatewayClass: pulumi.StringRef("Standard"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/21"),
/// 			ZoneId:      pulumi.String(defaultGetStocks.Stocks[0].ZoneId),
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
/// 		defaultGatewayFileShare, err := cloudstoragegateway.NewGatewayFileShare(ctx, "default", &cloudstoragegateway.GatewayFileShareArgs{
/// 			GatewayFileShareName: pulumi.String(name),
/// 			GatewayId:            defaultGateway.ID(),
/// 			LocalPath:            defaultGatewayCacheDisk.LocalFilePath,
/// 			OssBucketName:        defaultBucket.Bucket,
/// 			OssEndpoint:          defaultBucket.ExtranetEndpoint,
/// 			Protocol:             pulumi.String("NFS"),
/// 			RemoteSync:           pulumi.Bool(false),
/// 			FeLimit:              pulumi.Int(0),
/// 			BackendLimit:         pulumi.Int(0),
/// 			CacheMode:            pulumi.String("Cache"),
/// 			Squash:               pulumi.String("none"),
/// 			LagPeriod:            pulumi.Int(5),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultExpressSync, err := cloudstoragegateway.NewExpressSync(ctx, "default", &cloudstoragegateway.ExpressSyncArgs{
/// 			BucketName:      defaultGatewayFileShare.OssBucketName,
/// 			BucketRegion:    pulumi.String(_default.Regions[0].Id),
/// 			Description:     pulumi.String(name),
/// 			ExpressSyncName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudstoragegateway.NewExpressSyncShareAttachment(ctx, "default", &cloudstoragegateway.ExpressSyncShareAttachmentArgs{
/// 			ExpressSyncId: defaultExpressSync.ID(),
/// 			GatewayId:     defaultGateway.ID(),
/// 			ShareName:     defaultGatewayFileShare.GatewayFileShareName,
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
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
/// import com.pulumi.alicloud.cloudstoragegateway.GatewayFileShare;
/// import com.pulumi.alicloud.cloudstoragegateway.GatewayFileShareArgs;
/// import com.pulumi.alicloud.cloudstoragegateway.ExpressSync;
/// import com.pulumi.alicloud.cloudstoragegateway.ExpressSyncArgs;
/// import com.pulumi.alicloud.cloudstoragegateway.ExpressSyncShareAttachment;
/// import com.pulumi.alicloud.cloudstoragegateway.ExpressSyncShareAttachmentArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
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
///         final var defaultGetStocks = CloudstoragegatewayFunctions.getStocks(GetStocksArgs.builder()
///             .gatewayClass("Standard")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(defaultGetStocks.stocks()[0].zoneId())
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
///             .remoteSync(false)
///             .feLimit(0)
///             .backendLimit(0)
///             .cacheMode("Cache")
///             .squash("none")
///             .lagPeriod(5)
///             .build());
///
///         var defaultExpressSync = new ExpressSync("defaultExpressSync", ExpressSyncArgs.builder()
///             .bucketName(defaultGatewayFileShare.ossBucketName())
///             .bucketRegion(default_.regions()[0].id())
///             .description(name)
///             .expressSyncName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         var defaultExpressSyncShareAttachment = new ExpressSyncShareAttachment("defaultExpressSyncShareAttachment", ExpressSyncShareAttachmentArgs.builder()
///             .expressSyncId(defaultExpressSync.id())
///             .gatewayId(defaultGateway.id())
///             .shareName(defaultGatewayFileShare.gatewayFileShareName())
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
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
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
///       zoneId: ${defaultGetStocks.stocks[0].zoneId}
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
///       remoteSync: false
///       feLimit: 0
///       backendLimit: 0
///       cacheMode: Cache
///       squash: none
///       lagPeriod: 5
///   defaultExpressSync:
///     type: alicloud:cloudstoragegateway:ExpressSync
///     name: default
///     properties:
///       bucketName: ${defaultGatewayFileShare.ossBucketName}
///       bucketRegion: ${default.regions[0].id}
///       description: ${name}
///       expressSyncName: ${name}-${defaultInteger.result}
///   defaultExpressSyncShareAttachment:
///     type: alicloud:cloudstoragegateway:ExpressSyncShareAttachment
///     name: default
///     properties:
///       expressSyncId: ${defaultExpressSync.id}
///       gatewayId: ${defaultGateway.id}
///       shareName: ${defaultGatewayFileShare.gatewayFileShareName}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
///   defaultGetStocks:
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
/// Cloud Storage Gateway Express Sync Share Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudstoragegateway/expressSyncShareAttachment:ExpressSyncShareAttachment example <express_sync_id>:<gateway_id>:<share_name>
/// ```
class ExpressSyncShareAttachment extends pulumi.CustomResource {
  /// The ID of the ExpressSync.
  late final pulumi.Output<String> expressSyncId;
  /// The ID of the Gateway.
  late final pulumi.Output<String> gatewayId;
  /// The name of the GatewayFileShare. **NOTE:** When GatewayFileShare is associated with a speed sync group, its reverse synchronization function will be turned off by default.
  late final pulumi.Output<String> shareName;

  /// Creates a new [ExpressSyncShareAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressSyncShareAttachment]. {@macro pulumi_cloudstoragegateway_express_sync_share_attachment_express_sync_share_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressSyncShareAttachment(
    String name, {
    ExpressSyncShareAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudstoragegateway/expressSyncShareAttachment:ExpressSyncShareAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.expressSyncId = registerOutput<String>('expressSyncId');
    this.gatewayId = registerOutput<String>('gatewayId');
    this.shareName = registerOutput<String>('shareName');
  }
}
