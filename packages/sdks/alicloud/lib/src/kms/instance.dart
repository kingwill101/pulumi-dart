import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// Provides a KMS Instance resource.
///
/// For information about KMS Instance and how to use it, see [What is Instance](https://www.alibabacloud.com/help/zh/key-management-service/latest/kms-instance-management).
///
/// &gt; **NOTE:** Available since v1.210.0.
///
/// ## Example Usage
///
/// Create a subscription kms instance
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const region = config.get("region") || "cn-hangzhou";
/// const name = config.get("name") || "terraform-example";
/// const current = alicloud.getAccount({});
/// const vpc_amp_instance_example = new alicloud.vpc.Network("vpc-amp-instance-example", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: name,
/// });
/// const vswitch = new alicloud.vpc.Switch("vswitch", {
///     vpcId: vpc_amp_instance_example.id,
///     zoneId: "cn-hangzhou-k",
///     cidrBlock: "172.16.1.0/24",
/// });
/// const vswitch_j = new alicloud.vpc.Switch("vswitch-j", {
///     vpcId: vpc_amp_instance_example.id,
///     zoneId: "cn-hangzhou-j",
///     cidrBlock: "172.16.2.0/24",
/// });
/// const shareVPC = new alicloud.vpc.Network("shareVPC", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: std.format({
///         input: "%s3",
///         args: [name],
///     }).then(invoke => invoke.result),
/// });
/// const shareVswitch = new alicloud.vpc.Switch("shareVswitch", {
///     vpcId: shareVPC.id,
///     zoneId: "cn-hangzhou-k",
///     cidrBlock: "172.16.1.0/24",
/// });
/// const share_VPC2 = new alicloud.vpc.Network("share-VPC2", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: std.format({
///         input: "%s5",
///         args: [name],
///     }).then(invoke => invoke.result),
/// });
/// const share_vswitch2 = new alicloud.vpc.Switch("share-vswitch2", {
///     vpcId: share_VPC2.id,
///     zoneId: "cn-hangzhou-k",
///     cidrBlock: "172.16.1.0/24",
/// });
/// const share_VPC3 = new alicloud.vpc.Network("share-VPC3", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: std.format({
///         input: "%s7",
///         args: [name],
///     }).then(invoke => invoke.result),
/// });
/// const share_vsw3 = new alicloud.vpc.Switch("share-vsw3", {
///     vpcId: share_VPC3.id,
///     zoneId: "cn-hangzhou-k",
///     cidrBlock: "172.16.1.0/24",
/// });
/// const _default = new alicloud.kms.Instance("default", {
///     vpcNum: 7,
///     keyNum: 1000,
///     secretNum: 0,
///     spec: 1000,
///     renewStatus: "ManualRenewal",
///     productVersion: "3",
///     renewPeriod: 3,
///     vpcId: vswitch.vpcId,
///     zoneIds: [
///         "cn-hangzhou-k",
///         "cn-hangzhou-j",
///     ],
///     vswitchIds: [vswitch_j.id],
///     bindVpcs: [
///         {
///             vpcId: shareVswitch.vpcId,
///             regionId: region,
///             vswitchId: shareVswitch.id,
///             vpcOwnerId: current.then(current => current.id),
///         },
///         {
///             vpcId: share_vswitch2.vpcId,
///             regionId: region,
///             vswitchId: share_vswitch2.id,
///             vpcOwnerId: current.then(current => current.id),
///         },
///         {
///             vpcId: share_vsw3.vpcId,
///             regionId: region,
///             vswitchId: share_vsw3.id,
///             vpcOwnerId: current.then(current => current.id),
///         },
///     ],
///     log: "0",
///     period: 1,
///     logStorage: 0,
///     paymentType: "Subscription",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// region = config.get("region")
/// if region is None:
///     region = "cn-hangzhou"
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// current = alicloud.get_account()
/// vpc_amp_instance_example = alicloud.vpc.Network("vpc-amp-instance-example",
///     cidr_block="172.16.0.0/12",
///     vpc_name=name)
/// vswitch = alicloud.vpc.Switch("vswitch",
///     vpc_id=vpc_amp_instance_example.id,
///     zone_id="cn-hangzhou-k",
///     cidr_block="172.16.1.0/24")
/// vswitch_j = alicloud.vpc.Switch("vswitch-j",
///     vpc_id=vpc_amp_instance_example.id,
///     zone_id="cn-hangzhou-j",
///     cidr_block="172.16.2.0/24")
/// share_vpc = alicloud.vpc.Network("shareVPC",
///     cidr_block="172.16.0.0/12",
///     vpc_name=std.format(input="%s3",
///         args=[name]).result)
/// share_vswitch = alicloud.vpc.Switch("shareVswitch",
///     vpc_id=share_vpc.id,
///     zone_id="cn-hangzhou-k",
///     cidr_block="172.16.1.0/24")
/// share__vpc2 = alicloud.vpc.Network("share-VPC2",
///     cidr_block="172.16.0.0/12",
///     vpc_name=std.format(input="%s5",
///         args=[name]).result)
/// share_vswitch2 = alicloud.vpc.Switch("share-vswitch2",
///     vpc_id=share__vpc2.id,
///     zone_id="cn-hangzhou-k",
///     cidr_block="172.16.1.0/24")
/// share__vpc3 = alicloud.vpc.Network("share-VPC3",
///     cidr_block="172.16.0.0/12",
///     vpc_name=std.format(input="%s7",
///         args=[name]).result)
/// share_vsw3 = alicloud.vpc.Switch("share-vsw3",
///     vpc_id=share__vpc3.id,
///     zone_id="cn-hangzhou-k",
///     cidr_block="172.16.1.0/24")
/// default = alicloud.kms.Instance("default",
///     vpc_num=7,
///     key_num=1000,
///     secret_num=0,
///     spec=1000,
///     renew_status="ManualRenewal",
///     product_version="3",
///     renew_period=3,
///     vpc_id=vswitch.vpc_id,
///     zone_ids=[
///         "cn-hangzhou-k",
///         "cn-hangzhou-j",
///     ],
///     vswitch_ids=[vswitch_j.id],
///     bind_vpcs=[
///         {
///             "vpc_id": share_vswitch.vpc_id,
///             "region_id": region,
///             "vswitch_id": share_vswitch.id,
///             "vpc_owner_id": current.id,
///         },
///         {
///             "vpc_id": share_vswitch2.vpc_id,
///             "region_id": region,
///             "vswitch_id": share_vswitch2.id,
///             "vpc_owner_id": current.id,
///         },
///         {
///             "vpc_id": share_vsw3.vpc_id,
///             "region_id": region,
///             "vswitch_id": share_vsw3.id,
///             "vpc_owner_id": current.id,
///         },
///     ],
///     log="0",
///     period=1,
///     log_storage=0,
///     payment_type="Subscription")
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
///     var region = config.Get("region") ?? "cn-hangzhou";
///     var name = config.Get("name") ?? "terraform-example";
///     var current = AliCloud.GetAccount.Invoke();
///
///     var vpc_amp_instance_example = new AliCloud.Vpc.Network("vpc-amp-instance-example", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = name,
///     });
///
///     var vswitch = new AliCloud.Vpc.Switch("vswitch", new()
///     {
///         VpcId = vpc_amp_instance_example.Id,
///         ZoneId = "cn-hangzhou-k",
///         CidrBlock = "172.16.1.0/24",
///     });
///
///     var vswitch_j = new AliCloud.Vpc.Switch("vswitch-j", new()
///     {
///         VpcId = vpc_amp_instance_example.Id,
///         ZoneId = "cn-hangzhou-j",
///         CidrBlock = "172.16.2.0/24",
///     });
///
///     var shareVPC = new AliCloud.Vpc.Network("shareVPC", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = Std.Format.Invoke(new()
///         {
///             Input = "%s3",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var shareVswitch = new AliCloud.Vpc.Switch("shareVswitch", new()
///     {
///         VpcId = shareVPC.Id,
///         ZoneId = "cn-hangzhou-k",
///         CidrBlock = "172.16.1.0/24",
///     });
///
///     var share_VPC2 = new AliCloud.Vpc.Network("share-VPC2", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = Std.Format.Invoke(new()
///         {
///             Input = "%s5",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var share_vswitch2 = new AliCloud.Vpc.Switch("share-vswitch2", new()
///     {
///         VpcId = share_VPC2.Id,
///         ZoneId = "cn-hangzhou-k",
///         CidrBlock = "172.16.1.0/24",
///     });
///
///     var share_VPC3 = new AliCloud.Vpc.Network("share-VPC3", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = Std.Format.Invoke(new()
///         {
///             Input = "%s7",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var share_vsw3 = new AliCloud.Vpc.Switch("share-vsw3", new()
///     {
///         VpcId = share_VPC3.Id,
///         ZoneId = "cn-hangzhou-k",
///         CidrBlock = "172.16.1.0/24",
///     });
///
///     var @default = new AliCloud.Kms.Instance("default", new()
///     {
///         VpcNum = 7,
///         KeyNum = 1000,
///         SecretNum = 0,
///         Spec = 1000,
///         RenewStatus = "ManualRenewal",
///         ProductVersion = "3",
///         RenewPeriod = 3,
///         VpcId = vswitch.VpcId,
///         ZoneIds = new[]
///         {
///             "cn-hangzhou-k",
///             "cn-hangzhou-j",
///         },
///         VswitchIds = new[]
///         {
///             vswitch_j.Id,
///         },
///         BindVpcs = new[]
///         {
///             new AliCloud.Kms.Inputs.InstanceBindVpcArgs
///             {
///                 VpcId = shareVswitch.VpcId,
///                 RegionId = region,
///                 VswitchId = shareVswitch.Id,
///                 VpcOwnerId = current.Apply(getAccountResult => getAccountResult.Id),
///             },
///             new AliCloud.Kms.Inputs.InstanceBindVpcArgs
///             {
///                 VpcId = share_vswitch2.VpcId,
///                 RegionId = region,
///                 VswitchId = share_vswitch2.Id,
///                 VpcOwnerId = current.Apply(getAccountResult => getAccountResult.Id),
///             },
///             new AliCloud.Kms.Inputs.InstanceBindVpcArgs
///             {
///                 VpcId = share_vsw3.VpcId,
///                 RegionId = region,
///                 VswitchId = share_vsw3.Id,
///                 VpcOwnerId = current.Apply(getAccountResult => getAccountResult.Id),
///             },
///         },
///         Log = "0",
///         Period = 1,
///         LogStorage = 0,
///         PaymentType = "Subscription",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		region := "cn-hangzhou"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		current, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpc_amp_instance_example, err := vpc.NewNetwork(ctx, "vpc-amp-instance-example", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 			VpcName:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vswitch, err := vpc.NewSwitch(ctx, "vswitch", &vpc.SwitchArgs{
/// 			VpcId:     vpc_amp_instance_example.ID(),
/// 			ZoneId:    pulumi.String("cn-hangzhou-k"),
/// 			CidrBlock: pulumi.String("172.16.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vswitch_j, err := vpc.NewSwitch(ctx, "vswitch-j", &vpc.SwitchArgs{
/// 			VpcId:     vpc_amp_instance_example.ID(),
/// 			ZoneId:    pulumi.String("cn-hangzhou-j"),
/// 			CidrBlock: pulumi.String("172.16.2.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s3",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		shareVPC, err := vpc.NewNetwork(ctx, "shareVPC", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 			VpcName:   pulumi.String(invokeFormat.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		shareVswitch, err := vpc.NewSwitch(ctx, "shareVswitch", &vpc.SwitchArgs{
/// 			VpcId:     shareVPC.ID(),
/// 			ZoneId:    pulumi.String("cn-hangzhou-k"),
/// 			CidrBlock: pulumi.String("172.16.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s5",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		share_VPC2, err := vpc.NewNetwork(ctx, "share-VPC2", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 			VpcName:   pulumi.String(invokeFormat1.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		share_vswitch2, err := vpc.NewSwitch(ctx, "share-vswitch2", &vpc.SwitchArgs{
/// 			VpcId:     share_VPC2.ID(),
/// 			ZoneId:    pulumi.String("cn-hangzhou-k"),
/// 			CidrBlock: pulumi.String("172.16.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat2, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s7",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		share_VPC3, err := vpc.NewNetwork(ctx, "share-VPC3", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 			VpcName:   pulumi.String(invokeFormat2.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		share_vsw3, err := vpc.NewSwitch(ctx, "share-vsw3", &vpc.SwitchArgs{
/// 			VpcId:     share_VPC3.ID(),
/// 			ZoneId:    pulumi.String("cn-hangzhou-k"),
/// 			CidrBlock: pulumi.String("172.16.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewInstance(ctx, "default", &kms.InstanceArgs{
/// 			VpcNum:         pulumi.Int(7),
/// 			KeyNum:         pulumi.Int(1000),
/// 			SecretNum:      pulumi.Int(0),
/// 			Spec:           pulumi.Int(1000),
/// 			RenewStatus:    pulumi.String("ManualRenewal"),
/// 			ProductVersion: pulumi.String("3"),
/// 			RenewPeriod:    pulumi.Int(3),
/// 			VpcId:          vswitch.VpcId,
/// 			ZoneIds: pulumi.StringArray{
/// 				pulumi.String("cn-hangzhou-k"),
/// 				pulumi.String("cn-hangzhou-j"),
/// 			},
/// 			VswitchIds: pulumi.StringArray{
/// 				vswitch_j.ID(),
/// 			},
/// 			BindVpcs: kms.InstanceBindVpcArray{
/// 				&kms.InstanceBindVpcArgs{
/// 					VpcId:      shareVswitch.VpcId,
/// 					RegionId:   pulumi.String(region),
/// 					VswitchId:  shareVswitch.ID(),
/// 					VpcOwnerId: pulumi.String(current.Id),
/// 				},
/// 				&kms.InstanceBindVpcArgs{
/// 					VpcId:      share_vswitch2.VpcId,
/// 					RegionId:   pulumi.String(region),
/// 					VswitchId:  share_vswitch2.ID(),
/// 					VpcOwnerId: pulumi.String(current.Id),
/// 				},
/// 				&kms.InstanceBindVpcArgs{
/// 					VpcId:      share_vsw3.VpcId,
/// 					RegionId:   pulumi.String(region),
/// 					VswitchId:  share_vsw3.ID(),
/// 					VpcOwnerId: pulumi.String(current.Id),
/// 				},
/// 			},
/// 			Log:         pulumi.String("0"),
/// 			Period:      pulumi.Int(1),
/// 			LogStorage:  pulumi.Int(0),
/// 			PaymentType: pulumi.String("Subscription"),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.kms.Instance;
/// import com.pulumi.alicloud.kms.InstanceArgs;
/// import com.pulumi.alicloud.kms.inputs.InstanceBindVpcArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var current = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var vpc_amp_instance_example = new Network("vpc-amp-instance-example", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(name)
///             .build());
///
///         var vswitch = new Switch("vswitch", SwitchArgs.builder()
///             .vpcId(vpc_amp_instance_example.id())
///             .zoneId("cn-hangzhou-k")
///             .cidrBlock("172.16.1.0/24")
///             .build());
///
///         var vswitch_j = new Switch("vswitch-j", SwitchArgs.builder()
///             .vpcId(vpc_amp_instance_example.id())
///             .zoneId("cn-hangzhou-j")
///             .cidrBlock("172.16.2.0/24")
///             .build());
///
///         var shareVPC = new Network("shareVPC", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s3")
///                 .args(name)
///                 .build()).result())
///             .build());
///
///         var shareVswitch = new Switch("shareVswitch", SwitchArgs.builder()
///             .vpcId(shareVPC.id())
///             .zoneId("cn-hangzhou-k")
///             .cidrBlock("172.16.1.0/24")
///             .build());
///
///         var share_VPC2 = new Network("share-VPC2", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s5")
///                 .args(name)
///                 .build()).result())
///             .build());
///
///         var share_vswitch2 = new Switch("share-vswitch2", SwitchArgs.builder()
///             .vpcId(share_VPC2.id())
///             .zoneId("cn-hangzhou-k")
///             .cidrBlock("172.16.1.0/24")
///             .build());
///
///         var share_VPC3 = new Network("share-VPC3", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s7")
///                 .args(name)
///                 .build()).result())
///             .build());
///
///         var share_vsw3 = new Switch("share-vsw3", SwitchArgs.builder()
///             .vpcId(share_VPC3.id())
///             .zoneId("cn-hangzhou-k")
///             .cidrBlock("172.16.1.0/24")
///             .build());
///
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .vpcNum(7)
///             .keyNum(1000)
///             .secretNum(0)
///             .spec(1000)
///             .renewStatus("ManualRenewal")
///             .productVersion("3")
///             .renewPeriod(3)
///             .vpcId(vswitch.vpcId())
///             .zoneIds(
///                 "cn-hangzhou-k",
///                 "cn-hangzhou-j")
///             .vswitchIds(vswitch_j.id())
///             .bindVpcs(
///                 InstanceBindVpcArgs.builder()
///                     .vpcId(shareVswitch.vpcId())
///                     .regionId(region)
///                     .vswitchId(shareVswitch.id())
///                     .vpcOwnerId(current.id())
///                     .build(),
///                 InstanceBindVpcArgs.builder()
///                     .vpcId(share_vswitch2.vpcId())
///                     .regionId(region)
///                     .vswitchId(share_vswitch2.id())
///                     .vpcOwnerId(current.id())
///                     .build(),
///                 InstanceBindVpcArgs.builder()
///                     .vpcId(share_vsw3.vpcId())
///                     .regionId(region)
///                     .vswitchId(share_vsw3.id())
///                     .vpcOwnerId(current.id())
///                     .build())
///             .log("0")
///             .period(1)
///             .logStorage(0)
///             .paymentType("Subscription")
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
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   vpc-amp-instance-example:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName: ${name}
///   vswitch:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${["vpc-amp-instance-example"].id}
///       zoneId: cn-hangzhou-k
///       cidrBlock: 172.16.1.0/24
///   vswitch-j:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${["vpc-amp-instance-example"].id}
///       zoneId: cn-hangzhou-j
///       cidrBlock: 172.16.2.0/24
///   shareVPC:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s3'
///             args:
///               - ${name}
///           return: result
///   shareVswitch:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${shareVPC.id}
///       zoneId: cn-hangzhou-k
///       cidrBlock: 172.16.1.0/24
///   share-VPC2:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s5'
///             args:
///               - ${name}
///           return: result
///   share-vswitch2:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${["share-VPC2"].id}
///       zoneId: cn-hangzhou-k
///       cidrBlock: 172.16.1.0/24
///   share-VPC3:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s7'
///             args:
///               - ${name}
///           return: result
///   share-vsw3:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${["share-VPC3"].id}
///       zoneId: cn-hangzhou-k
///       cidrBlock: 172.16.1.0/24
///   default:
///     type: alicloud:kms:Instance
///     properties:
///       vpcNum: '7'
///       keyNum: '1000'
///       secretNum: '0'
///       spec: '1000'
///       renewStatus: ManualRenewal
///       productVersion: '3'
///       renewPeriod: '3'
///       vpcId: ${vswitch.vpcId}
///       zoneIds:
///         - cn-hangzhou-k
///         - cn-hangzhou-j
///       vswitchIds:
///         - ${["vswitch-j"].id}
///       bindVpcs:
///         - vpcId: ${shareVswitch.vpcId}
///           regionId: ${region}
///           vswitchId: ${shareVswitch.id}
///           vpcOwnerId: ${current.id}
///         - vpcId: ${["share-vswitch2"].vpcId}
///           regionId: ${region}
///           vswitchId: ${["share-vswitch2"].id}
///           vpcOwnerId: ${current.id}
///         - vpcId: ${["share-vsw3"].vpcId}
///           regionId: ${region}
///           vswitchId: ${["share-vsw3"].id}
///           vpcOwnerId: ${current.id}
///       log: '0'
///       period: '1'
///       logStorage: '0'
///       paymentType: Subscription
/// variables:
///   current:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
/// Create a pay-as-you-go kms instance
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const region = config.get("region") || "cn-hangzhou";
/// const name = config.get("name") || "terraform-example";
/// const current = alicloud.getAccount({});
/// const vpc_amp_instance_example = new alicloud.vpc.Network("vpc-amp-instance-example", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: name,
/// });
/// const vswitch = new alicloud.vpc.Switch("vswitch", {
///     vpcId: vpc_amp_instance_example.id,
///     zoneId: "cn-hangzhou-k",
///     cidrBlock: "172.16.1.0/24",
/// });
/// const vswitch_j = new alicloud.vpc.Switch("vswitch-j", {
///     vpcId: vpc_amp_instance_example.id,
///     zoneId: "cn-hangzhou-j",
///     cidrBlock: "172.16.2.0/24",
/// });
/// const shareVPC = new alicloud.vpc.Network("shareVPC", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: std.format({
///         input: "%s3",
///         args: [name],
///     }).then(invoke => invoke.result),
/// });
/// const shareVswitch = new alicloud.vpc.Switch("shareVswitch", {
///     vpcId: shareVPC.id,
///     zoneId: "cn-hangzhou-k",
///     cidrBlock: "172.16.1.0/24",
/// });
/// const share_VPC2 = new alicloud.vpc.Network("share-VPC2", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: std.format({
///         input: "%s5",
///         args: [name],
///     }).then(invoke => invoke.result),
/// });
/// const share_vswitch2 = new alicloud.vpc.Switch("share-vswitch2", {
///     vpcId: share_VPC2.id,
///     zoneId: "cn-hangzhou-k",
///     cidrBlock: "172.16.1.0/24",
/// });
/// const share_VPC3 = new alicloud.vpc.Network("share-VPC3", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: std.format({
///         input: "%s7",
///         args: [name],
///     }).then(invoke => invoke.result),
/// });
/// const share_vsw3 = new alicloud.vpc.Switch("share-vsw3", {
///     vpcId: share_VPC3.id,
///     zoneId: "cn-hangzhou-k",
///     cidrBlock: "172.16.1.0/24",
/// });
/// const _default = new alicloud.kms.Instance("default", {
///     paymentType: "PayAsYouGo",
///     productVersion: "3",
///     vpcId: vswitch.vpcId,
///     zoneIds: [
///         vswitch.zoneId,
///         vswitch_j.zoneId,
///     ],
///     vswitchIds: [vswitch.id],
///     forceDeleteWithoutBackup: "true",
///     bindVpcs: [
///         {
///             vpcId: shareVswitch.vpcId,
///             regionId: region,
///             vswitchId: shareVswitch.id,
///             vpcOwnerId: current.then(current => current.id),
///         },
///         {
///             vpcId: share_vswitch2.vpcId,
///             regionId: region,
///             vswitchId: share_vswitch2.id,
///             vpcOwnerId: current.then(current => current.id),
///         },
///         {
///             vpcId: share_vsw3.vpcId,
///             regionId: region,
///             vswitchId: share_vsw3.id,
///             vpcOwnerId: current.then(current => current.id),
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// region = config.get("region")
/// if region is None:
///     region = "cn-hangzhou"
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// current = alicloud.get_account()
/// vpc_amp_instance_example = alicloud.vpc.Network("vpc-amp-instance-example",
///     cidr_block="172.16.0.0/12",
///     vpc_name=name)
/// vswitch = alicloud.vpc.Switch("vswitch",
///     vpc_id=vpc_amp_instance_example.id,
///     zone_id="cn-hangzhou-k",
///     cidr_block="172.16.1.0/24")
/// vswitch_j = alicloud.vpc.Switch("vswitch-j",
///     vpc_id=vpc_amp_instance_example.id,
///     zone_id="cn-hangzhou-j",
///     cidr_block="172.16.2.0/24")
/// share_vpc = alicloud.vpc.Network("shareVPC",
///     cidr_block="172.16.0.0/12",
///     vpc_name=std.format(input="%s3",
///         args=[name]).result)
/// share_vswitch = alicloud.vpc.Switch("shareVswitch",
///     vpc_id=share_vpc.id,
///     zone_id="cn-hangzhou-k",
///     cidr_block="172.16.1.0/24")
/// share__vpc2 = alicloud.vpc.Network("share-VPC2",
///     cidr_block="172.16.0.0/12",
///     vpc_name=std.format(input="%s5",
///         args=[name]).result)
/// share_vswitch2 = alicloud.vpc.Switch("share-vswitch2",
///     vpc_id=share__vpc2.id,
///     zone_id="cn-hangzhou-k",
///     cidr_block="172.16.1.0/24")
/// share__vpc3 = alicloud.vpc.Network("share-VPC3",
///     cidr_block="172.16.0.0/12",
///     vpc_name=std.format(input="%s7",
///         args=[name]).result)
/// share_vsw3 = alicloud.vpc.Switch("share-vsw3",
///     vpc_id=share__vpc3.id,
///     zone_id="cn-hangzhou-k",
///     cidr_block="172.16.1.0/24")
/// default = alicloud.kms.Instance("default",
///     payment_type="PayAsYouGo",
///     product_version="3",
///     vpc_id=vswitch.vpc_id,
///     zone_ids=[
///         vswitch.zone_id,
///         vswitch_j.zone_id,
///     ],
///     vswitch_ids=[vswitch.id],
///     force_delete_without_backup="true",
///     bind_vpcs=[
///         {
///             "vpc_id": share_vswitch.vpc_id,
///             "region_id": region,
///             "vswitch_id": share_vswitch.id,
///             "vpc_owner_id": current.id,
///         },
///         {
///             "vpc_id": share_vswitch2.vpc_id,
///             "region_id": region,
///             "vswitch_id": share_vswitch2.id,
///             "vpc_owner_id": current.id,
///         },
///         {
///             "vpc_id": share_vsw3.vpc_id,
///             "region_id": region,
///             "vswitch_id": share_vsw3.id,
///             "vpc_owner_id": current.id,
///         },
///     ])
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
///     var region = config.Get("region") ?? "cn-hangzhou";
///     var name = config.Get("name") ?? "terraform-example";
///     var current = AliCloud.GetAccount.Invoke();
///
///     var vpc_amp_instance_example = new AliCloud.Vpc.Network("vpc-amp-instance-example", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = name,
///     });
///
///     var vswitch = new AliCloud.Vpc.Switch("vswitch", new()
///     {
///         VpcId = vpc_amp_instance_example.Id,
///         ZoneId = "cn-hangzhou-k",
///         CidrBlock = "172.16.1.0/24",
///     });
///
///     var vswitch_j = new AliCloud.Vpc.Switch("vswitch-j", new()
///     {
///         VpcId = vpc_amp_instance_example.Id,
///         ZoneId = "cn-hangzhou-j",
///         CidrBlock = "172.16.2.0/24",
///     });
///
///     var shareVPC = new AliCloud.Vpc.Network("shareVPC", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = Std.Format.Invoke(new()
///         {
///             Input = "%s3",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var shareVswitch = new AliCloud.Vpc.Switch("shareVswitch", new()
///     {
///         VpcId = shareVPC.Id,
///         ZoneId = "cn-hangzhou-k",
///         CidrBlock = "172.16.1.0/24",
///     });
///
///     var share_VPC2 = new AliCloud.Vpc.Network("share-VPC2", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = Std.Format.Invoke(new()
///         {
///             Input = "%s5",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var share_vswitch2 = new AliCloud.Vpc.Switch("share-vswitch2", new()
///     {
///         VpcId = share_VPC2.Id,
///         ZoneId = "cn-hangzhou-k",
///         CidrBlock = "172.16.1.0/24",
///     });
///
///     var share_VPC3 = new AliCloud.Vpc.Network("share-VPC3", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = Std.Format.Invoke(new()
///         {
///             Input = "%s7",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var share_vsw3 = new AliCloud.Vpc.Switch("share-vsw3", new()
///     {
///         VpcId = share_VPC3.Id,
///         ZoneId = "cn-hangzhou-k",
///         CidrBlock = "172.16.1.0/24",
///     });
///
///     var @default = new AliCloud.Kms.Instance("default", new()
///     {
///         PaymentType = "PayAsYouGo",
///         ProductVersion = "3",
///         VpcId = vswitch.VpcId,
///         ZoneIds = new[]
///         {
///             vswitch.ZoneId,
///             vswitch_j.ZoneId,
///         },
///         VswitchIds = new[]
///         {
///             vswitch.Id,
///         },
///         ForceDeleteWithoutBackup = "true",
///         BindVpcs = new[]
///         {
///             new AliCloud.Kms.Inputs.InstanceBindVpcArgs
///             {
///                 VpcId = shareVswitch.VpcId,
///                 RegionId = region,
///                 VswitchId = shareVswitch.Id,
///                 VpcOwnerId = current.Apply(getAccountResult => getAccountResult.Id),
///             },
///             new AliCloud.Kms.Inputs.InstanceBindVpcArgs
///             {
///                 VpcId = share_vswitch2.VpcId,
///                 RegionId = region,
///                 VswitchId = share_vswitch2.Id,
///                 VpcOwnerId = current.Apply(getAccountResult => getAccountResult.Id),
///             },
///             new AliCloud.Kms.Inputs.InstanceBindVpcArgs
///             {
///                 VpcId = share_vsw3.VpcId,
///                 RegionId = region,
///                 VswitchId = share_vsw3.Id,
///                 VpcOwnerId = current.Apply(getAccountResult => getAccountResult.Id),
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		region := "cn-hangzhou"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		current, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpc_amp_instance_example, err := vpc.NewNetwork(ctx, "vpc-amp-instance-example", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 			VpcName:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vswitch, err := vpc.NewSwitch(ctx, "vswitch", &vpc.SwitchArgs{
/// 			VpcId:     vpc_amp_instance_example.ID(),
/// 			ZoneId:    pulumi.String("cn-hangzhou-k"),
/// 			CidrBlock: pulumi.String("172.16.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vswitch_j, err := vpc.NewSwitch(ctx, "vswitch-j", &vpc.SwitchArgs{
/// 			VpcId:     vpc_amp_instance_example.ID(),
/// 			ZoneId:    pulumi.String("cn-hangzhou-j"),
/// 			CidrBlock: pulumi.String("172.16.2.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s3",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		shareVPC, err := vpc.NewNetwork(ctx, "shareVPC", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 			VpcName:   pulumi.String(invokeFormat.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		shareVswitch, err := vpc.NewSwitch(ctx, "shareVswitch", &vpc.SwitchArgs{
/// 			VpcId:     shareVPC.ID(),
/// 			ZoneId:    pulumi.String("cn-hangzhou-k"),
/// 			CidrBlock: pulumi.String("172.16.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s5",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		share_VPC2, err := vpc.NewNetwork(ctx, "share-VPC2", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 			VpcName:   pulumi.String(invokeFormat1.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		share_vswitch2, err := vpc.NewSwitch(ctx, "share-vswitch2", &vpc.SwitchArgs{
/// 			VpcId:     share_VPC2.ID(),
/// 			ZoneId:    pulumi.String("cn-hangzhou-k"),
/// 			CidrBlock: pulumi.String("172.16.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat2, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s7",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		share_VPC3, err := vpc.NewNetwork(ctx, "share-VPC3", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 			VpcName:   pulumi.String(invokeFormat2.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		share_vsw3, err := vpc.NewSwitch(ctx, "share-vsw3", &vpc.SwitchArgs{
/// 			VpcId:     share_VPC3.ID(),
/// 			ZoneId:    pulumi.String("cn-hangzhou-k"),
/// 			CidrBlock: pulumi.String("172.16.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewInstance(ctx, "default", &kms.InstanceArgs{
/// 			PaymentType:    pulumi.String("PayAsYouGo"),
/// 			ProductVersion: pulumi.String("3"),
/// 			VpcId:          vswitch.VpcId,
/// 			ZoneIds: pulumi.StringArray{
/// 				vswitch.ZoneId,
/// 				vswitch_j.ZoneId,
/// 			},
/// 			VswitchIds: pulumi.StringArray{
/// 				vswitch.ID(),
/// 			},
/// 			ForceDeleteWithoutBackup: pulumi.String("true"),
/// 			BindVpcs: kms.InstanceBindVpcArray{
/// 				&kms.InstanceBindVpcArgs{
/// 					VpcId:      shareVswitch.VpcId,
/// 					RegionId:   pulumi.String(region),
/// 					VswitchId:  shareVswitch.ID(),
/// 					VpcOwnerId: pulumi.String(current.Id),
/// 				},
/// 				&kms.InstanceBindVpcArgs{
/// 					VpcId:      share_vswitch2.VpcId,
/// 					RegionId:   pulumi.String(region),
/// 					VswitchId:  share_vswitch2.ID(),
/// 					VpcOwnerId: pulumi.String(current.Id),
/// 				},
/// 				&kms.InstanceBindVpcArgs{
/// 					VpcId:      share_vsw3.VpcId,
/// 					RegionId:   pulumi.String(region),
/// 					VswitchId:  share_vsw3.ID(),
/// 					VpcOwnerId: pulumi.String(current.Id),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.kms.Instance;
/// import com.pulumi.alicloud.kms.InstanceArgs;
/// import com.pulumi.alicloud.kms.inputs.InstanceBindVpcArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var current = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var vpc_amp_instance_example = new Network("vpc-amp-instance-example", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(name)
///             .build());
///
///         var vswitch = new Switch("vswitch", SwitchArgs.builder()
///             .vpcId(vpc_amp_instance_example.id())
///             .zoneId("cn-hangzhou-k")
///             .cidrBlock("172.16.1.0/24")
///             .build());
///
///         var vswitch_j = new Switch("vswitch-j", SwitchArgs.builder()
///             .vpcId(vpc_amp_instance_example.id())
///             .zoneId("cn-hangzhou-j")
///             .cidrBlock("172.16.2.0/24")
///             .build());
///
///         var shareVPC = new Network("shareVPC", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s3")
///                 .args(name)
///                 .build()).result())
///             .build());
///
///         var shareVswitch = new Switch("shareVswitch", SwitchArgs.builder()
///             .vpcId(shareVPC.id())
///             .zoneId("cn-hangzhou-k")
///             .cidrBlock("172.16.1.0/24")
///             .build());
///
///         var share_VPC2 = new Network("share-VPC2", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s5")
///                 .args(name)
///                 .build()).result())
///             .build());
///
///         var share_vswitch2 = new Switch("share-vswitch2", SwitchArgs.builder()
///             .vpcId(share_VPC2.id())
///             .zoneId("cn-hangzhou-k")
///             .cidrBlock("172.16.1.0/24")
///             .build());
///
///         var share_VPC3 = new Network("share-VPC3", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s7")
///                 .args(name)
///                 .build()).result())
///             .build());
///
///         var share_vsw3 = new Switch("share-vsw3", SwitchArgs.builder()
///             .vpcId(share_VPC3.id())
///             .zoneId("cn-hangzhou-k")
///             .cidrBlock("172.16.1.0/24")
///             .build());
///
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .paymentType("PayAsYouGo")
///             .productVersion("3")
///             .vpcId(vswitch.vpcId())
///             .zoneIds(
///                 vswitch.zoneId(),
///                 vswitch_j.zoneId())
///             .vswitchIds(vswitch.id())
///             .forceDeleteWithoutBackup("true")
///             .bindVpcs(
///                 InstanceBindVpcArgs.builder()
///                     .vpcId(shareVswitch.vpcId())
///                     .regionId(region)
///                     .vswitchId(shareVswitch.id())
///                     .vpcOwnerId(current.id())
///                     .build(),
///                 InstanceBindVpcArgs.builder()
///                     .vpcId(share_vswitch2.vpcId())
///                     .regionId(region)
///                     .vswitchId(share_vswitch2.id())
///                     .vpcOwnerId(current.id())
///                     .build(),
///                 InstanceBindVpcArgs.builder()
///                     .vpcId(share_vsw3.vpcId())
///                     .regionId(region)
///                     .vswitchId(share_vsw3.id())
///                     .vpcOwnerId(current.id())
///                     .build())
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
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   vpc-amp-instance-example:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName: ${name}
///   vswitch:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${["vpc-amp-instance-example"].id}
///       zoneId: cn-hangzhou-k
///       cidrBlock: 172.16.1.0/24
///   vswitch-j:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${["vpc-amp-instance-example"].id}
///       zoneId: cn-hangzhou-j
///       cidrBlock: 172.16.2.0/24
///   shareVPC:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s3'
///             args:
///               - ${name}
///           return: result
///   shareVswitch:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${shareVPC.id}
///       zoneId: cn-hangzhou-k
///       cidrBlock: 172.16.1.0/24
///   share-VPC2:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s5'
///             args:
///               - ${name}
///           return: result
///   share-vswitch2:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${["share-VPC2"].id}
///       zoneId: cn-hangzhou-k
///       cidrBlock: 172.16.1.0/24
///   share-VPC3:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s7'
///             args:
///               - ${name}
///           return: result
///   share-vsw3:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${["share-VPC3"].id}
///       zoneId: cn-hangzhou-k
///       cidrBlock: 172.16.1.0/24
///   default:
///     type: alicloud:kms:Instance
///     properties:
///       paymentType: PayAsYouGo
///       productVersion: 3
///       vpcId: ${vswitch.vpcId}
///       zoneIds:
///         - ${vswitch.zoneId}
///         - ${["vswitch-j"].zoneId}
///       vswitchIds:
///         - ${vswitch.id}
///       forceDeleteWithoutBackup: true
///       bindVpcs:
///         - vpcId: ${shareVswitch.vpcId}
///           regionId: ${region}
///           vswitchId: ${shareVswitch.id}
///           vpcOwnerId: ${current.id}
///         - vpcId: ${["share-vswitch2"].vpcId}
///           regionId: ${region}
///           vswitchId: ${["share-vswitch2"].id}
///           vpcOwnerId: ${current.id}
///         - vpcId: ${["share-vsw3"].vpcId}
///           regionId: ${region}
///           vswitchId: ${["share-vsw3"].id}
///           vpcOwnerId: ${current.id}
/// variables:
///   current:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// KMS Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:kms/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// Aucillary VPCs used to access this KMS instance See `bind_vpcs` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> bindVpcs;
  /// KMS instance certificate chain in PEM format.
  late final pulumi.Output<String> caCertificateChainPem;
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;
  /// (Available since v1.233.1) Instance expiration time.
  late final pulumi.Output<String> endDate;
  /// Whether to force deletion even without backup.
  ///
  /// &gt; **NOTE:** This parameter only takes effect when deletion is triggered.
  late final pulumi.Output<String?> forceDeleteWithoutBackup;
  /// The name of the resource
  late final pulumi.Output<String> instanceName;
  /// Maximum number of stored keys. The attribute is valid when the attribute `payment_type` is `Subscription`.
  late final pulumi.Output<int?> keyNum;
  /// Instance Audit Log Switch. This attribute was limited to Subscription (prepaid) payment type before v1.264.0. As of v1.264.0, it is also supported for PayAsYouGo (postpaid) instances.
  late final pulumi.Output<String> log;
  /// Instance log capacity. This attribute was limited to Subscription (prepaid) payment type before v1.264.0. As of v1.264.0, it is also supported for PayAsYouGo (postpaid) instances.
  late final pulumi.Output<int> logStorage;
  /// The billing method. Valid values:
  ///
  /// - Subscription: the subscription billing method.
  /// - PayAsYouGo: the pay-as-you-go billing method.
  late final pulumi.Output<String> paymentType;
  late final pulumi.Output<int?> period;
  /// KMS Instance commodity type (software/hardware)
  late final pulumi.Output<String> productVersion;
  /// The auto-renewal period. Unit: month.
  ///
  /// &gt; **NOTE:**   This parameter is required if the `RenewalStatus` parameter is set to `AutoRenewal`.
  late final pulumi.Output<int?> renewPeriod;
  /// The renewal status of the specified instance. Valid values:
  ///
  /// - AutoRenewal: The instance is automatically renewed.
  /// - ManualRenewal: The instance is manually renewed.
  /// - NotRenewal: The instance is not renewed.
  late final pulumi.Output<String> renewStatus;
  late final pulumi.Output<String?> renewalPeriodUnit;
  /// Maximum number of Secrets. The attribute is valid when the attribute `payment_type` is `Subscription`.
  late final pulumi.Output<int?> secretNum;
  /// The computation performance level of the KMS instance. The attribute is valid when the attribute `payment_type` is `Subscription`.
  late final pulumi.Output<int?> spec;
  /// Instance status.
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the virtual private cloud (VPC) that is associated with the KMS instance.
  late final pulumi.Output<String> vpcId;
  /// The number of managed accesses. The maximum number of VPCs that can access this KMS instance. The attribute is valid when the attribute `payment_type` is `Subscription`.
  late final pulumi.Output<int?> vpcNum;
  /// Instance bind vswitches
  late final pulumi.Output<List<String>> vswitchIds;
  /// zone id
  late final pulumi.Output<List<String>> zoneIds;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_kms_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:kms/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bindVpcs = registerOutput<List<Map<String, dynamic>>?>('bindVpcs');
    caCertificateChainPem = registerOutput<String>('caCertificateChainPem');
    createTime = registerOutput<String>('createTime');
    endDate = registerOutput<String>('endDate');
    forceDeleteWithoutBackup = registerOutput<String?>('forceDeleteWithoutBackup');
    instanceName = registerOutput<String>('instanceName');
    keyNum = registerOutput<int?>('keyNum');
    log = registerOutput<String>('log');
    logStorage = registerOutput<int>('logStorage');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    productVersion = registerOutput<String>('productVersion');
    renewPeriod = registerOutput<int?>('renewPeriod');
    renewStatus = registerOutput<String>('renewStatus');
    renewalPeriodUnit = registerOutput<String?>('renewalPeriodUnit');
    secretNum = registerOutput<int?>('secretNum');
    spec = registerOutput<int?>('spec');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    vpcNum = registerOutput<int?>('vpcNum');
    vswitchIds = registerOutput<List<String>>('vswitchIds');
    zoneIds = registerOutput<List<String>>('zoneIds');
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
          'alicloud:kms/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bindVpcs = registerOutput<List<Map<String, dynamic>>?>('bindVpcs');
    caCertificateChainPem = registerOutput<String>('caCertificateChainPem');
    createTime = registerOutput<String>('createTime');
    endDate = registerOutput<String>('endDate');
    forceDeleteWithoutBackup = registerOutput<String?>('forceDeleteWithoutBackup');
    instanceName = registerOutput<String>('instanceName');
    keyNum = registerOutput<int?>('keyNum');
    log = registerOutput<String>('log');
    logStorage = registerOutput<int>('logStorage');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    productVersion = registerOutput<String>('productVersion');
    renewPeriod = registerOutput<int?>('renewPeriod');
    renewStatus = registerOutput<String>('renewStatus');
    renewalPeriodUnit = registerOutput<String?>('renewalPeriodUnit');
    secretNum = registerOutput<int?>('secretNum');
    spec = registerOutput<int?>('spec');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    vpcNum = registerOutput<int?>('vpcNum');
    vswitchIds = registerOutput<List<String>>('vswitchIds');
    zoneIds = registerOutput<List<String>>('zoneIds');
  }
}
