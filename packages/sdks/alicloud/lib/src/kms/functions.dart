import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aliases_args.dart';
import 'get_aliases_result.dart';
import 'get_ciphertext_args.dart';
import 'get_ciphertext_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_key_versions_args.dart';
import 'get_key_versions_result.dart';
import 'get_keys_args.dart';
import 'get_keys_result.dart';
import 'get_plaintext_args.dart';
import 'get_plaintext_result.dart';
import 'get_secret_versions_args.dart';
import 'get_secret_versions_result.dart';
import 'get_secrets_args.dart';
import 'get_secrets_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';

/// This data source provides a list of KMS aliases in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available since v1.79.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const kmsAliases = alicloud.kms.getAliases({
///     ids: ["d89e8a53-b708-41aa-8c67-6873axxx"],
///     nameRegex: "alias/tf-example",
/// });
/// export const firstKeyId = kmsAliases.then(kmsAliases => kmsAliases.aliases?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// kms_aliases = alicloud.kms.get_aliases(ids=["d89e8a53-b708-41aa-8c67-6873axxx"],
///     name_regex="alias/tf-example")
/// pulumi.export("firstKeyId", kms_aliases.aliases[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var kmsAliases = AliCloud.Kms.GetAliases.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "d89e8a53-b708-41aa-8c67-6873axxx",
///         },
///         NameRegex = "alias/tf-example",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstKeyId"] = kmsAliases.Apply(getAliasesResult => getAliasesResult.Aliases[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		kmsAliases, err := kms.GetAliases(ctx, &kms.GetAliasesArgs{
/// 			Ids: []string{
/// 				"d89e8a53-b708-41aa-8c67-6873axxx",
/// 			},
/// 			NameRegex: pulumi.StringRef("alias/tf-example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstKeyId", kmsAliases.Aliases[0].Id)
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
/// import com.pulumi.alicloud.kms.KmsFunctions;
/// import com.pulumi.alicloud.kms.inputs.GetAliasesArgs;
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
///         // Declare the data source
///         final var kmsAliases = KmsFunctions.getAliases(GetAliasesArgs.builder()
///             .ids("d89e8a53-b708-41aa-8c67-6873axxx")
///             .nameRegex("alias/tf-example")
///             .build());
///
///         ctx.export("firstKeyId", kmsAliases.aliases()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   kmsAliases:
///     fn::invoke:
///       function: alicloud:kms:getAliases
///       arguments:
///         ids:
///           - d89e8a53-b708-41aa-8c67-6873axxx
///         nameRegex: alias/tf-example
/// outputs:
///   firstKeyId: ${kmsAliases.aliases[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_aliases_get_aliases_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAliasesResult> getAliases(
  GetAliasesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:kms/getAliases:getAliases',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAliasesResult.fromMap(result);
}

/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const key = new alicloud.kms.Key("key", {
///     description: "example key",
///     isEnabled: true,
/// });
/// const encrypted = alicloud.kms.getCiphertextOutput({
///     keyId: key.id,
///     plaintext: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// key = alicloud.kms.Key("key",
///     description="example key",
///     is_enabled=True)
/// encrypted = alicloud.kms.get_ciphertext_output(key_id=key.id,
///     plaintext="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var key = new AliCloud.Kms.Key("key", new()
///     {
///         Description = "example key",
///         IsEnabled = true,
///     });
///
///     var encrypted = AliCloud.Kms.GetCiphertext.Invoke(new()
///     {
///         KeyId = key.Id,
///         Plaintext = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		key, err := kms.NewKey(ctx, "key", &kms.KeyArgs{
/// 			Description: pulumi.String("example key"),
/// 			IsEnabled:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = kms.LookupCiphertextOutput(ctx, kms.GetCiphertextOutputArgs{
/// 			KeyId:     key.ID(),
/// 			Plaintext: pulumi.String("example"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.kms.Key;
/// import com.pulumi.alicloud.kms.KeyArgs;
/// import com.pulumi.alicloud.kms.KmsFunctions;
/// import com.pulumi.alicloud.kms.inputs.GetCiphertextArgs;
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
///         var key = new Key("key", KeyArgs.builder()
///             .description("example key")
///             .isEnabled(true)
///             .build());
///
///         final var encrypted = KmsFunctions.getCiphertext(GetCiphertextArgs.builder()
///             .keyId(key.id())
///             .plaintext("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   key:
///     type: alicloud:kms:Key
///     properties:
///       description: example key
///       isEnabled: true
/// variables:
///   encrypted:
///     fn::invoke:
///       function: alicloud:kms:getCiphertext
///       arguments:
///         keyId: ${key.id}
///         plaintext: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_ciphertext_get_ciphertext_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCiphertextResult> getCiphertext(
  GetCiphertextArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:kms/getCiphertext:getCiphertext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCiphertextResult.fromMap(result);
}

/// This data source provides Kms Instance available to the user.[What is Instance](https://www.alibabacloud.com/help/en/)
///
/// > **NOTE:** Available since v1.242.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
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
/// const defaultInstance = new alicloud.kms.Instance("default", {
///     vpcNum: 7,
///     keyNum: 1000,
///     secretNum: 0,
///     spec: 1000,
///     renewStatus: "ManualRenewal",
///     productVersion: "3",
///     vpcId: vswitch.vpcId,
///     zoneIds: [
///         "cn-hangzhou-k",
///         "cn-hangzhou-j",
///     ],
///     vswitchIds: [vswitch.id],
///     bindVpcs: [
///         {
///             vpcId: shareVswitch.vpcId,
///             regionId: "cn-hangzhou",
///             vswitchId: shareVswitch.id,
///             vpcOwnerId: current.then(current => current.id),
///         },
///         {
///             vpcId: share_vswitch2.vpcId,
///             regionId: "cn-hangzhou",
///             vswitchId: share_vswitch2.id,
///             vpcOwnerId: current.then(current => current.id),
///         },
///         {
///             vpcId: share_vsw3.vpcId,
///             regionId: "cn-hangzhou",
///             vswitchId: share_vsw3.id,
///             vpcOwnerId: current.then(current => current.id),
///         },
///     ],
///     log: "0",
///     period: 1,
///     logStorage: 0,
///     paymentType: "Subscription",
/// });
/// const _default = alicloud.kms.getInstancesOutput({
///     ids: [defaultInstance.id],
/// });
/// export const alicloudKmsInstanceExampleId = _default.apply(_default => _default.instances?.[0]?.instanceId);
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
/// default_instance = alicloud.kms.Instance("default",
///     vpc_num=7,
///     key_num=1000,
///     secret_num=0,
///     spec=1000,
///     renew_status="ManualRenewal",
///     product_version="3",
///     vpc_id=vswitch.vpc_id,
///     zone_ids=[
///         "cn-hangzhou-k",
///         "cn-hangzhou-j",
///     ],
///     vswitch_ids=[vswitch.id],
///     bind_vpcs=[
///         {
///             "vpc_id": share_vswitch.vpc_id,
///             "region_id": "cn-hangzhou",
///             "vswitch_id": share_vswitch.id,
///             "vpc_owner_id": current.id,
///         },
///         {
///             "vpc_id": share_vswitch2.vpc_id,
///             "region_id": "cn-hangzhou",
///             "vswitch_id": share_vswitch2.id,
///             "vpc_owner_id": current.id,
///         },
///         {
///             "vpc_id": share_vsw3.vpc_id,
///             "region_id": "cn-hangzhou",
///             "vswitch_id": share_vsw3.id,
///             "vpc_owner_id": current.id,
///         },
///     ],
///     log="0",
///     period=1,
///     log_storage=0,
///     payment_type="Subscription")
/// default = alicloud.kms.get_instances_output(ids=[default_instance.id])
/// pulumi.export("alicloudKmsInstanceExampleId", default.instances[0].instance_id)
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
///     var defaultInstance = new AliCloud.Kms.Instance("default", new()
///     {
///         VpcNum = 7,
///         KeyNum = 1000,
///         SecretNum = 0,
///         Spec = 1000,
///         RenewStatus = "ManualRenewal",
///         ProductVersion = "3",
///         VpcId = vswitch.VpcId,
///         ZoneIds = new[]
///         {
///             "cn-hangzhou-k",
///             "cn-hangzhou-j",
///         },
///         VswitchIds = new[]
///         {
///             vswitch.Id,
///         },
///         BindVpcs = new[]
///         {
///             new AliCloud.Kms.Inputs.InstanceBindVpcArgs
///             {
///                 VpcId = shareVswitch.VpcId,
///                 RegionId = "cn-hangzhou",
///                 VswitchId = shareVswitch.Id,
///                 VpcOwnerId = current.Apply(getAccountResult => getAccountResult.Id),
///             },
///             new AliCloud.Kms.Inputs.InstanceBindVpcArgs
///             {
///                 VpcId = share_vswitch2.VpcId,
///                 RegionId = "cn-hangzhou",
///                 VswitchId = share_vswitch2.Id,
///                 VpcOwnerId = current.Apply(getAccountResult => getAccountResult.Id),
///             },
///             new AliCloud.Kms.Inputs.InstanceBindVpcArgs
///             {
///                 VpcId = share_vsw3.VpcId,
///                 RegionId = "cn-hangzhou",
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
///     var @default = AliCloud.Kms.GetInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultInstance.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudKmsInstanceExampleId"] = @default.Apply(@default => @default.Apply(getInstancesResult => getInstancesResult.Instances[0]?.InstanceId)),
///     };
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// current, err := alicloud.GetAccount(ctx, map[string]interface{}{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// vpc_amp_instance_example, err := vpc.NewNetwork(ctx, "vpc-amp-instance-example", &vpc.NetworkArgs{
/// CidrBlock: pulumi.String("172.16.0.0/12"),
/// VpcName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// vswitch, err := vpc.NewSwitch(ctx, "vswitch", &vpc.SwitchArgs{
/// VpcId: vpc_amp_instance_example.ID(),
/// ZoneId: pulumi.String("cn-hangzhou-k"),
/// CidrBlock: pulumi.String("172.16.1.0/24"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = vpc.NewSwitch(ctx, "vswitch-j", &vpc.SwitchArgs{
/// VpcId: vpc_amp_instance_example.ID(),
/// ZoneId: pulumi.String("cn-hangzhou-j"),
/// CidrBlock: pulumi.String("172.16.2.0/24"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// Input: "%s3",
/// Args: []string{
/// name,
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// shareVPC, err := vpc.NewNetwork(ctx, "shareVPC", &vpc.NetworkArgs{
/// CidrBlock: pulumi.String("172.16.0.0/12"),
/// VpcName: pulumi.String(invokeFormat.Result),
/// })
/// if err != nil {
/// return err
/// }
/// shareVswitch, err := vpc.NewSwitch(ctx, "shareVswitch", &vpc.SwitchArgs{
/// VpcId: shareVPC.ID(),
/// ZoneId: pulumi.String("cn-hangzhou-k"),
/// CidrBlock: pulumi.String("172.16.1.0/24"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// Input: "%s5",
/// Args: []string{
/// name,
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// share_VPC2, err := vpc.NewNetwork(ctx, "share-VPC2", &vpc.NetworkArgs{
/// CidrBlock: pulumi.String("172.16.0.0/12"),
/// VpcName: pulumi.String(invokeFormat1.Result),
/// })
/// if err != nil {
/// return err
/// }
/// share_vswitch2, err := vpc.NewSwitch(ctx, "share-vswitch2", &vpc.SwitchArgs{
/// VpcId: share_VPC2.ID(),
/// ZoneId: pulumi.String("cn-hangzhou-k"),
/// CidrBlock: pulumi.String("172.16.1.0/24"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeFormat2, err := std.Format(ctx, &std.FormatArgs{
/// Input: "%s7",
/// Args: []string{
/// name,
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// share_VPC3, err := vpc.NewNetwork(ctx, "share-VPC3", &vpc.NetworkArgs{
/// CidrBlock: pulumi.String("172.16.0.0/12"),
/// VpcName: pulumi.String(invokeFormat2.Result),
/// })
/// if err != nil {
/// return err
/// }
/// share_vsw3, err := vpc.NewSwitch(ctx, "share-vsw3", &vpc.SwitchArgs{
/// VpcId: share_VPC3.ID(),
/// ZoneId: pulumi.String("cn-hangzhou-k"),
/// CidrBlock: pulumi.String("172.16.1.0/24"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultInstance, err := kms.NewInstance(ctx, "default", &kms.InstanceArgs{
/// VpcNum: pulumi.Int(7),
/// KeyNum: pulumi.Int(1000),
/// SecretNum: pulumi.Int(0),
/// Spec: pulumi.Int(1000),
/// RenewStatus: pulumi.String("ManualRenewal"),
/// ProductVersion: pulumi.String("3"),
/// VpcId: vswitch.VpcId,
/// ZoneIds: pulumi.StringArray{
/// pulumi.String("cn-hangzhou-k"),
/// pulumi.String("cn-hangzhou-j"),
/// },
/// VswitchIds: pulumi.StringArray{
/// vswitch.ID(),
/// },
/// BindVpcs: kms.InstanceBindVpcArray{
/// &kms.InstanceBindVpcArgs{
/// VpcId: shareVswitch.VpcId,
/// RegionId: pulumi.String("cn-hangzhou"),
/// VswitchId: shareVswitch.ID(),
/// VpcOwnerId: pulumi.String(current.Id),
/// },
/// &kms.InstanceBindVpcArgs{
/// VpcId: share_vswitch2.VpcId,
/// RegionId: pulumi.String("cn-hangzhou"),
/// VswitchId: share_vswitch2.ID(),
/// VpcOwnerId: pulumi.String(current.Id),
/// },
/// &kms.InstanceBindVpcArgs{
/// VpcId: share_vsw3.VpcId,
/// RegionId: pulumi.String("cn-hangzhou"),
/// VswitchId: share_vsw3.ID(),
/// VpcOwnerId: pulumi.String(current.Id),
/// },
/// },
/// Log: pulumi.String("0"),
/// Period: pulumi.Int(1),
/// LogStorage: pulumi.Int(0),
/// PaymentType: pulumi.String("Subscription"),
/// })
/// if err != nil {
/// return err
/// }
/// _default := kms.GetInstancesOutput(ctx, kms.GetInstancesOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultInstance.ID(),
/// },
/// }, nil);
/// ctx.Export("alicloudKmsInstanceExampleId", _default.ApplyT(func(_default kms.GetInstancesResult) (*string, error) {
/// return &default.Instances[0].InstanceId, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.kms.KmsFunctions;
/// import com.pulumi.alicloud.kms.inputs.GetInstancesArgs;
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
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .vpcNum(7)
///             .keyNum(1000)
///             .secretNum(0)
///             .spec(1000)
///             .renewStatus("ManualRenewal")
///             .productVersion("3")
///             .vpcId(vswitch.vpcId())
///             .zoneIds(
///                 "cn-hangzhou-k",
///                 "cn-hangzhou-j")
///             .vswitchIds(vswitch.id())
///             .bindVpcs(
///                 InstanceBindVpcArgs.builder()
///                     .vpcId(shareVswitch.vpcId())
///                     .regionId("cn-hangzhou")
///                     .vswitchId(shareVswitch.id())
///                     .vpcOwnerId(current.id())
///                     .build(),
///                 InstanceBindVpcArgs.builder()
///                     .vpcId(share_vswitch2.vpcId())
///                     .regionId("cn-hangzhou")
///                     .vswitchId(share_vswitch2.id())
///                     .vpcOwnerId(current.id())
///                     .build(),
///                 InstanceBindVpcArgs.builder()
///                     .vpcId(share_vsw3.vpcId())
///                     .regionId("cn-hangzhou")
///                     .vswitchId(share_vsw3.id())
///                     .vpcOwnerId(current.id())
///                     .build())
///             .log("0")
///             .period(1)
///             .logStorage(0)
///             .paymentType("Subscription")
///             .build());
///
///         final var default = KmsFunctions.getInstances(GetInstancesArgs.builder()
///             .ids(defaultInstance.id())
///             .build());
///
///         ctx.export("alicloudKmsInstanceExampleId", default_.applyValue(_default_ -> _default_.instances()[0].instanceId()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
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
///   defaultInstance:
///     type: alicloud:kms:Instance
///     name: default
///     properties:
///       vpcNum: '7'
///       keyNum: '1000'
///       secretNum: '0'
///       spec: '1000'
///       renewStatus: ManualRenewal
///       productVersion: '3'
///       vpcId: ${vswitch.vpcId}
///       zoneIds:
///         - cn-hangzhou-k
///         - cn-hangzhou-j
///       vswitchIds:
///         - ${vswitch.id}
///       bindVpcs:
///         - vpcId: ${shareVswitch.vpcId}
///           regionId: cn-hangzhou
///           vswitchId: ${shareVswitch.id}
///           vpcOwnerId: ${current.id}
///         - vpcId: ${["share-vswitch2"].vpcId}
///           regionId: cn-hangzhou
///           vswitchId: ${["share-vswitch2"].id}
///           vpcOwnerId: ${current.id}
///         - vpcId: ${["share-vsw3"].vpcId}
///           regionId: cn-hangzhou
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
///   default:
///     fn::invoke:
///       function: alicloud:kms:getInstances
///       arguments:
///         ids:
///           - ${defaultInstance.id}
/// outputs:
///   alicloudKmsInstanceExampleId: ${default.instances[0].instanceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:kms/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides a list of KMS KeyVersions in an Alibaba Cloud account according to the specified filters.
///
/// > NOTE: Available in v1.85.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const alicloudKmsKeyVersionsDs = alicloud.kms.getKeyVersions({
///     keyId: "08438c-b4d5-4d05-928c-07b7xxxx",
///     ids: ["d89e8a53-b708-41aa-8c67-6873axxx"],
/// });
/// export const allVersions = alicloudKmsKeyVersionsDs.then(alicloudKmsKeyVersionsDs => alicloudKmsKeyVersionsDs.versions);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// alicloud_kms_key_versions_ds = alicloud.kms.get_key_versions(key_id="08438c-b4d5-4d05-928c-07b7xxxx",
///     ids=["d89e8a53-b708-41aa-8c67-6873axxx"])
/// pulumi.export("allVersions", alicloud_kms_key_versions_ds.versions)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var alicloudKmsKeyVersionsDs = AliCloud.Kms.GetKeyVersions.Invoke(new()
///     {
///         KeyId = "08438c-b4d5-4d05-928c-07b7xxxx",
///         Ids = new[]
///         {
///             "d89e8a53-b708-41aa-8c67-6873axxx",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["allVersions"] = alicloudKmsKeyVersionsDs.Apply(getKeyVersionsResult => getKeyVersionsResult.Versions),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		alicloudKmsKeyVersionsDs, err := kms.GetKeyVersions(ctx, &kms.GetKeyVersionsArgs{
/// 			KeyId: "08438c-b4d5-4d05-928c-07b7xxxx",
/// 			Ids: []string{
/// 				"d89e8a53-b708-41aa-8c67-6873axxx",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("allVersions", alicloudKmsKeyVersionsDs.Versions)
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
/// import com.pulumi.alicloud.kms.KmsFunctions;
/// import com.pulumi.alicloud.kms.inputs.GetKeyVersionsArgs;
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
///         // Declare the data source
///         final var alicloudKmsKeyVersionsDs = KmsFunctions.getKeyVersions(GetKeyVersionsArgs.builder()
///             .keyId("08438c-b4d5-4d05-928c-07b7xxxx")
///             .ids("d89e8a53-b708-41aa-8c67-6873axxx")
///             .build());
///
///         ctx.export("allVersions", alicloudKmsKeyVersionsDs.versions());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   alicloudKmsKeyVersionsDs:
///     fn::invoke:
///       function: alicloud:kms:getKeyVersions
///       arguments:
///         keyId: 08438c-b4d5-4d05-928c-07b7xxxx
///         ids:
///           - d89e8a53-b708-41aa-8c67-6873axxx
/// outputs:
///   allVersions: ${alicloudKmsKeyVersionsDs.versions}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_key_versions_get_key_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyVersionsResult> getKeyVersions(
  GetKeyVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:kms/getKeyVersions:getKeyVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyVersionsResult.fromMap(result);
}

/// This data source provides a list of KMS keys in an Alibaba Cloud account according to the specified filters.
///
/// For information about KMS Key and how to use it, see [What is Key](https://www.alibabacloud.com/help/en/kms/developer-reference/api-createkey).
///
/// > **NOTE:** Available since v1.85.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const kmsKeysDs = alicloud.kms.getKeys({
///     descriptionRegex: "Hello KMS",
///     outputFile: "kms_keys.json",
/// });
/// export const firstKeyId = kmsKeysDs.then(kmsKeysDs => kmsKeysDs.keys?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// kms_keys_ds = alicloud.kms.get_keys(description_regex="Hello KMS",
///     output_file="kms_keys.json")
/// pulumi.export("firstKeyId", kms_keys_ds.keys[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var kmsKeysDs = AliCloud.Kms.GetKeys.Invoke(new()
///     {
///         DescriptionRegex = "Hello KMS",
///         OutputFile = "kms_keys.json",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstKeyId"] = kmsKeysDs.Apply(getKeysResult => getKeysResult.Keys[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		kmsKeysDs, err := kms.GetKeys(ctx, &kms.GetKeysArgs{
/// 			DescriptionRegex: pulumi.StringRef("Hello KMS"),
/// 			OutputFile:       pulumi.StringRef("kms_keys.json"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstKeyId", kmsKeysDs.Keys[0].Id)
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
/// import com.pulumi.alicloud.kms.KmsFunctions;
/// import com.pulumi.alicloud.kms.inputs.GetKeysArgs;
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
///         // Declare the data source
///         final var kmsKeysDs = KmsFunctions.getKeys(GetKeysArgs.builder()
///             .descriptionRegex("Hello KMS")
///             .outputFile("kms_keys.json")
///             .build());
///
///         ctx.export("firstKeyId", kmsKeysDs.keys()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   kmsKeysDs:
///     fn::invoke:
///       function: alicloud:kms:getKeys
///       arguments:
///         descriptionRegex: Hello KMS
///         outputFile: kms_keys.json
/// outputs:
///   firstKeyId: ${kmsKeysDs.keys[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_keys_get_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeysResult> getKeys(
  GetKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:kms/getKeys:getKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeysResult.fromMap(result);
}

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const key = new alicloud.kms.Key("key", {
///     description: "example key",
///     isEnabled: true,
/// });
/// // Encrypt plaintext 'example'
/// const encrypted = new alicloud.kms.Ciphertext("encrypted", {
///     keyId: key.id,
///     plaintext: "example",
/// });
/// // Decrypt encrypted ciphertext
/// const plaintext = alicloud.kms.getPlaintextOutput({
///     ciphertextBlob: encrypted.ciphertextBlob,
/// });
/// export const decrypted = plaintext.apply(plaintext => plaintext.plaintext);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// key = alicloud.kms.Key("key",
///     description="example key",
///     is_enabled=True)
/// # Encrypt plaintext 'example'
/// encrypted = alicloud.kms.Ciphertext("encrypted",
///     key_id=key.id,
///     plaintext="example")
/// # Decrypt encrypted ciphertext
/// plaintext = alicloud.kms.get_plaintext_output(ciphertext_blob=encrypted.ciphertext_blob)
/// pulumi.export("decrypted", plaintext.plaintext)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var key = new AliCloud.Kms.Key("key", new()
///     {
///         Description = "example key",
///         IsEnabled = true,
///     });
///
///     // Encrypt plaintext 'example'
///     var encrypted = new AliCloud.Kms.Ciphertext("encrypted", new()
///     {
///         KeyId = key.Id,
///         Plaintext = "example",
///     });
///
///     // Decrypt encrypted ciphertext
///     var plaintext = AliCloud.Kms.GetPlaintext.Invoke(new()
///     {
///         CiphertextBlob = encrypted.CiphertextBlob,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["decrypted"] = plaintext.Apply(getPlaintextResult => getPlaintextResult.Plaintext),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		key, err := kms.NewKey(ctx, "key", &kms.KeyArgs{
/// 			Description: pulumi.String("example key"),
/// 			IsEnabled:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Encrypt plaintext 'example'
/// 		encrypted, err := kms.NewCiphertext(ctx, "encrypted", &kms.CiphertextArgs{
/// 			KeyId:     key.ID(),
/// 			Plaintext: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Decrypt encrypted ciphertext
/// 		plaintext := kms.GetPlaintextOutput(ctx, kms.GetPlaintextOutputArgs{
/// 			CiphertextBlob: encrypted.CiphertextBlob,
/// 		}, nil)
/// 		ctx.Export("decrypted", plaintext.ApplyT(func(plaintext kms.GetPlaintextResult) (*string, error) {
/// 			return &plaintext.Plaintext, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.kms.Key;
/// import com.pulumi.alicloud.kms.KeyArgs;
/// import com.pulumi.alicloud.kms.Ciphertext;
/// import com.pulumi.alicloud.kms.CiphertextArgs;
/// import com.pulumi.alicloud.kms.KmsFunctions;
/// import com.pulumi.alicloud.kms.inputs.GetPlaintextArgs;
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
///         var key = new Key("key", KeyArgs.builder()
///             .description("example key")
///             .isEnabled(true)
///             .build());
///
///         // Encrypt plaintext 'example'
///         var encrypted = new Ciphertext("encrypted", CiphertextArgs.builder()
///             .keyId(key.id())
///             .plaintext("example")
///             .build());
///
///         // Decrypt encrypted ciphertext
///         final var plaintext = KmsFunctions.getPlaintext(GetPlaintextArgs.builder()
///             .ciphertextBlob(encrypted.ciphertextBlob())
///             .build());
///
///         ctx.export("decrypted", plaintext.applyValue(_plaintext -> _plaintext.plaintext()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   key:
///     type: alicloud:kms:Key
///     properties:
///       description: example key
///       isEnabled: true
///   # Encrypt plaintext 'example'
///   encrypted:
///     type: alicloud:kms:Ciphertext
///     properties:
///       keyId: ${key.id}
///       plaintext: example
/// variables:
///   # Decrypt encrypted ciphertext
///   plaintext:
///     fn::invoke:
///       function: alicloud:kms:getPlaintext
///       arguments:
///         ciphertextBlob: ${encrypted.ciphertextBlob}
/// outputs:
///   # Output 'example' should match the plaintext encrypted in the beginning
///   decrypted: ${plaintext.plaintext}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_plaintext_get_plaintext_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPlaintextResult> getPlaintext(
  GetPlaintextArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:kms/getPlaintext:getPlaintext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlaintextResult.fromMap(result);
}

/// This data source provides a list of KMS Secret Versions in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available in v1.88.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const kmsSecretVersionsDs = alicloud.kms.getSecretVersions({
///     secretName: "secret_name",
///     enableDetails: true,
/// });
/// export const firstSecretData = kmsSecretVersionsDs.then(kmsSecretVersionsDs => kmsSecretVersionsDs.versions?.[0]?.secretData);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// kms_secret_versions_ds = alicloud.kms.get_secret_versions(secret_name="secret_name",
///     enable_details=True)
/// pulumi.export("firstSecretData", kms_secret_versions_ds.versions[0].secret_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var kmsSecretVersionsDs = AliCloud.Kms.GetSecretVersions.Invoke(new()
///     {
///         SecretName = "secret_name",
///         EnableDetails = true,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstSecretData"] = kmsSecretVersionsDs.Apply(getSecretVersionsResult => getSecretVersionsResult.Versions[0]?.SecretData),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		kmsSecretVersionsDs, err := kms.GetSecretVersions(ctx, &kms.GetSecretVersionsArgs{
/// 			SecretName:    "secret_name",
/// 			EnableDetails: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstSecretData", kmsSecretVersionsDs.Versions[0].SecretData)
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
/// import com.pulumi.alicloud.kms.KmsFunctions;
/// import com.pulumi.alicloud.kms.inputs.GetSecretVersionsArgs;
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
///         // Declare the data source
///         final var kmsSecretVersionsDs = KmsFunctions.getSecretVersions(GetSecretVersionsArgs.builder()
///             .secretName("secret_name")
///             .enableDetails(true)
///             .build());
///
///         ctx.export("firstSecretData", kmsSecretVersionsDs.versions()[0].secretData());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   kmsSecretVersionsDs:
///     fn::invoke:
///       function: alicloud:kms:getSecretVersions
///       arguments:
///         secretName: secret_name
///         enableDetails: true
/// outputs:
///   firstSecretData: ${kmsSecretVersionsDs.versions[0].secretData}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_secret_versions_get_secret_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretVersionsResult> getSecretVersions(
  GetSecretVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:kms/getSecretVersions:getSecretVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretVersionsResult.fromMap(result);
}

/// This data source provides a list of KMS Secrets in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available since v1.86.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const kmsSecretsDs = alicloud.kms.getSecrets({
///     fetchTags: true,
///     nameRegex: "name_regex",
///     tags: {
///         "k-aa": "v-aa",
///         "k-bb": "v-bb",
///     },
/// });
/// export const firstSecretId = kmsSecretsDs.then(kmsSecretsDs => kmsSecretsDs.secrets?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// kms_secrets_ds = alicloud.kms.get_secrets(fetch_tags=True,
///     name_regex="name_regex",
///     tags={
///         "k-aa": "v-aa",
///         "k-bb": "v-bb",
///     })
/// pulumi.export("firstSecretId", kms_secrets_ds.secrets[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var kmsSecretsDs = AliCloud.Kms.GetSecrets.Invoke(new()
///     {
///         FetchTags = true,
///         NameRegex = "name_regex",
///         Tags =
///         {
///             { "k-aa", "v-aa" },
///             { "k-bb", "v-bb" },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstSecretId"] = kmsSecretsDs.Apply(getSecretsResult => getSecretsResult.Secrets[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		kmsSecretsDs, err := kms.GetSecrets(ctx, &kms.GetSecretsArgs{
/// 			FetchTags: pulumi.BoolRef(true),
/// 			NameRegex: pulumi.StringRef("name_regex"),
/// 			Tags: map[string]interface{}{
/// 				"k-aa": "v-aa",
/// 				"k-bb": "v-bb",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstSecretId", kmsSecretsDs.Secrets[0].Id)
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
/// import com.pulumi.alicloud.kms.KmsFunctions;
/// import com.pulumi.alicloud.kms.inputs.GetSecretsArgs;
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
///         // Declare the data source
///         final var kmsSecretsDs = KmsFunctions.getSecrets(GetSecretsArgs.builder()
///             .fetchTags(true)
///             .nameRegex("name_regex")
///             .tags(Map.ofEntries(
///                 Map.entry("k-aa", "v-aa"),
///                 Map.entry("k-bb", "v-bb")
///             ))
///             .build());
///
///         ctx.export("firstSecretId", kmsSecretsDs.secrets()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   kmsSecretsDs:
///     fn::invoke:
///       function: alicloud:kms:getSecrets
///       arguments:
///         fetchTags: true
///         nameRegex: name_regex
///         tags:
///           k-aa: v-aa
///           k-bb: v-bb
/// outputs:
///   firstSecretId: ${kmsSecretsDs.secrets[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_secrets_get_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretsResult> getSecrets(
  GetSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:kms/getSecrets:getSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretsResult.fromMap(result);
}

/// Using this data source can open KMS service automatically. If the service has been opened, it will return opened.
///
/// For information about KMS and how to use it, see [What is KMS](https://help.aliyun.com/document_detail/186020.html).
///
/// > **NOTE:** Available in v1.108.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.kms.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.kms.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.Kms.GetService.Invoke(new()
///     {
///         Enable = "On",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.GetService(ctx, &kms.GetServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.kms.KmsFunctions;
/// import com.pulumi.alicloud.kms.inputs.GetServiceArgs;
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
///         final var open = KmsFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:kms:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:kms/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}
